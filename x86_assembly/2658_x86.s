	.file	"2658.c"
	.intel_syntax noprefix
	.text
	.globl	syllable
	.bss
	.align 32
	.type	syllable, @object
	.size	syllable, 240
syllable:
	.zero	240
	.text
	.globl	rhyme
	.type	rhyme, @function
rhyme:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	rax, syllable[rip+60]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L2
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L3
	mov	eax, 0
	jmp	.L4
.L3:
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip+120]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L5
	mov	eax, 1
	jmp	.L4
.L5:
	mov	eax, 4
	jmp	.L4
.L2:
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L6
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip+60]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L7
	mov	eax, 2
	jmp	.L4
.L7:
	mov	eax, 4
	jmp	.L4
.L6:
	lea	rax, syllable[rip+180]
	mov	rsi, rax
	lea	rax, syllable[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	lea	rax, syllable[rip+120]
	mov	rsi, rax
	lea	rax, syllable[rip+60]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L9
	mov	eax, 3
	jmp	.L4
.L9:
	mov	eax, 4
	jmp	.L4
.L8:
	mov	eax, 4
.L4:
	pop	rbp
	ret
	.size	rhyme, .-rhyme
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 192
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 32760384460055920
	mov	QWORD PTR -160[rbp], rax
	mov	QWORD PTR -152[rbp], 1852143205
	movabs	rax, 495857922659
	mov	QWORD PTR -144[rbp], rax
	movabs	rax, 465675053171
	mov	QWORD PTR -136[rbp], rax
	mov	QWORD PTR -128[rbp], 1701147238
	lea	rax, -180[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -176[rbp], 0
	jmp	.L11
.L24:
	mov	DWORD PTR -172[rbp], 0
	jmp	.L12
.L23:
	lea	rax, -112[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	DWORD PTR -168[rbp], 0
	mov	DWORD PTR -164[rbp], 0
	jmp	.L13
.L15:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 32
	jne	.L14
	mov	eax, DWORD PTR -168[rbp]
	add	eax, 1
	mov	DWORD PTR -164[rbp], eax
.L14:
	add	DWORD PTR -168[rbp], 1
.L13:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	test	al, al
	jne	.L15
	mov	eax, DWORD PTR -164[rbp]
	mov	DWORD PTR -168[rbp], eax
	jmp	.L16
.L20:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 64
	jle	.L17
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 90
	jg	.L17
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	add	eax, 32
	mov	edx, eax
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	mov	BYTE PTR -112[rbp+rax], dl
.L17:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 97
	je	.L18
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 101
	je	.L18
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 105
	je	.L18
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 111
	je	.L18
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	cmp	al, 117
	jne	.L19
.L18:
	mov	eax, DWORD PTR -168[rbp]
	mov	DWORD PTR -164[rbp], eax
.L19:
	add	DWORD PTR -168[rbp], 1
.L16:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	test	al, al
	jne	.L20
	mov	eax, DWORD PTR -164[rbp]
	mov	DWORD PTR -168[rbp], eax
	mov	DWORD PTR -164[rbp], 0
	jmp	.L21
.L22:
	mov	eax, DWORD PTR -164[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -164[rbp], edx
	mov	edx, DWORD PTR -168[rbp]
	movsx	rdx, edx
	movzx	edx, BYTE PTR -112[rbp+rdx]
	movsx	rsi, eax
	mov	eax, DWORD PTR -172[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 4
	sub	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, syllable[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -168[rbp], 1
.L21:
	mov	eax, DWORD PTR -168[rbp]
	cdqe
	movzx	eax, BYTE PTR -112[rbp+rax]
	test	al, al
	jne	.L22
	mov	eax, DWORD PTR -164[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -172[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, syllable[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	add	DWORD PTR -172[rbp], 1
.L12:
	cmp	DWORD PTR -172[rbp], 3
	jle	.L23
	mov	eax, 0
	call	rhyme
	lea	rdx, -160[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rdi, rax
	call	puts@PLT
	add	DWORD PTR -176[rbp], 1
.L11:
	mov	eax, DWORD PTR -180[rbp]
	cmp	DWORD PTR -176[rbp], eax
	jl	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
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
