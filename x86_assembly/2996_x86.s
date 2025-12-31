	.file	"2996.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"White: "
.LC1:
	.string	"K%c%d"
.LC2:
	.string	",Q%c%d"
.LC3:
	.string	",R%c%d"
.LC4:
	.string	",B%c%d"
.LC5:
	.string	",N%c%d"
.LC6:
	.string	",%c%d"
.LC7:
	.string	"\nBlack: "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 368
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -356[rbp], 0
	mov	DWORD PTR -352[rbp], 0
	mov	DWORD PTR -348[rbp], 0
	mov	DWORD PTR -344[rbp], 0
	mov	DWORD PTR -340[rbp], 0
	mov	DWORD PTR -336[rbp], 0
	mov	DWORD PTR -332[rbp], 0
	mov	DWORD PTR -328[rbp], 0
	mov	DWORD PTR -324[rbp], 0
	mov	DWORD PTR -320[rbp], 0
	mov	DWORD PTR -316[rbp], 0
	mov	DWORD PTR -312[rbp], 0
	mov	DWORD PTR -368[rbp], 1
	jmp	.L2
.L19:
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -364[rbp], 2
	jmp	.L3
.L18:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 58
	je	.L70
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 46
	je	.L70
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 75
	jne	.L7
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -304[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	DWORD PTR -300[rbp], eax
	mov	DWORD PTR -356[rbp], 1
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 107
	jne	.L8
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -288[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	DWORD PTR -284[rbp], eax
	mov	DWORD PTR -332[rbp], 1
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 81
	jne	.L9
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -296[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	DWORD PTR -292[rbp], eax
	mov	DWORD PTR -352[rbp], 1
	jmp	.L6
.L9:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 113
	jne	.L10
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -280[rbp], eax
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	DWORD PTR -276[rbp], eax
	mov	DWORD PTR -328[rbp], 1
	jmp	.L6
.L10:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 82
	jne	.L11
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -348[rbp]
	cdqe
	mov	DWORD PTR -272[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -348[rbp]
	cdqe
	mov	DWORD PTR -268[rbp+rax*8], edx
	add	DWORD PTR -348[rbp], 1
	jmp	.L6
.L11:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 114
	jne	.L12
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -324[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -324[rbp]
	cdqe
	mov	DWORD PTR -220[rbp+rax*8], edx
	add	DWORD PTR -324[rbp], 1
	jmp	.L6
.L12:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 66
	jne	.L13
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -344[rbp]
	cdqe
	mov	DWORD PTR -256[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -344[rbp]
	cdqe
	mov	DWORD PTR -252[rbp+rax*8], edx
	add	DWORD PTR -344[rbp], 1
	jmp	.L6
.L13:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 98
	jne	.L14
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -320[rbp]
	cdqe
	mov	DWORD PTR -208[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -320[rbp]
	cdqe
	mov	DWORD PTR -204[rbp+rax*8], edx
	add	DWORD PTR -320[rbp], 1
	jmp	.L6
.L14:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 78
	jne	.L15
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	DWORD PTR -240[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	DWORD PTR -236[rbp+rax*8], edx
	add	DWORD PTR -340[rbp], 1
	jmp	.L6
.L15:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 110
	jne	.L16
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -316[rbp]
	cdqe
	mov	DWORD PTR -192[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -316[rbp]
	cdqe
	mov	DWORD PTR -188[rbp+rax*8], edx
	add	DWORD PTR -316[rbp], 1
	jmp	.L6
.L16:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 80
	jne	.L17
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -336[rbp]
	cdqe
	mov	DWORD PTR -176[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -336[rbp]
	cdqe
	mov	DWORD PTR -172[rbp+rax*8], edx
	add	DWORD PTR -336[rbp], 1
	jmp	.L6
.L17:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	cmp	al, 112
	jne	.L6
	mov	eax, DWORD PTR -364[rbp]
	sub	eax, 2
	lea	edx, 3[rax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	edx, eax
	mov	eax, DWORD PTR -312[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*8], edx
	mov	eax, 9
	sub	eax, DWORD PTR -368[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -312[rbp]
	cdqe
	mov	DWORD PTR -108[rbp+rax*8], edx
	add	DWORD PTR -312[rbp], 1
	jmp	.L6
.L70:
	nop
.L6:
	add	DWORD PTR -364[rbp], 4
.L3:
	cmp	DWORD PTR -364[rbp], 33
	jle	.L18
	add	DWORD PTR -368[rbp], 1
.L2:
	cmp	DWORD PTR -368[rbp], 8
	jle	.L19
	cmp	DWORD PTR -348[rbp], 1
	jle	.L20
	mov	edx, DWORD PTR -268[rbp]
	mov	eax, DWORD PTR -260[rbp]
	cmp	edx, eax
	jle	.L21
	mov	eax, DWORD PTR -268[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -260[rbp]
	mov	DWORD PTR -268[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -260[rbp], eax
	mov	eax, DWORD PTR -272[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -264[rbp]
	mov	DWORD PTR -272[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -264[rbp], eax
	jmp	.L20
.L21:
	mov	edx, DWORD PTR -268[rbp]
	mov	eax, DWORD PTR -260[rbp]
	cmp	edx, eax
	jne	.L20
	mov	edx, DWORD PTR -272[rbp]
	mov	eax, DWORD PTR -264[rbp]
	cmp	edx, eax
	jle	.L20
	mov	eax, DWORD PTR -268[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -260[rbp]
	mov	DWORD PTR -268[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -260[rbp], eax
	mov	eax, DWORD PTR -272[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -264[rbp]
	mov	DWORD PTR -272[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -264[rbp], eax
.L20:
	cmp	DWORD PTR -344[rbp], 1
	jle	.L22
	mov	edx, DWORD PTR -252[rbp]
	mov	eax, DWORD PTR -244[rbp]
	cmp	edx, eax
	jle	.L23
	mov	eax, DWORD PTR -252[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -244[rbp]
	mov	DWORD PTR -252[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -244[rbp], eax
	mov	eax, DWORD PTR -256[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -248[rbp]
	mov	DWORD PTR -256[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -248[rbp], eax
	jmp	.L22
.L23:
	mov	edx, DWORD PTR -252[rbp]
	mov	eax, DWORD PTR -244[rbp]
	cmp	edx, eax
	jne	.L22
	mov	edx, DWORD PTR -256[rbp]
	mov	eax, DWORD PTR -248[rbp]
	cmp	edx, eax
	jle	.L22
	mov	eax, DWORD PTR -252[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -244[rbp]
	mov	DWORD PTR -252[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -244[rbp], eax
	mov	eax, DWORD PTR -256[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -248[rbp]
	mov	DWORD PTR -256[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -248[rbp], eax
.L22:
	cmp	DWORD PTR -340[rbp], 1
	jle	.L24
	mov	edx, DWORD PTR -236[rbp]
	mov	eax, DWORD PTR -228[rbp]
	cmp	edx, eax
	jle	.L25
	mov	eax, DWORD PTR -236[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -228[rbp]
	mov	DWORD PTR -236[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -228[rbp], eax
	mov	eax, DWORD PTR -240[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -232[rbp]
	mov	DWORD PTR -240[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -232[rbp], eax
	jmp	.L24
.L25:
	mov	edx, DWORD PTR -236[rbp]
	mov	eax, DWORD PTR -228[rbp]
	cmp	edx, eax
	jne	.L24
	mov	edx, DWORD PTR -240[rbp]
	mov	eax, DWORD PTR -232[rbp]
	cmp	edx, eax
	jle	.L24
	mov	eax, DWORD PTR -236[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -228[rbp]
	mov	DWORD PTR -236[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -228[rbp], eax
	mov	eax, DWORD PTR -240[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -232[rbp]
	mov	DWORD PTR -240[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -232[rbp], eax
.L24:
	cmp	DWORD PTR -324[rbp], 1
	jle	.L26
	mov	edx, DWORD PTR -220[rbp]
	mov	eax, DWORD PTR -212[rbp]
	cmp	edx, eax
	jge	.L27
	mov	eax, DWORD PTR -220[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -212[rbp]
	mov	DWORD PTR -220[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -212[rbp], eax
	mov	eax, DWORD PTR -224[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -224[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -216[rbp], eax
	jmp	.L26
.L27:
	mov	edx, DWORD PTR -220[rbp]
	mov	eax, DWORD PTR -212[rbp]
	cmp	edx, eax
	jne	.L26
	mov	edx, DWORD PTR -224[rbp]
	mov	eax, DWORD PTR -216[rbp]
	cmp	edx, eax
	jle	.L26
	mov	eax, DWORD PTR -220[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -212[rbp]
	mov	DWORD PTR -220[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -212[rbp], eax
	mov	eax, DWORD PTR -224[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -224[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -216[rbp], eax
.L26:
	cmp	DWORD PTR -320[rbp], 1
	jle	.L28
	mov	edx, DWORD PTR -204[rbp]
	mov	eax, DWORD PTR -196[rbp]
	cmp	edx, eax
	jge	.L29
	mov	eax, DWORD PTR -204[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -196[rbp]
	mov	DWORD PTR -204[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -196[rbp], eax
	mov	eax, DWORD PTR -208[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -200[rbp]
	mov	DWORD PTR -208[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -200[rbp], eax
	jmp	.L28
.L29:
	mov	edx, DWORD PTR -204[rbp]
	mov	eax, DWORD PTR -196[rbp]
	cmp	edx, eax
	jne	.L28
	mov	edx, DWORD PTR -208[rbp]
	mov	eax, DWORD PTR -200[rbp]
	cmp	edx, eax
	jle	.L28
	mov	eax, DWORD PTR -204[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -196[rbp]
	mov	DWORD PTR -204[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -196[rbp], eax
	mov	eax, DWORD PTR -208[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -200[rbp]
	mov	DWORD PTR -208[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -200[rbp], eax
.L28:
	cmp	DWORD PTR -316[rbp], 1
	jle	.L30
	mov	edx, DWORD PTR -188[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cmp	edx, eax
	jge	.L31
	mov	eax, DWORD PTR -188[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -180[rbp]
	mov	DWORD PTR -188[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -180[rbp], eax
	mov	eax, DWORD PTR -192[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -184[rbp]
	mov	DWORD PTR -192[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -184[rbp], eax
	jmp	.L30
.L31:
	mov	edx, DWORD PTR -188[rbp]
	mov	eax, DWORD PTR -180[rbp]
	cmp	edx, eax
	jne	.L30
	mov	edx, DWORD PTR -192[rbp]
	mov	eax, DWORD PTR -184[rbp]
	cmp	edx, eax
	jle	.L30
	mov	eax, DWORD PTR -188[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -180[rbp]
	mov	DWORD PTR -188[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -180[rbp], eax
	mov	eax, DWORD PTR -192[rbp]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -184[rbp]
	mov	DWORD PTR -192[rbp], eax
	mov	eax, DWORD PTR -308[rbp]
	mov	DWORD PTR -184[rbp], eax
.L30:
	mov	DWORD PTR -364[rbp], 0
	jmp	.L32
.L37:
	mov	eax, DWORD PTR -364[rbp]
	add	eax, 1
	mov	DWORD PTR -360[rbp], eax
	jmp	.L33
.L36:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -172[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -172[rbp+rax*8]
	cmp	edx, eax
	jle	.L34
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -172[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -172[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -172[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -172[rbp+rax*8], edx
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -176[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -176[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -176[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -176[rbp+rax*8], edx
	jmp	.L35
.L34:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -172[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -172[rbp+rax*8]
	cmp	edx, eax
	jne	.L35
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -176[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -176[rbp+rax*8]
	cmp	edx, eax
	jle	.L35
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -172[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -172[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -172[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -172[rbp+rax*8], edx
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -176[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -176[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -176[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -176[rbp+rax*8], edx
.L35:
	add	DWORD PTR -360[rbp], 1
.L33:
	mov	eax, DWORD PTR -360[rbp]
	cmp	eax, DWORD PTR -336[rbp]
	jl	.L36
	add	DWORD PTR -364[rbp], 1
.L32:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -336[rbp]
	jl	.L37
	mov	DWORD PTR -364[rbp], 0
	jmp	.L38
.L43:
	mov	eax, DWORD PTR -364[rbp]
	add	eax, 1
	mov	DWORD PTR -360[rbp], eax
	jmp	.L39
.L42:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -108[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	cmp	edx, eax
	jge	.L40
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -108[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -108[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -108[rbp+rax*8], edx
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -112[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -112[rbp+rax*8], edx
	jmp	.L41
.L40:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -108[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	cmp	edx, eax
	jne	.L41
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	edx, DWORD PTR -112[rbp+rax*8]
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*8]
	cmp	edx, eax
	jle	.L41
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -108[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -108[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -108[rbp+rax*8], edx
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*8]
	mov	DWORD PTR -308[rbp], eax
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -112[rbp+rax*8]
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	DWORD PTR -112[rbp+rax*8], edx
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	edx, DWORD PTR -308[rbp]
	mov	DWORD PTR -112[rbp+rax*8], edx
.L41:
	add	DWORD PTR -360[rbp], 1
.L39:
	mov	eax, DWORD PTR -360[rbp]
	cmp	eax, DWORD PTR -312[rbp]
	jl	.L42
	add	DWORD PTR -364[rbp], 1
.L38:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -312[rbp]
	jl	.L43
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -364[rbp], 0
	jmp	.L44
.L45:
	mov	eax, DWORD PTR -300[rbp]
	mov	edx, DWORD PTR -304[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L44:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -356[rbp]
	jl	.L45
	mov	DWORD PTR -364[rbp], 0
	jmp	.L46
.L47:
	mov	eax, DWORD PTR -292[rbp]
	mov	edx, DWORD PTR -296[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L46:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -352[rbp]
	jl	.L47
	mov	DWORD PTR -364[rbp], 0
	jmp	.L48
.L49:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -268[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -272[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L48:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -348[rbp]
	jl	.L49
	mov	DWORD PTR -364[rbp], 0
	jmp	.L50
.L51:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -252[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -256[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L50:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -344[rbp]
	jl	.L51
	mov	DWORD PTR -364[rbp], 0
	jmp	.L52
.L53:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -236[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -240[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L52:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -340[rbp]
	jl	.L53
	mov	DWORD PTR -364[rbp], 0
	jmp	.L54
.L55:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -172[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -176[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L54:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -336[rbp]
	jl	.L55
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -364[rbp], 0
	jmp	.L56
.L57:
	mov	eax, DWORD PTR -284[rbp]
	mov	edx, DWORD PTR -288[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L56:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -332[rbp]
	jl	.L57
	mov	DWORD PTR -364[rbp], 0
	jmp	.L58
.L59:
	mov	eax, DWORD PTR -276[rbp]
	mov	edx, DWORD PTR -280[rbp]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L58:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -328[rbp]
	jl	.L59
	mov	DWORD PTR -364[rbp], 0
	jmp	.L60
.L61:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -220[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -224[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L60:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -324[rbp]
	jl	.L61
	mov	DWORD PTR -364[rbp], 0
	jmp	.L62
.L63:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -204[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -208[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L62:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -320[rbp]
	jl	.L63
	mov	DWORD PTR -364[rbp], 0
	jmp	.L64
.L65:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -188[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -192[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L64:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -316[rbp]
	jl	.L65
	mov	DWORD PTR -364[rbp], 0
	jmp	.L66
.L67:
	mov	eax, DWORD PTR -364[rbp]
	cdqe
	mov	eax, DWORD PTR -108[rbp+rax*8]
	mov	edx, DWORD PTR -364[rbp]
	movsx	rdx, edx
	mov	edx, DWORD PTR -112[rbp+rdx*8]
	lea	ecx, 97[rdx]
	mov	edx, eax
	mov	esi, ecx
	lea	rax, .LC6[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L66:
	mov	eax, DWORD PTR -364[rbp]
	cmp	eax, DWORD PTR -312[rbp]
	jl	.L67
	mov	edi, 10
	call	putchar@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
