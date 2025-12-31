	.file	"1149.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	p
	.align 32
	.type	p, @object
	.size	p, 41616
p:
	.zero	41616
	.globl	r
	.align 32
	.type	r, @object
	.size	r, 41616
r:
	.zero	41616
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4064
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -2016[rbp]
	mov	eax, 0
	mov	ecx, 250
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	WORD PTR [rdx], ax
	add	rdx, 2
	lea	rax, -4052[rbp]
	lea	rdx, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	add	eax, 1
	mov	DWORD PTR n[rip], eax
	mov	DWORD PTR -4040[rbp], 1
	jmp	.L2
.L3:
	lea	rdx, -4032[rbp]
	mov	eax, DWORD PTR -4040[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4040[rbp], 1
.L2:
	mov	eax, DWORD PTR -4052[rbp]
	cmp	DWORD PTR -4040[rbp], eax
	jle	.L3
	mov	DWORD PTR -4040[rbp], 1
	jmp	.L4
.L9:
	lea	rax, -4048[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4036[rbp], 0
	jmp	.L5
.L8:
	lea	rax, -4044[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4044[rbp]
	cdqe
	movzx	eax, WORD PTR -2016[rbp+rax*2]
	test	ax, ax
	jne	.L6
	mov	eax, DWORD PTR -4040[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -4044[rbp]
	cdqe
	movzx	eax, WORD PTR -4032[rbp+rax*2]
	cwde
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -4040[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], ecx
	jmp	.L7
.L6:
	mov	eax, DWORD PTR -4044[rbp]
	cdqe
	movzx	eax, WORD PTR -2016[rbp+rax*2]
	cwde
	mov	edx, DWORD PTR -4040[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	DWORD PTR [rdx+rax], 10000
.L7:
	mov	eax, DWORD PTR -4044[rbp]
	mov	edx, DWORD PTR -4040[rbp]
	cdqe
	mov	WORD PTR -2016[rbp+rax*2], dx
	add	DWORD PTR -4036[rbp], 1
.L5:
	mov	eax, DWORD PTR -4048[rbp]
	cmp	DWORD PTR -4036[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	eax, DWORD PTR -4040[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -4040[rbp], 1
.L4:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -4040[rbp], eax
	jl	.L9
	mov	eax, 0
	call	bfsnetworkflow
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	ret
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	"%d\n"
	.text
	.globl	bfsnetworkflow
	.type	bfsnetworkflow, @function
bfsnetworkflow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 1280
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -832[rbp], 10000
.L25:
	mov	DWORD PTR -1276[rbp], 0
	jmp	.L13
.L14:
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	mov	DWORD PTR -1248[rbp+rax*4], -2
	add	DWORD PTR -1276[rbp], 1
.L13:
	cmp	DWORD PTR -1276[rbp], 101
	jle	.L14
	mov	DWORD PTR -1248[rbp], -1
	mov	DWORD PTR -1268[rbp], 0
	mov	DWORD PTR -1264[rbp], 1
	mov	eax, DWORD PTR -1268[rbp]
	cdqe
	mov	DWORD PTR -416[rbp+rax*4], 0
	jmp	.L15
.L20:
	mov	eax, DWORD PTR -1268[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -1268[rbp], edx
	cdqe
	mov	eax, DWORD PTR -416[rbp+rax*4]
	mov	DWORD PTR -1256[rbp], eax
	mov	DWORD PTR -1276[rbp], 0
	jmp	.L16
.L18:
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	mov	eax, DWORD PTR -1248[rbp+rax*4]
	cmp	eax, -2
	jne	.L17
	mov	eax, DWORD PTR -1276[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1256[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -1276[rbp]
	movsx	rcx, edx
	mov	edx, DWORD PTR -1256[rbp]
	movsx	rdx, edx
	imul	rdx, rdx, 102
	add	rdx, rcx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, r[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	sub	eax, edx
	mov	DWORD PTR -1252[rbp], eax
	cmp	DWORD PTR -1252[rbp], 0
	je	.L17
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	mov	edx, DWORD PTR -1256[rbp]
	mov	DWORD PTR -1248[rbp+rax*4], edx
	mov	eax, DWORD PTR -1264[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -1264[rbp], edx
	cdqe
	mov	edx, DWORD PTR -1276[rbp]
	mov	DWORD PTR -416[rbp+rax*4], edx
	mov	eax, DWORD PTR -1256[rbp]
	cdqe
	mov	edx, DWORD PTR -832[rbp+rax*4]
	mov	eax, DWORD PTR -1252[rbp]
	cmp	edx, eax
	cmovg	edx, eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	mov	DWORD PTR -832[rbp+rax*4], edx
.L17:
	add	DWORD PTR -1276[rbp], 1
.L16:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -1276[rbp], eax
	jle	.L18
.L15:
	mov	eax, DWORD PTR -1268[rbp]
	cmp	eax, DWORD PTR -1264[rbp]
	jge	.L19
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -1248[rbp+rax*4]
	cmp	eax, -2
	je	.L20
.L19:
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -1248[rbp+rax*4]
	cmp	eax, -2
	je	.L30
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -1248[rbp+rax*4]
	mov	DWORD PTR -1276[rbp], eax
	mov	eax, DWORD PTR n[rip]
	mov	DWORD PTR -1272[rbp], eax
	jmp	.L23
.L24:
	mov	eax, DWORD PTR -1272[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	eax, DWORD PTR -832[rbp+rax*4]
	lea	ecx, [rdx+rax]
	mov	eax, DWORD PTR -1272[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -1272[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	neg	eax
	mov	ecx, eax
	mov	eax, DWORD PTR -1276[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1272[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -1276[rbp]
	mov	DWORD PTR -1272[rbp], eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	mov	eax, DWORD PTR -1248[rbp+rax*4]
	mov	DWORD PTR -1276[rbp], eax
.L23:
	cmp	DWORD PTR -1276[rbp], -1
	jne	.L24
	jmp	.L25
.L30:
	nop
	mov	DWORD PTR -1276[rbp], 0
	mov	DWORD PTR -1260[rbp], 0
	jmp	.L26
.L27:
	mov	eax, DWORD PTR n[rip]
	movsx	rdx, eax
	mov	eax, DWORD PTR -1276[rbp]
	cdqe
	imul	rax, rax, 102
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, r[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -1260[rbp], eax
	add	DWORD PTR -1276[rbp], 1
.L26:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -1276[rbp], eax
	jl	.L27
	mov	eax, DWORD PTR -1260[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	ret
	.size	bfsnetworkflow, .-bfsnetworkflow
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
