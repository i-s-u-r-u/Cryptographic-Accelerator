// =====================================================================
// Module Name : Expansion Table
// Date : 19/10/2024
// Description : Cryptographic Accelerator
// =====================================================================

module expand(
    input [31:0] data_in,
    output [47:0] out
);
    function [47:0]	EXP;
		input [31:0] D;
		begin
			EXP[47] = D[48-32];
			EXP[46] = D[48- 1];
			EXP[45] = D[48- 2];
			EXP[44] = D[48- 3];
			EXP[43] = D[48- 4];
			EXP[42] = D[48- 5];
			EXP[41] = D[48- 4];
			EXP[40] = D[48- 5];
			EXP[39] = D[48- 6];
			EXP[38] = D[48- 7];
			EXP[37] = D[48- 8];
			EXP[36] = D[48- 9];
			EXP[35] = D[48- 8];
			EXP[34] = D[48- 9];
			EXP[33] = D[48-10];
			EXP[32] = D[48-11];
			EXP[31] = D[48-12];
			EXP[30] = D[48-13];
			EXP[29] = D[48-12];
			EXP[28] = D[48-13];
			EXP[27] = D[48-14];
			EXP[26] = D[48-15];
			EXP[25] = D[48-16];
			EXP[24] = D[48-17];
			EXP[23] = D[48-16];
			EXP[22] = D[48-17];
			EXP[21] = D[48-18];
			EXP[20] = D[48-19];
			EXP[19] = D[48-20];
			EXP[18] = D[48-21];
			EXP[17] = D[48-20];
			EXP[16] = D[48-21];
			EXP[15] = D[48-22];
			EXP[14] = D[48-23];
			EXP[13] = D[48-24];
			EXP[12] = D[48-25];
			EXP[11] = D[48-24];
			EXP[10] = D[48-25];
			EXP[ 9] = D[48-26];
			EXP[ 8] = D[48-27];		
			EXP[ 7] = D[48-28];
			EXP[ 6] = D[48-29];
			EXP[ 5] = D[48-28];
			EXP[ 4] = D[48-29];
			EXP[ 3] = D[48-30];
			EXP[ 2] = D[48-31];
			EXP[ 1] = D[48-32];
			EXP[ 0] = D[48-1];					
		end
	endfunction

    assign out = EXP(data_in);
    
endmodule