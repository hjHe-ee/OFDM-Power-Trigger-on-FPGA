`timescale 1ns/1ps

module power_trigger_tb;

// �����ź�
reg clock;
reg enable;
reg reset;

reg set_stb;
reg [7:0] set_addr;
reg [31:0] set_data;

reg [31:0] sample_in;
reg sample_in_strobe;

// ����ź�
wire trigger;

// ʵ��������ģ��
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

// ʱ������
initial begin
    clock = 0;
    forever #5 clock = ~clock;
end

// ����Ĵ�����ַ����ʹ�ú꣩
localparam SR_POWER_THRES  = 8'h00;  // ������ֵ�Ĵ�����ַ
localparam SR_POWER_WINDOW = 8'h01;  // ���ڴ�С�Ĵ�����ַ
localparam SR_SKIP_SAMPLE  = 8'h02;  // �����������Ĵ�����ַ

// ���Լ���
initial begin
    // ��ʼ������
    enable = 0;
    reset = 1;
    set_stb = 0;
    set_addr = 0;
    set_data = 0;
    sample_in = 0;
    sample_in_strobe = 0;
    
    // �ȴ�ȫ�ָ�λ
    #20;
    reset = 0;
    enable = 1;
    
    // ����1���������ܲ���
    $display("����1���������ܲ���");
    // ���͵�����ֵ������
    repeat(10) begin
        sample_in = 32'h00005000; // 0x5000 (С��Ĭ����ֵ0x0064)
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    // ���͸�����ֵ������
    sample_in = 32'h0000A000; // 0xA000 (����Ĭ����ֵ)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    // ��֤����
    if (trigger !== 1'b1) $display("���󣺴����ź�δ��λ");
    
    // �����㹻�����ĵ�����ȡ������
    repeat(100) begin
        sample_in = 32'h00001000; // 0x1000 (��ֵ)
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("���󣺴����ź�δȡ��");
    
    // ����2���޸Ĳ���
    $display("����2���޸Ĳ���");
    // �޸Ĺ�����ֵ
    set_stb = 1;
    set_addr = SR_POWER_THRES; // ʹ�ñ��ز���
    set_data = 32'h0000F000;   // ����ֵ0xF000
    #10;
    set_stb = 0;
    #10;
    
    // ����ԭ���ᴥ�������ڲ��������
    sample_in = 32'h0000A000; // 0xA000 (С������ֵ0xF000)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b0) $display("��������ֵ�²�Ӧ����");
    
    // ���͸�������ֵ������
    sample_in = 32'h0000F100; // 0xF100 (��������ֵ)
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b1) $display("��������ֵ��Ӧ����");
    
    // ����3����ʼ������������
    $display("����3����ʼ������������");
    // ��λģ��
    reset = 1;
    #10;
    reset = 0;
    #10;
    
    // �޸�������������
    set_stb = 1;
    set_addr = SR_SKIP_SAMPLE;
    set_data = 32'd10; // ֻ����10������
    #10;
    set_stb = 0;
    #10;
    
    // �������� - �����ڼ䲻Ӧ����
    repeat(15) begin
        sample_in = 32'h0000FFFF; // ��ֵ
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    // ����10�������󣬴���Ӧ��Ч
    if (trigger !== 1'b1) $display("��������������Ӧ����");
    
    // ����4�����ڴ�С����
    $display("����4�����ڴ�С����");
    // ��λģ��
    reset = 1;
    #10;
    reset = 0;
    #10;
    
    // �޸Ĵ��ڴ�С
    set_stb = 1;
    set_addr = SR_POWER_WINDOW;
    set_data = 32'd5; // С����
    #10;
    set_stb = 0;
    #10;
    
    // �������
    sample_in = 32'h0000FFFF;
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    // ���͵�����ֵ������ - ����Ӧ����ȡ��
    repeat(6) begin
        sample_in = 32'h00000010;
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("����С�����´���Ӧȡ��");
    
    // ����5�����ù���
    $display("����5�����ù���");
    enable = 0;
    #10;
    
    // ���ͱ�Ӧ����������
    repeat(5) begin
        sample_in = 32'h0000FFFF;
        sample_in_strobe = 1;
        #10;
        sample_in_strobe = 0;
        #10;
    end
    
    if (trigger !== 1'b0) $display("����ģ�����ʱ��Ӧ����");
    
    // ����ʹ�ܲ���֤���ָܻ�
    enable = 1;
    sample_in = 32'h0000FFFF;
    sample_in_strobe = 1;
    #10;
    sample_in_strobe = 0;
    #10;
    
    if (trigger !== 1'b1) $display("��������ʹ�ܺ�Ӧ����");
    
    // ��ɷ���
    $display("���в������");
    $finish;
end

endmodule