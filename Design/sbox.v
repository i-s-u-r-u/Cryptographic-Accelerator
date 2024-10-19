// =====================================================================
// Module Name : S-Box
// Date : 19/10/2024
// Description : Cryptographic Accelerator
// =====================================================================

module sbox(
    input [5:0] data_in,
    output [3:0] out
);
    reg [3:0] sbox [0:3][0:15]; // Lookup table for S-Box values

    initial begin // Initialize S-Box values (unique)
        // Row 0
        sbox[0][0] = 4'd14;
        sbox[0][1] = 4'd4;
        sbox[0][2] = 4'd13;
        sbox[0][3] = 4'd1;
        sbox[0][4] = 4'd2;
        sbox[0][5] = 4'd15;
        sbox[0][6] = 4'd11;
        sbox[0][7] = 4'd8;
        sbox[0][8] = 4'd3;
        sbox[0][9] = 4'd10;
        sbox[0][10] = 4'd6;
        sbox[0][11] = 4'd12;
        sbox[0][12] = 4'd5;
        sbox[0][13] = 4'd9;
        sbox[0][14] = 4'd0;
        sbox[0][15] = 4'd7;
        // Row 1
        sbox[1][0] = 4'd0;
        sbox[1][1] = 4'd15;
        sbox[1][2] = 4'd7;
        sbox[1][3] = 4'd4;
        sbox[1][4] = 4'd14;
        sbox[1][5] = 4'd2;
        sbox[1][6] = 4'd13;
        sbox[1][7] = 4'd1;
        sbox[1][8] = 4'd10;
        sbox[1][9] = 4'd6;
        sbox[1][10] = 4'd12;
        sbox[1][11] = 4'd11;
        sbox[1][12] = 4'd9;
        sbox[1][13] = 4'd5;
        sbox[1][14] = 4'd3;
        sbox[1][15] = 4'd8;
        // Row 2
        sbox[2][0] = 4'd4;
        sbox[2][1] = 4'd1;
        sbox[2][2] = 4'd14;
        sbox[2][3] = 4'd8;
        sbox[2][4] = 4'd13;
        sbox[2][5] = 4'd6;
        sbox[2][6] = 4'd2;
        sbox[2][7] = 4'd11;
        sbox[2][8] = 4'd15;
        sbox[2][9] = 4'd12;
        sbox[2][10] = 4'd9;
        sbox[2][11] = 4'd7;
        sbox[2][12] = 4'd3;
        sbox[2][13] = 4'd10;
        sbox[2][14] = 4'd5;
        sbox[2][15] = 4'd0;
        // Row 3
        sbox[3][0] = 4'd15;
        sbox[3][1] = 4'd12;
        sbox[3][2] = 4'd8;
        sbox[3][3] = 4'd2;
        sbox[3][4] = 4'd4;
        sbox[3][5] = 4'd9;
        sbox[3][6] = 4'd1;
        sbox[3][7] = 4'd7;
        sbox[3][8] = 4'd5;
        sbox[3][9] = 4'd11;
        sbox[3][10] = 4'd3;
        sbox[3][11] = 4'd14;
        sbox[3][12] = 4'd10;
        sbox[3][13] = 4'd0;
        sbox[3][14] = 4'd6;
        sbox[3][15] = 4'd13;

    end

    // Extracting substitution
    // Row from 1st and 6th bits
    // Column from 2nd to 5th bits
    wire [1:0] row = {data_in[5], data_in[0]};
    wire [3:0] column = data_in[4:1];

    // Output corresponding S-Box value
    assign out = sbox[row][column];

endmodule