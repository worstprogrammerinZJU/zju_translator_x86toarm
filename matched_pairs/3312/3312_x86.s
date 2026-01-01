	.file	"3312.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	k
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.zero	4
	.globl	len
	.align 32
	.type	len, @object
	.size	len, 4000
len:
	.zero	4000
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jge	.L2
	mov	eax, -1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L4
	mov	eax, 1
	jmp	.L3
.L4:
	mov	eax, 0
.L3:
	pop	rbp
	ret
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"Case %d: "
.LC2:
	.string	"no\n"
.LC3:
	.string	"yes\n"
.LC4:
	.string	"%d%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 240
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -228[rbp], 1
	jmp	.L6
.L22:
	mov	DWORD PTR -224[rbp], 0
	jmp	.L7
.L8:
	lea	rax, -208[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -208[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	ecx, eax
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -224[rbp], 1
.L7:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -224[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, len[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR n[rip]
	mov	esi, DWORD PTR k[rip]
	cdq
	idiv	esi
	mov	DWORD PTR -212[rbp], eax
	mov	eax, DWORD PTR -228[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -228[rbp], edx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -224[rbp], 0
	jmp	.L9
.L17:
	mov	DWORD PTR -220[rbp], 0
	mov	DWORD PTR -216[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -224[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -220[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -216[rbp], eax
	add	DWORD PTR -220[rbp], 1
.L10:
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -220[rbp], eax
	jl	.L11
	mov	ecx, DWORD PTR k[rip]
	mov	eax, DWORD PTR -216[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -216[rbp], eax
	mov	DWORD PTR -220[rbp], 0
	jmp	.L12
.L14:
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -224[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -220[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -216[rbp]
	add	edx, 2
	cmp	eax, edx
	jg	.L13
	mov	eax, DWORD PTR -216[rbp]
	lea	ecx, -2[rax]
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -224[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -220[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jg	.L13
	add	DWORD PTR -220[rbp], 1
.L12:
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -220[rbp], eax
	jl	.L14
.L13:
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -220[rbp], eax
	jl	.L25
	add	DWORD PTR -224[rbp], 1
.L9:
	mov	eax, DWORD PTR -224[rbp]
	cmp	eax, DWORD PTR -212[rbp]
	jl	.L17
	jmp	.L16
.L25:
	nop
.L16:
	mov	eax, DWORD PTR -224[rbp]
	cmp	eax, DWORD PTR -212[rbp]
	jge	.L18
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	jmp	.L6
.L18:
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
.L6:
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR k[rip]
	test	eax, eax
	je	.L20
.L19:
	mov	eax, 1
	jmp	.L21
.L20:
	mov	eax, 0
.L21:
	test	eax, eax
	jne	.L22
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
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
