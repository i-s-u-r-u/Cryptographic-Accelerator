// =====================================================================
// Module Name : S-Box Testbench
// Date : 19/10/2024
// Description : Cryptographic Accelerator
// =====================================================================

module sbox_tb();
    reg [5:0] data_in;
    wire [3:0] out;
    
    sbox uut (
        .data_in(data_in),
        .out(out)
    );

    initial begin
        $dumpfile ("sbox.vcd");
        $dumpvars (0, sbox_tb);

        $display("Test Case 1: Input = 6'b101001");
        data_in = 6'b101001;  // Test case 1
        #10;
        $display("Output = %b\n", out);
        
        $display("Test Case 2: Input = 6'b110110");
        data_in = 6'b110110;  // Test case 2
        #10;
        $display("Output = %b\n", out);
        
        $display("Test Case 3: Input = 6'b011011");
        data_in = 6'b011011;  // Test case 3
        #10;
        $display("Output = %b\n", out);
        
        $display("Test Case 4: Input = 6'b001100");
        data_in = 6'b001100;  // Test case 4
        #10;
        $display("Output = %b\n", out);
        
        $display("Test Case 5: Input = 6'b111111");
        data_in = 6'b111111;  // Test case 5
        #10;
        $display("Output = %b\n", out);
        
        $display("Test Case 6: Input = 6'b000000");
        data_in = 6'b000000;  // Test case 6
        #10;
        $display("Output = %b\n", out);

        for (i = 0; i < 10; i = i + 1) begin  // Running 10 random test cases
            data_in = $random % 64;  // Generate random 6-bit number (0-63)
            #10;  // Wait for the output to settle
            $display("Test Case %0d: Input = %b, Output = %b", i, data_in, out);
        end

        $finish;  // End simulation
    end

endmodule