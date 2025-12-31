	.file	"2283.c"
	.intel_syntax noprefix
	.text
	.globl	x
	.bss
	.align 32
	.type	x, @object
	.size	x, 524288
x:
	.zero	524288
	.globl	q
	.align 32
	.type	q, @object
	.size	q, 524288
q:
	.zero	524288
	.globl	p
	.align 32
	.type	p, @object
	.size	p, 524288
p:
	.zero	524288
	.text
	.globl	bfs
	.type	bfs, @function
bfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -65536[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 48
	mov	DWORD PTR -65572[rbp], edi
	mov	DWORD PTR -65576[rbp], esi
	mov	DWORD PTR -65580[rbp], edx
	mov	DWORD PTR -65584[rbp], ecx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -65564[rbp], 0
	mov	DWORD PTR -65560[rbp], 1
	mov	DWORD PTR -65556[rbp], 0
	mov	QWORD PTR -65552[rbp], 0
	mov	QWORD PTR -65544[rbp], 0
	lea	rax, -65536[rbp]
	mov	edx, 65520
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR q[rip], 0
	cmp	DWORD PTR -65572[rbp], 0
	jne	.L3
	mov	DWORD PTR -65564[rbp], 2
	mov	eax, DWORD PTR -65576[rbp]
	mov	DWORD PTR q[rip+8], eax
	mov	DWORD PTR -65560[rbp], 3
	mov	BYTE PTR -65552[rbp], 1
	mov	DWORD PTR p[rip+8], 0
	jmp	.L3
.L8:
	mov	eax, DWORD PTR -65564[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	movzx	eax, BYTE PTR -65552[rbp+rax]
	cmp	al, 1
	jne	.L4
	add	DWORD PTR -65564[rbp], 1
	jmp	.L3
.L4:
	mov	eax, DWORD PTR -65564[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	mov	BYTE PTR -65552[rbp+rax], 1
	mov	eax, DWORD PTR -65564[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -65572[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -65580[rbp]
	mov	ecx, edx
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, p[rip]
	mov	eax, DWORD PTR -65564[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L17
	add	DWORD PTR -65560[rbp], 1
	mov	eax, DWORD PTR -65564[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -65576[rbp]
	add	eax, edx
	cdq
	idiv	DWORD PTR -65580[rbp]
	mov	ecx, edx
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	DWORD PTR [rdx+rax], ecx
	mov	eax, DWORD PTR -65564[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -65564[rbp], edx
	mov	edx, DWORD PTR -65560[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, p[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	je	.L18
	add	DWORD PTR -65560[rbp], 1
.L3:
	mov	eax, DWORD PTR -65564[rbp]
	cmp	eax, DWORD PTR -65560[rbp]
	jl	.L8
	jmp	.L6
.L17:
	nop
	jmp	.L6
.L18:
	nop
.L6:
	mov	eax, DWORD PTR -65564[rbp]
	cmp	eax, DWORD PTR -65560[rbp]
	jge	.L9
	mov	DWORD PTR -65556[rbp], 0
	jmp	.L10
.L13:
	mov	eax, DWORD PTR -65560[rbp]
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	cmp	eax, 1
	jne	.L11
	mov	eax, DWORD PTR -65556[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -65584[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rcx, 0[0+rax*4]
	lea	rdx, x[rip]
	mov	eax, DWORD PTR -65572[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	jmp	.L12
.L11:
	mov	eax, DWORD PTR -65556[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -65584[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rcx, 0[0+rax*4]
	lea	rdx, x[rip]
	mov	eax, DWORD PTR -65576[rbp]
	mov	DWORD PTR [rcx+rdx], eax
.L12:
	mov	eax, DWORD PTR -65560[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, p[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	DWORD PTR -65560[rbp], eax
	add	DWORD PTR -65556[rbp], 1
.L10:
	cmp	DWORD PTR -65560[rbp], 0
	jne	.L13
	mov	eax, DWORD PTR -65556[rbp]
	sub	eax, 1
	jmp	.L15
.L9:
	mov	eax, -1
.L15:
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	ret
	.size	bfs, .-bfs
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L20
.L43:
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -48[rbp], eax
	mov	DWORD PTR -72[rbp], 0
	mov	DWORD PTR -68[rbp], 1
	jmp	.L21
.L26:
	mov	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	DWORD PTR -48[rbp+rax*4], 1
	jmp	.L22
.L24:
	mov	ecx, DWORD PTR -76[rbp]
	mov	eax, DWORD PTR -64[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR -68[rbp]
	add	eax, edx
	mov	DWORD PTR -64[rbp], eax
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	DWORD PTR -48[rbp+rax*4], edx
.L22:
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	mov	eax, DWORD PTR -76[rbp]
	cmp	edx, eax
	jge	.L23
	mov	ecx, DWORD PTR -76[rbp]
	mov	eax, DWORD PTR -64[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	test	eax, eax
	jne	.L24
.L23:
	mov	eax, DWORD PTR -68[rbp]
	cdqe
	mov	edx, DWORD PTR -48[rbp+rax*4]
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	cmp	edx, eax
	jge	.L25
	mov	eax, DWORD PTR -68[rbp]
	mov	DWORD PTR -72[rbp], eax
.L25:
	add	DWORD PTR -68[rbp], 1
.L21:
	cmp	DWORD PTR -68[rbp], 9
	jle	.L26
	cmp	DWORD PTR -72[rbp], 0
	je	.L27
	mov	eax, DWORD PTR -72[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	DWORD PTR -64[rbp], eax
	jmp	.L28
.L29:
	mov	eax, DWORD PTR -72[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -64[rbp], 1
.L28:
	cmp	DWORD PTR -64[rbp], 0
	jg	.L29
	jmp	.L30
.L27:
	mov	eax, DWORD PTR -76[rbp]
	mov	DWORD PTR -56[rbp], eax
	mov	DWORD PTR -52[rbp], 0
	mov	DWORD PTR -68[rbp], 0
	jmp	.L31
.L40:
	mov	eax, DWORD PTR -68[rbp]
	add	eax, 1
	mov	DWORD PTR -64[rbp], eax
	jmp	.L32
.L39:
	mov	edx, DWORD PTR -76[rbp]
	mov	ecx, DWORD PTR -52[rbp]
	mov	esi, DWORD PTR -64[rbp]
	mov	eax, DWORD PTR -68[rbp]
	mov	edi, eax
	call	bfs
	mov	DWORD PTR -72[rbp], eax
	cmp	DWORD PTR -72[rbp], -1
	je	.L33
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jge	.L33
	mov	eax, 1
	sub	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -52[rbp], eax
	mov	eax, DWORD PTR -72[rbp]
	mov	DWORD PTR -56[rbp], eax
	jmp	.L34
.L33:
	mov	eax, DWORD PTR -72[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jne	.L34
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR -60[rbp], eax
	jmp	.L35
.L38:
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, 1
	sub	eax, DWORD PTR -52[rbp]
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	cdqe
	sal	rax, 16
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jge	.L36
	mov	eax, 1
	sub	eax, DWORD PTR -52[rbp]
	mov	DWORD PTR -52[rbp], eax
	jmp	.L34
.L36:
	mov	eax, DWORD PTR -60[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, 1
	sub	eax, DWORD PTR -52[rbp]
	mov	ecx, DWORD PTR -60[rbp]
	movsx	rcx, ecx
	cdqe
	sal	rax, 16
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rcx+rax]
	cmp	edx, eax
	jg	.L46
	sub	DWORD PTR -60[rbp], 1
.L35:
	cmp	DWORD PTR -60[rbp], 0
	jns	.L38
	jmp	.L34
.L46:
	nop
.L34:
	add	DWORD PTR -64[rbp], 1
.L32:
	cmp	DWORD PTR -64[rbp], 9
	jle	.L39
	add	DWORD PTR -68[rbp], 1
.L31:
	cmp	DWORD PTR -68[rbp], 9
	jle	.L40
	mov	eax, DWORD PTR -56[rbp]
	mov	DWORD PTR -68[rbp], eax
	jmp	.L41
.L42:
	mov	eax, 1
	sub	eax, DWORD PTR -52[rbp]
	mov	edx, DWORD PTR -68[rbp]
	movsx	rdx, edx
	cdqe
	sal	rax, 16
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	lea	rax, x[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	sub	DWORD PTR -68[rbp], 1
.L41:
	cmp	DWORD PTR -68[rbp], 0
	jns	.L42
.L30:
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -76[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L20:
	mov	eax, DWORD PTR -76[rbp]
	test	eax, eax
	jne	.L43
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
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
