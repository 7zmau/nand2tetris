// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LISTEN)
 @24576
 D=M
 @START
 D;JNE
 @DELETE
 D;JEQ

(START)
 @8192
 D=A
 @count
 M=D
 @16384
 D=A
 @base
 M=D
 @i
 M=0
(FILL)
 @i
 D=M
 @count
 D=D-M
 @LISTEN
 D;JEQ

 @base
 D=M
 @i
 A=D+M
 M=-1
 
 @i
 M=M+1

 @FILL
 0;JMP

(DELETE)
 @8192
 D=A
 @count
 M=D
 @16384
 D=A
 @base
 M=D
 @i
 M=0
(CLEAR)
 @i
 D=M
 @count
 D=D-M
 @LISTEN
 D;JEQ

 @base
 D=M
 @i
 A=D+M
 M=0
 
 @i
 M=M+1

 @CLEAR
 0;JMP
