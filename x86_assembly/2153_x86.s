	.file	"2153.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	LiMing
	.align 4
	.type	LiMing, @object
	.size	LiMing, 4
LiMing:
	.zero	4
	.globl	score
	.align 32
	.type	score, @object
	.size	score, 40000
score:
	.zero	40000
	.globl	hash
	.align 32
	.type	hash, @object
	.size	hash, 40028
hash:
	.zero	40028
	.globl	rank
	.align 4
	.type	rank, @object
	.size	rank, 4
rank:
	.zero	4
	.globl	s
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.globl	student
	.align 32
	.type	student, @object
	.size	student, 360000
student:
	.zero	360000
	.text
	.globl	ELFhash
	.type	ELFhash, @function
ELFhash:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -16[rbp], 0
	jmp	.L2
.L4:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	movsx	rax, al
	add	rax, rcx
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 4026531840
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L3
	mov	rax, QWORD PTR -8[rbp]
	shr	rax, 24
	xor	QWORD PTR -16[rbp], rax
.L3:
	mov	rax, QWORD PTR -8[rbp]
	not	rax
	and	QWORD PTR -16[rbp], rax
.L2:
	mov	rax, QWORD PTR -24[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, -6691484059914626997
	mov	rax, rcx
	mul	rdx
	mov	rax, rcx
	sub	rax, rdx
	shr	rax
	add	rax, rdx
	shr	rax, 13
	imul	rdx, rax, 10007
	mov	rax, rcx
	sub	rax, rdx
	pop	rbp
	ret
	.size	ELFhash, .-ELFhash
	.globl	find
	.type	find, @function
find:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, hash[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -4[rbp], eax
.L7:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret
	.size	find, .-find
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d"
.LC2:
	.string	"%d "
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	edx, 40028
	mov	esi, -1
	lea	rax, hash[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -60[rbp], 0
	jmp	.L11
.L16:
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rax, rdx
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	DWORD PTR [rdx+rax], -1
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	lea	rdx, student[rip]
	add	rax, rdx
	mov	rdi, rax
	call	ELFhash
	mov	DWORD PTR -56[rbp], eax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, hash[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -64[rbp]
	cmp	eax, -1
	jne	.L14
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, hash[rip]
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L13
.L15:
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -64[rbp], eax
.L14:
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rdx, rax
	lea	rax, student[rip+32]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	eax, -1
	jne	.L15
	mov	eax, DWORD PTR -64[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	sal	rax, 2
	mov	rcx, rax
	lea	rdx, student[rip+32]
	mov	eax, DWORD PTR -60[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L13:
	add	DWORD PTR -60[rbp], 1
.L11:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L16
	lea	rax, m[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -60[rbp], 0
	jmp	.L17
.L23:
	mov	DWORD PTR -56[rbp], 0
	jmp	.L18
.L19:
	lea	rax, -64[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	mov	eax, 0
	call	gets@PLT
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	find
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -64[rbp]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -56[rbp], 1
.L18:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L19
	mov	eax, DWORD PTR LiMing[rip]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR s[rip], eax
	mov	DWORD PTR -56[rbp], 0
	mov	DWORD PTR rank[rip], 1
	jmp	.L20
.L22:
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, score[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR s[rip]
	cmp	edx, eax
	jle	.L21
	mov	eax, DWORD PTR rank[rip]
	add	eax, 1
	mov	DWORD PTR rank[rip], eax
.L21:
	add	DWORD PTR -56[rbp], 1
.L20:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -56[rbp], eax
	jl	.L22
	mov	eax, DWORD PTR rank[rip]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -60[rbp], 1
.L17:
	mov	eax, DWORD PTR m[rip]
	cmp	DWORD PTR -60[rbp], eax
	jl	.L23
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
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
