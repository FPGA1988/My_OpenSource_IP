//****************************************************************************************************  
//*----------------Copyright (c) 2016 C-L-G.FPGA1988.Roger Wang. All rights reserved------------------
//
//                   --              It to be define                --
//                   --                    ...                      --
//                   --                    ...                      --
//                   --                    ...                      --
//**************************************************************************************************** 
//File Information
//**************************************************************************************************** 
//File Name      : clk_gen_module.v 
//Project Name   : gt0000
//Description    : The system auxiliary module.
//Github Address : https://github.com/C-L-G/gt0000/trunk/ic/digital/rtl/clk_gen_module/clk_gen_module.v
//License        : CPL
//**************************************************************************************************** 
//Version Information
//**************************************************************************************************** 
//Create Date    : 29-08-2016 17:00(1th Fri,July,2016)
//First Author   : Roger Wang
//Modify Date    : 29-08-2016 14:20(1th Sun,July,2016)
//Last Author    : Roger Wang
//Version Number : 001  
//Last Commit    : 29-08-2016 14:30(1th Sun,July,2016)
//**************************************************************************************************** 
//Change History(latest change first)
//dd.mm.yyyy - Author - Your log of change
//**************************************************************************************************** 
//02.09.2016 - Roger Wang - Move the div logic from gen top to this module.
//*---------------------------------------------------------------------------------------------------
`timescale 1ns/1ps
module clk_div_module(
    src_clk             ,//01   In
    div_rst_n           ,//01   In
	div_clk_0           ,//01   Out
	div_clk_1            //01   Out
);

    //************************************************************************************************
    // 1.Parameter and constant define
    //************************************************************************************************
    
    
    //************************************************************************************************
    // 2.input and output declaration
    //************************************************************************************************
    input               src_clk     ;//the clk = 200MHz
    input               div_rst_n   ;//the reset signal : low active
    output              div_clk_0   ;//the div 2 clock = 100MHz
    output              div_clk_1   ;//the div 4 clock = 50MHz
    
    //************************************************************************************************
    // 3.Register and wire declaration
    //************************************************************************************************
    
    //------------------------------------------------------------------------------------------------
    // 3.1 the system led module wire
    //------------------------------------------------------------------------------------------------    
    reg     [01:00]     clk_div_cnt     ;//led count

    //************************************************************************************************
    // 4.Main code
    //************************************************************************************************
    //------------------------------------------------------------------------------------------------
    // 4.1 the system led module assignment
    //------------------------------------------------------------------------------------------------
    always @(posedge src_clk or negedge div_rst_n) begin : DIV_CNT_ADD
        if(!div_rst_n)
            begin
                `ifndef SYNTHESIS
                    $display("The initial value of clk div count is 0.");
                `endif
                clk_div_cnt     <= 'd0;
            end
        else
            begin
                clk_div_cnt     <= clk_div_cnt + 1'b1;
            end   
    end
    assign  div_clk_0   = clk_div_cnt[0];
    assign  div_clk_1   = clk_div_cnt[1];
    
    //************************************************************************************************
    // 5.Sub module instantiation
    //************************************************************************************************
    //------------------------------------------------------------------------------------------------
    // 5.1 the xxx module
    //------------------------------------------------------------------------------------------------    
    
    //------------------------------------------------------------------------------------------------
    // 5.2 the xxx module
    //------------------------------------------------------------------------------------------------   

    
    //------------------------------------------------------------------------------------------------
    // 5.3 the xxx module
    //------------------------------------------------------------------------------------------------

    
endmodule    
//****************************************************************************************************
//End of Mopdule
//****************************************************************************************************
