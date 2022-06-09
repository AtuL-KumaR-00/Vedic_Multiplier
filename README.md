# Vedic_Multiplier
### Implementation of 4-bit Vedic Multiplier in Verilog ISE

The multiplication of two operands using VEDIC multiplier is achieved by multiplication by Vertically and Crosswise and then adding all the results. This multiplication algorithm can be understood using two operands 46 and 33. The operand 33 can be represented as 33 = (3×10 + 3) and 46 can be represented as 46 = (4×10 + 6). The multiplication (46×33) can be represented as (3×6 + 40×3 + 30×6 + 30×40). This multiplication is shown in Figure 1

![image](https://user-images.githubusercontent.com/64649440/172913620-24848702-ea27-4f8c-8520-aa19eb597945.png)

Figure 1: VEDIC Multiplication
Similar way, this multiplication algorithm can be adopted to implement faster binary multiplier. A 4-bit binary multiplication is shown below in Figure 2

![image](https://user-images.githubusercontent.com/64649440/172913698-0dc99c56-ad20-4cd0-ba84-e69a16f445c8.png)

![image](https://user-images.githubusercontent.com/64649440/172913819-755ef698-cdca-459d-bd13-40a48f571b0b.png)


Figure 2: VEDIC multiplication for 4-bit data width.
VEDIC multiplier is a good alternative to the other fast multiplicative algorithms. VEDIC multipliers reduces hardware as well as the delay compared to other algorithms. A 2-bit multiplier is shown in Figure 3. This circuit uses just two HA blocks and four AND gates.

![image](https://user-images.githubusercontent.com/64649440/172913989-da1ff22b-e401-4106-a0a5-40d5727741cc.png)

![image](https://user-images.githubusercontent.com/64649440/172914115-63801079-073b-4914-b863-dfdc0c9ab7fd.png)


Figure 3: VEDIC multiplier for 2-bit data width
VEDIC multiplier for 4-bit data width is shown in Figure 4. This structure is achieved using four 2-bit multipliers. Here three Add blocks are used. These blocks can be implemented using high speed adders like conditional sum adder, carry look ahead adder or carry select adder as shown in the post fast addition. In this Figure the circles represent the concatenation block. For example, the two bits from the wire s_1 are connected to the output directly.


## References:

* https://digitalsystemdesign.in/vedic-multiplier/
* https://www.youtube.com/watch?v=6M3nyyQfpHU&t=215s
* https://www.slideshare.net/BHUSHANMHASKE/vedic-multiplier-72585583
