module demux1_32 (
    input in,             
    input [4:0] sel,      
    output reg [31:0] y);

    always @(*) begin
        y = 32'b00000;             
        case (sel)
            5'd0: y[0] = in;
            5'd1: y[1] = in;
            5'd2: y[2] = in;
            5'd3: y[3] = in;
            5'd4: y[4] = in;
            5'd5: y[5] = in;
            5'd6: y[6] = in;
            5'd7: y[7] = in;
            5'd8: y[8] = in;
            5'd9: y[9] = in;
            5'd10: y[10] = in;
            5'd11: y[11] = in;
            5'd12: y[12] = in;
            5'd13: y[13] = in;
            5'd14: y[14] = in;
            5'd15: y[15] = in;
            5'd16: y[16] = in;
            5'd17: y[17] = in;
            5'd18: y[18] = in;
            5'd19: y[19] = in;
            5'd20: y[20] = in;
            5'd21: y[21] = in;
            5'd22: y[22] = in;
            5'd23: y[23] = in;
            5'd24: y[24] = in;
            5'd25: y[25] = in;
            5'd26: y[26] = in;
            5'd27: y[27] = in;
            5'd28: y[28] = in;
            5'd29: y[29] = in;
            5'd30: y[30] = in;
            5'd31: y[31] = in;
            default: y = 32'b0;
        endcase
    end

endmodule
