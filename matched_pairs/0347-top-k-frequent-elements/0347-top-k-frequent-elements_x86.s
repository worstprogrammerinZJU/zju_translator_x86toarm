	.file	"0347-top-k-frequent-elements.c"
	.intel_syntax noprefix
	.text
	.type	compareHeap, @function
compareHeap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	ecx, DWORD PTR 4[rax]
	mov	eax, edx
	sub	eax, ecx
	pop	rbp
	ret
	.size	compareHeap, .-compareHeap
	.globl	topKFrequent
	.type	topKFrequent, @function
topKFrequent:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -77824[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2256
	mov	QWORD PTR -80056[rbp], rdi
	mov	DWORD PTR -80060[rbp], esi
	mov	DWORD PTR -80064[rbp], edx
	mov	QWORD PTR -80072[rbp], rcx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -80016[rbp]
	mov	edx, 80004
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -80036[rbp], 0
	mov	DWORD PTR -80040[rbp], 0
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -80040[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80056[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	eax, 10000
	movsx	rdx, eax
	mov	edx, DWORD PTR -80016[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -80016[rbp+rax*4], edx
	mov	eax, DWORD PTR -80040[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80056[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	eax, 10000
	cdqe
	mov	eax, DWORD PTR -80016[rbp+rax*4]
	test	eax, eax
	je	.L5
	add	DWORD PTR -80036[rbp], 1
.L5:
	add	DWORD PTR -80040[rbp], 1
.L4:
	mov	eax, DWORD PTR -80040[rbp]
	cmp	eax, DWORD PTR -80060[rbp]
	jl	.L6
	mov	eax, DWORD PTR -80036[rbp]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -80032[rbp], rax
	mov	eax, DWORD PTR -80036[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80032[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	DWORD PTR -80036[rbp], 0
	mov	DWORD PTR -80040[rbp], 0
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -80040[rbp]
	cdqe
	mov	eax, DWORD PTR -80016[rbp+rax*4]
	test	eax, eax
	jle	.L8
	mov	eax, DWORD PTR -80036[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80032[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -80040[rbp]
	sub	edx, 10000
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR -80036[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80032[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -80040[rbp]
	cdqe
	mov	eax, DWORD PTR -80016[rbp+rax*4]
	mov	DWORD PTR 4[rdx], eax
	add	DWORD PTR -80036[rbp], 1
.L8:
	add	DWORD PTR -80040[rbp], 1
.L7:
	cmp	DWORD PTR -80040[rbp], 20000
	jle	.L9
	mov	esi, DWORD PTR -80036[rbp]
	mov	rax, QWORD PTR -80032[rbp]
	lea	rdx, compareHeap[rip]
	mov	rcx, rdx
	mov	edx, 8
	mov	rdi, rax
	mov	eax, 0
	call	qsort@PLT
	mov	DWORD PTR -80036[rbp], 0
	mov	eax, DWORD PTR -80064[rbp]
	cdqe
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -80024[rbp], rax
	mov	DWORD PTR -80040[rbp], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR -80040[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -80032[rbp]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR -80036[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -80036[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -80024[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR [rcx]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR -80040[rbp], 1
.L10:
	mov	eax, DWORD PTR -80040[rbp]
	cmp	eax, DWORD PTR -80064[rbp]
	jl	.L11
	mov	rax, QWORD PTR -80072[rbp]
	mov	edx, DWORD PTR -80036[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -80024[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	ret
	.size	topKFrequent, .-topKFrequent
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
