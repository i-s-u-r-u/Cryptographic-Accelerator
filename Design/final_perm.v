// =====================================================================
// Module Name : Final Permutation Table
// Date : 19/10/2024
// Description : Cryptographic Accelerator
// =====================================================================

module final_perm(
    input [63:0] data_in,
    output [63:0] out
);
    function [63:0]	LPERM;
		input [63:0] D;
		begin	
			LPERM[63] = D[64-40];
			LPERM[62] = D[64- 8];
			LPERM[61] = D[64-48];
			LPERM[60] = D[64-16];
			LPERM[59] = D[64-56];
			LPERM[58] = D[64-24];
			LPERM[57] = D[64-64];
			LPERM[56] = D[64-32];		
			LPERM[55] = D[64-39];
			LPERM[54] = D[64- 7];
			LPERM[53] = D[64-47];
			LPERM[52] = D[64-15];
			LPERM[51] = D[64-55];
			LPERM[50] = D[64-23];
			LPERM[49] = D[64-63];
			LPERM[48] = D[64-31];
			LPERM[47] = D[64-38];
			LPERM[46] = D[64- 6];
			LPERM[45] = D[64-46];
			LPERM[44] = D[64-14];
			LPERM[43] = D[64-54];
			LPERM[42] = D[64-22];
			LPERM[41] = D[64-62];
			LPERM[40] = D[64-30];
			LPERM[39] = D[64-37];
			LPERM[38] = D[64- 5];
			LPERM[37] = D[64-45];
			LPERM[36] = D[64-13];
			LPERM[35] = D[64-53];
			LPERM[34] = D[64-21];
			LPERM[33] = D[64-61];
			LPERM[32] = D[64-29];
			LPERM[31] = D[64-36];
			LPERM[30] = D[64- 4];
			LPERM[29] = D[64-44];
			LPERM[28] = D[64-12];
			LPERM[27] = D[64-52];
			LPERM[26] = D[64-20];
			LPERM[25] = D[64-60];
			LPERM[24] = D[64-28];
			LPERM[23] = D[64-35];
			LPERM[22] = D[64- 3];
			LPERM[21] = D[64-43];
			LPERM[20] = D[64-11];
			LPERM[19] = D[64-51];
			LPERM[18] = D[64-19];
			LPERM[17] = D[64-59];
			LPERM[16] = D[64-27];
			LPERM[15] = D[64-34];
			LPERM[14] = D[64- 2];
			LPERM[13] = D[64-42];
			LPERM[12] = D[64-10];
			LPERM[11] = D[64-50];
			LPERM[10] = D[64-18];
			LPERM[ 9] = D[64-58];
			LPERM[ 8] = D[64-26];		
			LPERM[ 7] = D[64-33];
			LPERM[ 6] = D[64- 1];
			LPERM[ 5] = D[64-41];
			LPERM[ 4] = D[64- 9];
			LPERM[ 3] = D[64-49];
			LPERM[ 2] = D[64-17];
			LPERM[ 1] = D[64-57];
			LPERM[ 0] = D[64-25];					
		end
	endfunction

    assign out = LPERM(data_in);
    
endmodule