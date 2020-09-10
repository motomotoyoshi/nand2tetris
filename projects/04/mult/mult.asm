// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
    @R1 // A = R1
    D=M // D=M[R1]
    @num // A = num
    M=D // M[num] = D = M[R1]
    @R2 // A = R2
    M=0 // M[R2] = 0 = R2 (出力結果を初期化)
(LOOP)
    @num // A = num
    D=M // D=M[num]
    @END // A = END
    D; JEQ // if D = 0 then END へ jump else 続行
    @R0 // A  = R0
    D=M // D = M[R0]
    @R2 // A = R2
    M=M+D // M[R2] = M[R2] + D
    @num // A = num
    M=M-1 // M[num] = M[num] - 1
    @LOOP // A = LOOP
    0; JMP // LOOPへjump
(END)
    @END // A = END
    0; JMP // ENDへjump