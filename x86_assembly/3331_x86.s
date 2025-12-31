	.file	"3331.c"
	.intel_syntax noprefix
	.text
	.globl	muil
	.type	muil, @function
muil:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 848
	mov	DWORD PTR -836[rbp], edi
	mov	DWORD PTR -840[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -816[rbp], 49
	mov	QWORD PTR -808[rbp], 0
	lea	rdx, -800[rbp]
	mov	eax, 0
	mov	ecx, 98
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -832[rbp], 2
	jmp	.L2
.L10:
	lea	rax, -816[rbp]
	mov	rdi, rax
	call	strlen@PLT
	sub	eax, 1
	mov	DWORD PTR -828[rbp], eax
	jmp	.L3
.L9:
	mov	eax, DWORD PTR -828[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	movsx	eax, al
	lea	edx, -48[rax]
	mov	eax, DWORD PTR -832[rbp]
	imul	eax, edx
	mov	DWORD PTR -824[rbp], eax
	mov	eax, DWORD PTR -828[rbp]
	mov	DWORD PTR -820[rbp], eax
	mov	edx, DWORD PTR -824[rbp]
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
	lea	ecx, 48[rax]
	mov	eax, DWORD PTR -820[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -820[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	mov	eax, DWORD PTR -824[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -824[rbp], eax
	jmp	.L4
.L8:
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	test	al, al
	jne	.L5
	mov	edx, DWORD PTR -824[rbp]
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
	add	eax, 48
	mov	edx, eax
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	jmp	.L6
.L5:
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	mov	edi, eax
	mov	edx, DWORD PTR -824[rbp]
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
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
.L6:
	mov	eax, DWORD PTR -824[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -824[rbp], eax
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	cmp	al, 57
	jle	.L7
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	sub	eax, 10
	mov	edx, eax
	mov	eax, DWORD PTR -820[rbp]
	cdqe
	mov	BYTE PTR -816[rbp+rax], dl
	add	DWORD PTR -824[rbp], 1
.L7:
	add	DWORD PTR -820[rbp], 1
.L4:
	cmp	DWORD PTR -824[rbp], 0
	jne	.L8
	sub	DWORD PTR -828[rbp], 1
.L3:
	cmp	DWORD PTR -828[rbp], 0
	jns	.L9
	add	DWORD PTR -832[rbp], 1
.L2:
	mov	eax, DWORD PTR -832[rbp]
	cmp	eax, DWORD PTR -836[rbp]
	jle	.L10
	lea	rax, -816[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -836[rbp], eax
	mov	DWORD PTR -832[rbp], 0
	mov	DWORD PTR -828[rbp], 0
	jmp	.L11
.L13:
	mov	eax, DWORD PTR -832[rbp]
	cdqe
	movzx	eax, BYTE PTR -816[rbp+rax]
	movsx	eax, al
	sub	eax, 48
	cmp	DWORD PTR -840[rbp], eax
	jne	.L12
	add	DWORD PTR -828[rbp], 1
.L12:
	add	DWORD PTR -832[rbp], 1
.L11:
	mov	eax, DWORD PTR -832[rbp]
	cmp	eax, DWORD PTR -836[rbp]
	jl	.L13
	mov	eax, DWORD PTR -828[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	ret
	.size	muil, .-muil
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 0
	jmp	.L17
.L18:
	lea	rdx, -20[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	muil
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
.L17:
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L18
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
