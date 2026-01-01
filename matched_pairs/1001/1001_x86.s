	.file	"1001.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 208
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -176[rbp], 0
	mov	QWORD PTR -160[rbp], 0
	mov	QWORD PTR -152[rbp], 0
	mov	QWORD PTR -144[rbp], 0
	mov	QWORD PTR -136[rbp], 0
	mov	QWORD PTR -128[rbp], 0
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 0
	mov	QWORD PTR -104[rbp], 0
	mov	QWORD PTR -96[rbp], 0
	mov	QWORD PTR -88[rbp], 0
	mov	QWORD PTR -80[rbp], 0
	mov	QWORD PTR -72[rbp], 0
	mov	QWORD PTR -64[rbp], 0
	mov	QWORD PTR -56[rbp], 0
	mov	QWORD PTR -48[rbp], 0
	mov	QWORD PTR -40[rbp], 0
	mov	QWORD PTR -32[rbp], 0
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	mov	WORD PTR -12[rbp], 0
	jmp	.L2
.L31:
	mov	DWORD PTR -180[rbp], 0
	mov	DWORD PTR -196[rbp], 0
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	mov	BYTE PTR -160[rbp+rax], 0
	add	DWORD PTR -196[rbp], 1
.L3:
	mov	eax, DWORD PTR -196[rbp]
	cmp	eax, DWORD PTR -176[rbp]
	jle	.L4
	mov	DWORD PTR -196[rbp], 0
	mov	DWORD PTR -192[rbp], 4
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	eax, BYTE PTR -167[rbp+rax]
	cmp	al, 46
	jne	.L6
	mov	eax, 5
	sub	eax, DWORD PTR -196[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -204[rbp]
	imul	eax, edx
	sub	eax, 1
	mov	DWORD PTR -200[rbp], eax
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	eax, BYTE PTR -167[rbp+rax]
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -192[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -192[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -160[rbp+rax], dl
	mov	edx, DWORD PTR -180[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	eax, BYTE PTR -167[rbp+rax]
	movsx	eax, al
	add	eax, edx
	sub	eax, 48
	mov	DWORD PTR -180[rbp], eax
.L7:
	add	DWORD PTR -196[rbp], 1
.L5:
	cmp	DWORD PTR -196[rbp], 5
	jle	.L8
	mov	DWORD PTR -176[rbp], 4
	mov	DWORD PTR -196[rbp], 2
	jmp	.L9
.L18:
	mov	eax, DWORD PTR -176[rbp]
	mov	DWORD PTR -192[rbp], eax
	jmp	.L10
.L17:
	mov	eax, DWORD PTR -192[rbp]
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	movsx	eax, al
	mov	edx, DWORD PTR -180[rbp]
	imul	eax, edx
	mov	DWORD PTR -172[rbp], eax
	mov	eax, DWORD PTR -192[rbp]
	mov	DWORD PTR -188[rbp], eax
	mov	edx, DWORD PTR -172[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, DWORD PTR -188[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -188[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -160[rbp+rax], dl
	mov	eax, DWORD PTR -172[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -172[rbp], eax
	jmp	.L11
.L15:
	mov	eax, DWORD PTR -188[rbp]
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	mov	edi, eax
	mov	edx, DWORD PTR -172[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	add	eax, edi
	mov	edx, eax
	mov	eax, DWORD PTR -188[rbp]
	cdqe
	mov	BYTE PTR -160[rbp+rax], dl
	mov	eax, DWORD PTR -188[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -188[rbp], edx
	mov	DWORD PTR -184[rbp], eax
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -184[rbp]
	add	eax, 1
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	mov	esi, eax
	mov	eax, DWORD PTR -184[rbp]
	cdqe
	movzx	edx, BYTE PTR -160[rbp+rax]
	mov	ecx, 103
	mov	eax, ecx
	imul	dl
	shr	ax, 8
	sar	al, 2
	sar	dl, 7
	sub	eax, edx
	lea	edx, [rsi+rax]
	mov	eax, DWORD PTR -184[rbp]
	add	eax, 1
	cdqe
	mov	BYTE PTR -160[rbp+rax], dl
	mov	edx, DWORD PTR -184[rbp]
	lea	eax, 1[rdx]
	mov	DWORD PTR -184[rbp], eax
	movsx	rax, edx
	movzx	ecx, BYTE PTR -160[rbp+rax]
	mov	esi, 103
	mov	eax, esi
	imul	cl
	shr	ax, 8
	sar	al, 2
	mov	edi, ecx
	sar	dil, 7
	sub	eax, edi
	mov	esi, eax
	mov	eax, esi
	sal	eax, 2
	add	eax, esi
	add	eax, eax
	mov	esi, ecx
	sub	esi, eax
	movsx	rax, edx
	mov	BYTE PTR -160[rbp+rax], sil
.L12:
	mov	eax, DWORD PTR -184[rbp]
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	cmp	al, 9
	jg	.L13
	mov	eax, DWORD PTR -184[rbp]
	cmp	eax, DWORD PTR -176[rbp]
	jle	.L14
	mov	eax, DWORD PTR -184[rbp]
	mov	DWORD PTR -176[rbp], eax
.L14:
	mov	eax, DWORD PTR -172[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -172[rbp], eax
.L11:
	cmp	DWORD PTR -172[rbp], 0
	jne	.L15
	mov	eax, DWORD PTR -176[rbp]
	add	eax, 1
	cmp	DWORD PTR -188[rbp], eax
	jle	.L16
	mov	eax, DWORD PTR -188[rbp]
	sub	eax, 1
	mov	DWORD PTR -176[rbp], eax
.L16:
	sub	DWORD PTR -192[rbp], 1
.L10:
	cmp	DWORD PTR -192[rbp], 0
	jns	.L17
	add	DWORD PTR -196[rbp], 1
.L9:
	mov	eax, DWORD PTR -204[rbp]
	cmp	DWORD PTR -196[rbp], eax
	jle	.L18
	mov	DWORD PTR -192[rbp], 0
	jmp	.L19
.L22:
	mov	eax, DWORD PTR -192[rbp]
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	test	al, al
	jne	.L34
	add	DWORD PTR -192[rbp], 1
.L19:
	mov	eax, DWORD PTR -192[rbp]
	cmp	eax, DWORD PTR -176[rbp]
	jle	.L22
	jmp	.L21
.L34:
	nop
.L21:
	sub	DWORD PTR -192[rbp], 1
	mov	eax, DWORD PTR -200[rbp]
	cmp	eax, DWORD PTR -176[rbp]
	jle	.L23
	mov	edi, 46
	call	putchar@PLT
	mov	eax, DWORD PTR -200[rbp]
	mov	DWORD PTR -188[rbp], eax
	jmp	.L24
.L25:
	mov	edi, 48
	call	putchar@PLT
	sub	DWORD PTR -188[rbp], 1
.L24:
	mov	eax, DWORD PTR -188[rbp]
	cmp	eax, DWORD PTR -176[rbp]
	jg	.L25
.L23:
	mov	eax, DWORD PTR -176[rbp]
	mov	DWORD PTR -196[rbp], eax
	jmp	.L26
.L30:
	mov	eax, DWORD PTR -196[rbp]
	cmp	eax, DWORD PTR -192[rbp]
	jg	.L27
	mov	eax, DWORD PTR -196[rbp]
	cmp	eax, DWORD PTR -200[rbp]
	jle	.L35
.L27:
	mov	eax, DWORD PTR -196[rbp]
	cmp	eax, DWORD PTR -200[rbp]
	jne	.L29
	mov	edi, 46
	call	putchar@PLT
.L29:
	mov	eax, DWORD PTR -196[rbp]
	cdqe
	movzx	eax, BYTE PTR -160[rbp+rax]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -196[rbp], 1
.L26:
	cmp	DWORD PTR -196[rbp], 0
	jns	.L30
	jmp	.L28
.L35:
	nop
.L28:
	mov	edi, 10
	call	putchar@PLT
.L2:
	lea	rdx, -204[rbp]
	lea	rax, -167[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L31
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
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
