	.file	"2603.c"
	.intel_syntax noprefix
	.text
	.globl	prime
	.data
	.align 32
	.type	prime, @object
	.size	prime, 4916
prime:
	.long	2
	.long	3
	.zero	4908
	.globl	q
	.align 4
	.type	q, @object
	.size	q, 4
q:
	.long	2
	.globl	num
	.bss
	.align 32
	.type	num, @object
	.size	num, 4916
num:
	.zero	4916
	.text
	.globl	add
	.type	add, @function
add:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	esi, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L4
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -20[rbp], 1
	jg	.L3
	nop
	nop
	pop	rbp
	ret
	.size	add, .-add
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -12[rbp], 5
	jmp	.L7
.L13:
	mov	DWORD PTR -16[rbp], 1
	jmp	.L8
.L11:
	mov	eax, DWORD PTR -16[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, prime[rip]
	mov	ecx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	je	.L20
	mov	eax, DWORD PTR -16[rbp]
	add	eax, 1
	mov	DWORD PTR -16[rbp], eax
.L8:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR q[rip]
	cmp	edx, eax
	jl	.L11
	jmp	.L10
.L20:
	nop
.L10:
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR q[rip]
	cmp	edx, eax
	jne	.L12
	mov	eax, DWORD PTR q[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR q[rip], edx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, prime[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L12:
	add	DWORD PTR -12[rbp], 2
.L7:
	cmp	DWORD PTR -12[rbp], 9999
	jle	.L13
	mov	DWORD PTR -12[rbp], 0
	jmp	.L14
.L15:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	edi, eax
	call	add
	add	DWORD PTR -12[rbp], 1
.L14:
	cmp	DWORD PTR -12[rbp], 9
	jle	.L15
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 1
	jmp	.L16
.L17:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, num[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -16[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
.L16:
	cmp	DWORD PTR -12[rbp], 1228
	jle	.L17
	mov	ecx, DWORD PTR -16[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	sub	ecx, eax
	mov	edx, ecx
	mov	esi, edx
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
