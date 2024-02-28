# VHDL-2x4Decoder
This code designs a 2x4 Decoder using the VHDL language in AMD Xilinx Vivado. It uses a Dataflow architecture to implement the Decoder. It also has a Testbench that can be modified to test various cases. A 2x4 decoder is a digital circuit that takes in two input lines, typically labeled as A and B, and an enable signal and produces four output lines based on the combinations of inputs. The name "2x4" indicates that there are two input lines and four output lines.

Here's how it works:

Inputs: A and B: These are the two input lines. Enable (en): This signal enables or disables the decoder. When the enable signal is active, the decoder functions; otherwise, it produces no output.

Outputs: Z0, Z1, Z2, and Z3: These are the four output lines of the decoder. Each output corresponds to a unique combination of input signals A and B.

Functionality: The decoder interprets the binary value represented by the input lines A and B. One of the four output lines is activated depending on the combination of inputs and the state of the enable signal. Each output line corresponds to a particular binary value, representing the decoded output. 
