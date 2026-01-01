	.file	"3080.c"
	.intel_syntax noprefix
	.text
	.globl	count
	.bss
	.align 4
	.type	count, @object
	.size	count, 4
count:
	.zero	4
	.globl	s
	.align 32
	.type	s, @object
	.size	s, 1200
s:
	.zero	1200
	.globl	ans
	.align 32
	.type	ans, @object
	.size	ans, 1200
ans:
	.zero	1200
	.globl	goal
	.align 32
	.type	goal, @object
	.size	goal, 80
goal:
	.zero	80
	.text
	.globl	find
	.type	find, @function
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L9:
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, goal[rip]
	movzx	ecx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, [rax+rsi]
	lea	rax, s[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	cl, al
	jne	.L10
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jl	.L6
	jmp	.L5
.L10:
	nop
.L5:
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	cmp	DWORD PTR -8[rbp], eax
	jne	.L7
	mov	eax, 1
	jmp	.L8
.L7:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, 60
	sub	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jle	.L9
	mov	eax, 0
.L8:
	pop	rbp
	ret
	.size	find, .-find
	.globl	copy
	.type	copy, @function
copy:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
.L13:
	mov	ecx, DWORD PTR count[rip]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, goal[rip]
	movzx	edx, BYTE PTR [rax+rdx]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rsi, eax
	movsx	rcx, ecx
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, [rax+rsi]
	lea	rax, ans[rip]
	add	rax, rcx
	mov	BYTE PTR [rax], dl
	add	DWORD PTR -8[rbp], 1
	add	DWORD PTR -4[rbp], 1
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jl	.L13
	mov	eax, DWORD PTR count[rip]
	add	eax, 1
	mov	DWORD PTR count[rip], eax
	nop
	pop	rbp
	ret
	.size	copy, .-copy
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%s"
.LC2:
	.string	"no significant commonalities"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -120[rbp], 0
	jmp	.L15
.L35:
	mov	edx, 1200
	mov	esi, 0
	lea	rax, ans[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -124[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, goal[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -104[rbp], 0
	mov	DWORD PTR -116[rbp], 0
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, s[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -116[rbp], 1
.L16:
	mov	eax, DWORD PTR -124[rbp]
	sub	eax, 1
	cmp	DWORD PTR -116[rbp], eax
	jl	.L17
	mov	DWORD PTR -108[rbp], 60
	jmp	.L18
.L33:
	mov	DWORD PTR count[rip], 0
	mov	DWORD PTR -116[rbp], 0
	jmp	.L19
.L25:
	mov	DWORD PTR -112[rbp], 0
	jmp	.L20
.L23:
	mov	edx, DWORD PTR -112[rbp]
	mov	ecx, DWORD PTR -108[rbp]
	mov	eax, DWORD PTR -116[rbp]
	mov	esi, ecx
	mov	edi, eax
	call	find
	mov	DWORD PTR -100[rbp], eax
	cmp	DWORD PTR -100[rbp], 0
	je	.L38
	add	DWORD PTR -112[rbp], 1
.L20:
	mov	eax, DWORD PTR -124[rbp]
	sub	eax, 1
	cmp	DWORD PTR -112[rbp], eax
	jl	.L23
	jmp	.L22
.L38:
	nop
.L22:
	mov	eax, DWORD PTR -124[rbp]
	sub	eax, 1
	cmp	DWORD PTR -112[rbp], eax
	jne	.L24
	mov	edx, DWORD PTR -108[rbp]
	mov	eax, DWORD PTR -116[rbp]
	mov	esi, edx
	mov	edi, eax
	call	copy
	mov	DWORD PTR -104[rbp], 1
.L24:
	add	DWORD PTR -116[rbp], 1
.L19:
	mov	eax, 60
	sub	eax, DWORD PTR -108[rbp]
	cmp	DWORD PTR -116[rbp], eax
	jle	.L25
	cmp	DWORD PTR -104[rbp], 0
	je	.L26
	mov	DWORD PTR -116[rbp], 0
	jmp	.L27
.L31:
	mov	eax, DWORD PTR -116[rbp]
	add	eax, 1
	mov	DWORD PTR -112[rbp], eax
	jmp	.L28
.L30:
	mov	eax, DWORD PTR -112[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -116[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jle	.L29
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -112[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -116[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	sal	rax, 4
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	mov	eax, DWORD PTR -112[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 4
	lea	rdx, ans[rip]
	add	rdx, rax
	lea	rax, -96[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcpy@PLT
.L29:
	add	DWORD PTR -112[rbp], 1
.L28:
	mov	eax, DWORD PTR count[rip]
	cmp	DWORD PTR -112[rbp], eax
	jl	.L30
	add	DWORD PTR -116[rbp], 1
.L27:
	mov	eax, DWORD PTR count[rip]
	cmp	DWORD PTR -116[rbp], eax
	jl	.L31
	lea	rax, ans[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L32
.L26:
	sub	DWORD PTR -108[rbp], 1
.L18:
	cmp	DWORD PTR -108[rbp], 2
	jg	.L33
.L32:
	cmp	DWORD PTR -104[rbp], 0
	jne	.L34
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
.L34:
	add	DWORD PTR -120[rbp], 1
.L15:
	mov	eax, DWORD PTR -128[rbp]
	cmp	DWORD PTR -120[rbp], eax
	jl	.L35
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
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
