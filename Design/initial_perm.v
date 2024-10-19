// =====================================================================
// Module Name : Initial Permutation Table
// Date : 19/10/2024
// Description : Cryptographic Accelerator
// =====================================================================

module initial_perm(
    input [63:0] data_in,
    output [63:0] out
);
    function [63:0]	IPERM;
		input [63:0] D;
		begin	
			IPERM[63] = D[64-58];
			IPERM[62] = D[64-50];
			IPERM[61] = D[64-42];
			IPERM[60] = D[64-34];
			IPERM[59] = D[64-26];
			IPERM[58] = D[64-18];
			IPERM[57] = D[64-10];
			IPERM[56] = D[64- 2];		
			IPERM[55] = D[64-60];
			IPERM[54] = D[64-52];
			IPERM[53] = D[64-44];
			IPERM[52] = D[64-36];
			IPERM[51] = D[64-28];
			IPERM[50] = D[64-20];
			IPERM[49] = D[64-12];
			IPERM[48] = D[64- 4];
			IPERM[47] = D[64-62];
			IPERM[46] = D[64-54];
			IPERM[45] = D[64-46];
			IPERM[44] = D[64-38];
			IPERM[43] = D[64-30];
			IPERM[42] = D[64-22];
			IPERM[41] = D[64-14];
			IPERM[40] = D[64- 6];
			IPERM[39] = D[64-64];
			IPERM[38] = D[64-56];
			IPERM[37] = D[64-48];
			IPERM[36] = D[64-40];
			IPERM[35] = D[64-32];
			IPERM[34] = D[64-24];
			IPERM[33] = D[64-16];
			IPERM[32] = D[64- 8];
			IPERM[31] = D[64-57];
			IPERM[30] = D[64-49];
			IPERM[29] = D[64-41];
			IPERM[28] = D[64-33];
			IPERM[27] = D[64-25];
			IPERM[26] = D[64-17];
			IPERM[25] = D[64- 9];
			IPERM[24] = D[64- 1];
			IPERM[23] = D[64-59];
			IPERM[22] = D[64-51];
			IPERM[21] = D[64-43];
			IPERM[20] = D[64-35];
			IPERM[19] = D[64-27];
			IPERM[18] = D[64-19];
			IPERM[17] = D[64-11];
			IPERM[16] = D[64- 3];
			IPERM[15] = D[64-61];
			IPERM[14] = D[64-53];
			IPERM[13] = D[64-45];
			IPERM[12] = D[64-37];
			IPERM[11] = D[64-29];
			IPERM[10] = D[64-21];
			IPERM[ 9] = D[64-13];
			IPERM[ 8] = D[64- 5];		
			IPERM[ 7] = D[64-63];
			IPERM[ 6] = D[64-55];
			IPERM[ 5] = D[64-47];
			IPERM[ 4] = D[64-39];
			IPERM[ 3] = D[64-31];
			IPERM[ 2] = D[64-23];
			IPERM[ 1] = D[64-15];
			IPERM[ 0] = D[64- 7];					
		end
	endfunction

    assign out = IPERM(data_in);
    
endmodule