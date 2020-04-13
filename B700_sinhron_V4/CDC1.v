module ClockBridge_BusOut( 
   Data_IN, 
   wr_in, 
   clk_out, 
   reset, 
   clk_in, 
   Data_in_rdy, 
   Data_Out, 
   Data_out_rdy
);


// synopsys template
parameter DATA_WIDTH = 16,
          T       = 1;

// IO port Declarations

input  [DATA_WIDTH-1:0] Data_IN;
input                   wr_in;
input                   clk_out;
input                   reset;
input                   clk_in;
output                  Data_in_rdy;
output [DATA_WIDTH-1:0] Data_Out;
output                  Data_out_rdy;

//Internal Declarations


wire [DATA_WIDTH-1:0] #T Data_IN;
wire #T                wr_in;
wire                   clk_out;
wire                   reset;
wire                   clk_in;
wire #T                o_bsy;
wire [DATA_WIDTH-1:0] #T Data_Out;
wire #T                Data_out_rdy;

// Local declarations

// Internal signal declarations

reg reg_rdy_data_in;
reg data_reg_in_rdy;
reg [DATA_WIDTH-1:0]    reg_data_in;
reg [DATA_WIDTH-1:0]    reg_data_out;
reg data_reg_in_rdy_1;

//---------------------------------------------------------

//“актовый домен со сторы данных на запись

//«аписываем данные во входной регистр
        
always @(posedge clk_in or posedge reset)
    if (reset)
        reg_data_in[DATA_WIDTH-1:0] <=  #T  0;
    else
        if (wr_in)
            reg_data_in[DATA_WIDTH-1:0] <=  #T  Data_IN[DATA_WIDTH-1:0];            

// —игнал готовности данных во входном регистре
// ¬ыставл€ем стробом записи в регистр
//—брасываетс€ по сигналу готовности в выходном регистре

always @(posedge clk_in or posedge reset)
    if (reset)
        reg_rdy_data_in <=  #T  1'b0;
    else
        reg_rdy_data_in <=  #T  (reg_rdy_data_in | wr_in) & ~data_reg_in_rdy_1;

assign Data_in_rdy  =   reg_rdy_data_in;

//--------------------------------------------------------

//“актовый домен со сторы данных на чтение

//—тробируем сигнал готовности данных во входном регистре частотой сос стороны чтени€
//Ёто нужно, чтобы не попасть на фронт сигнала и данные гарантированно были зафиксированы во входном регистре.

always @(posedge clk_out or posedge reset)
    if (reset)
        data_reg_in_rdy  <=  #T  1'b0;
    else
        data_reg_in_rdy  <=  #T  reg_rdy_data_in;


//ѕо сигналу готовности данные со входного регистра записываютс€ в выходной 

always @(posedge clk_out or posedge reset)
    if (reset)
        reg_data_out[DATA_WIDTH-1:0]    <=  #T  0;
    else
        if (data_reg_in_rdy)
            reg_data_out[DATA_WIDTH-1:0] <=  #T  reg_data_in[DATA_WIDTH-1:0];  

assign  Data_Out[DATA_WIDTH-1:0] = reg_data_out[DATA_WIDTH-1:0];  

//—игнал готовности данных в выходном регистре

always @(posedge clk_out or posedge reset)
    if (reset)
        data_reg_in_rdy_1   <=  #T  1'b1;
    else
        data_reg_in_rdy_1   <=  #T  data_reg_in_rdy;    

    
assign Data_out_rdy =   data_reg_in_rdy_1;

endmodule // ClockBridge_BusOut