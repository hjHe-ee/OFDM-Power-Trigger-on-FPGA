`timescale 1ns/1ps

module power_trigger_tb;

// 输入信号
reg clock;
reg enable;
reg reset;

reg set_stb;
reg [7:0] set_addr;
reg [31:0] set_data;

reg [31:0] sample_in;
reg sample_in_strobe;

// 输出信号
wire trigger;

// 实例化被测模块
power_trigger uut (
    .clock(clock),
    .enable(enable),
    .reset(reset),
    .set_stb(set_stb),
    .set_addr(set_addr),
    .set_data(set_data),
    .sample_in(sample_in),
    .sample_in_strobe(sample_in_strobe),
    .trigger(trigger)
);

// 时钟生成
initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

// 定义寄存器地址（不使用宏）
localparam SR_POWER_THRES  = 8'h00;  // 功率阈值寄存器地址
localparam SR_POWER_WINDOW = 8'h01;  // 窗口大小寄存器地址
localparam SR_SKIP_SAMPLE  = 8'h02;  // 跳过样本数寄存器地址

// 测试激励
initial begin
    // 初始化输入
    enable = 0;
    reset = 1;
    set_stb = 0;
    set_addr = 0;
    set_data = 0;
    sample_in = 0;
    sample_in_strobe = 0;
    
    // 等待全局复位
    #20;
    reset = 0;
    enable = 1;
    
    // 测试1：基本功能测试
    $display("测试1：基本功能测试");
    // 发送低于阈值的样本
    repeat(10) begin
        sample_in = 32'h00005000; // 0x5000 (小于默认阈值0x0064)
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    // 发送高于阈值的样本
    sample_in = 32'h0000A000; // 0xA000 (大于默认阈值)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    // 验证触发
    if (trigger !== 1'b1) $display("错误：触发信号未置位");
    
    // 发送足够数量的低样本取消触发
    repeat(100) begin
        sample_in = 32'h00001000; // 0x1000 (低值)
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("错误：触发信号未取消");
    
    // 测试2：修改参数
    $display("测试2：修改参数");
    // 修改功率阈值
    set_stb = 1;
    set_addr = SR_POWER_THRES; // 使用本地参数
    set_data = 32'h0000F000;   // 新阈值0xF000
    #10;
    set_stb = 0;
    #10;
    
    // 发送原本会触发但现在不会的样本
    sample_in = 32'h0000A000; // 0xA000 (小于新阈值0xF000)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b0) $display("错误：新阈值下不应触发");
    
    // 发送高于新阈值的样本
    sample_in = 32'h0000F100; // 0xF100 (大于新阈值)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b1) $display("错误：新阈值下应触发");
    
    // 测试3：初始跳过样本功能
    $display("测试3：初始跳过样本功能");
    // 复位模块
    reset = 1;
    #10;
    reset = 0;
    #10;
    
    // 修改跳过的样本数
    set_stb = 1;
    set_addr = SR_SKIP_SAMPLE;
    set_data = 32'd10; // 只跳过10个样本
    #10;
    set_stb = 0;
    #10;
    
    // 发送样本 - 跳过期间不应触发
    repeat(15) begin
        sample_in = 32'h0000FFFF; // 高值
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    // 跳过10个样本后，触发应生效
    if (trigger !== 1'b1) $display("错误：跳过样本后应触发");
    
    // 测试4：窗口大小功能
    $display("测试4：窗口大小功能");
    // 复位模块
    reset = 1;
    #10;
    reset = 0;
    #10;
    
    // 修改窗口大小
    set_stb = 1;
    set_addr = SR_POWER_WINDOW;
    set_data = 32'd5; // 小窗口
    #10;
    set_stb = 0;
    #10;
    
    // 触发检测
    sample_in = 32'h0000FFFF;
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    // 发送低于阈值的样本 - 触发应快速取消
    repeat(6) begin
        sample_in = 32'h00000010;
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("错误：小窗口下触发应取消");
    
    // 测试5：禁用功能
    $display("测试5：禁用功能");
    enable = 0;
    #10;
    
    // 发送本应触发的样本
    repeat(5) begin
        sample_in = 32'h0000FFFF;
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("错误：模块禁用时不应触发");
    
    // 重新使能并验证功能恢复
    enable = 1;
    sample_in = 32'h0000FFFF;
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b1) $display("错误：重新使能后应触发");
    
    // 完成仿真
    $display("所有测试完成");
    $finish;
end

endmodule