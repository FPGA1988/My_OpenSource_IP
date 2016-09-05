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
//File Name      : clk_gated_module.v 
//Project Name   : gt0000
//Description    : The clock gating module
//Github Address : https://github.com/C-L-G/gt0000/trunk/ic/digital/rtl/clk_gen_module/clk_gen_module.v
//License        : CPL
//**************************************************************************************************** 
//Version Information
//**************************************************************************************************** 
//Create Date    : 02-09-2016 17:00(1th Fri,July,2016)
//First Author   : Roger Wang
//Modify Date    : 02-09-2016 14:20(1th Sun,July,2016)
//Last Author    : Roger Wang
//Version Number : 001  
//Last Commit    : xx-xx-2016 14:30(1th Sun,July,2016)
//**************************************************************************************************** 
//Change History(latest change first)
//dd.mm.yyyy - Author - Your log of change
//**************************************************************************************************** 
//02.09.2016 - Roger Wang - Move the gated logic from gen top to this module.
//*---------------------------------------------------------------------------------------------------
`timescale 1ns/1ps
module clk_gated_module(
    src_clk            ,//01   In
    clk_en             ,//01   In
    gated_clk           //01   Out
);

    //************************************************************************************************
    // 1.Parameter and constant define
    //************************************************************************************************
    
    
    //************************************************************************************************
    // 2.input and output declaration
    //************************************************************************************************
    input               src_clk     ;//the clk = 200MHz
    input               clk_en      ;//the clock enable
    output              gated_clk   ;//the gated clock
    
    //************************************************************************************************
    // 3.Register and wire declaration
    //************************************************************************************************
    
    //------------------------------------------------------------------------------------------------
    // 3.1 the system led module wire
    //------------------------------------------------------------------------------------------------    
    reg                 clk_en_reg      ;//register the clock enable

    //************************************************************************************************
    // 4.Main code
    //************************************************************************************************
    //------------------------------------------------------------------------------------------------
    // 4.1 the clock gating
    //------------------------------------------------------------------------------------------------
    always @(posedge src_clk) begin : CLK_EN_REG
        clk_en_reg  <= clk_en;
    end
    assign  gated_clk   = clk_en_reg & src_clk ;
    
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
    
    
    
   
