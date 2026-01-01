	.file	"3083.c"
	.intel_syntax noprefix
	.text
	.globl	w
	.bss
	.align 4
	.type	w, @object
	.size	w, 4
w:
	.zero	4
	.globl	h
	.align 4
	.type	h, @object
	.size	h, 4
h:
	.zero	4
	.globl	map
	.align 32
	.type	map, @object
	.size	map, 1600
map:
	.zero	1600
	.globl	path
	.data
	.align 32
	.type	path, @object
	.size	path, 32
path:
	.long	0
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	bfs
	.type	bfs, @function
bfs:
	endbr64
	push	rbp
	mov	rbp, rsp
	lea	r11, -16384[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2864
	mov	DWORD PTR -19236[rbp], edi
	mov	DWORD PTR -19240[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -12816[rbp]
	mov	edx, 12800
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	mov	eax, DWORD PTR -19236[rbp]
	mov	DWORD PTR -12816[rbp], eax
	mov	eax, DWORD PTR -19240[rbp]
	mov	DWORD PTR -12812[rbp], eax
	mov	DWORD PTR -19232[rbp], 0
	mov	DWORD PTR -19228[rbp], 1
	lea	rdx, -19216[rbp]
	mov	eax, 0
	mov	ecx, 800
	mov	rdi, rdx
	rep stosq
	mov	eax, DWORD PTR -19240[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19236[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	DWORD PTR -19216[rbp+rax*4], 1
	jmp	.L2
.L11:
	mov	eax, DWORD PTR -19232[rbp]
	cdqe
	mov	eax, DWORD PTR -12816[rbp+rax*8]
	mov	DWORD PTR -19224[rbp], eax
	mov	eax, DWORD PTR -19232[rbp]
	cdqe
	mov	eax, DWORD PTR -12812[rbp+rax*8]
	mov	DWORD PTR -19220[rbp], eax
	cmp	DWORD PTR -19224[rbp], 0
	jle	.L3
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L3
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L4
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L3
.L4:
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	edx, DWORD PTR -19220[rbp]
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -19224[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -19228[rbp], 1
.L3:
	mov	eax, DWORD PTR h[rip]
	sub	eax, 1
	cmp	DWORD PTR -19224[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L5
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L6
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L5
.L6:
	mov	eax, DWORD PTR -19224[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	edx, DWORD PTR -19220[rbp]
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -19224[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -19228[rbp], 1
.L5:
	cmp	DWORD PTR -19220[rbp], 0
	jle	.L7
	mov	eax, DWORD PTR -19220[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L7
	mov	eax, DWORD PTR -19220[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L8
	mov	eax, DWORD PTR -19220[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L7
.L8:
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	edx, DWORD PTR -19224[rbp]
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -19220[rbp]
	sub	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -19228[rbp], 1
.L7:
	mov	eax, DWORD PTR w[rip]
	sub	eax, 1
	cmp	DWORD PTR -19220[rbp], eax
	jge	.L9
	mov	eax, DWORD PTR -19220[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	je	.L9
	mov	eax, DWORD PTR -19220[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	test	eax, eax
	je	.L10
	mov	eax, DWORD PTR -19220[rbp]
	add	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	ecx, DWORD PTR -19216[rbp+rax*4]
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	add	eax, 1
	cmp	ecx, eax
	jle	.L9
.L10:
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	edx, DWORD PTR -19224[rbp]
	mov	DWORD PTR -12816[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -19228[rbp]
	cdqe
	mov	DWORD PTR -12812[rbp+rax*8], edx
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	edx, DWORD PTR -19220[rbp]
	add	edx, 1
	lea	ecx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rsi
	mov	DWORD PTR -19216[rbp+rax*4], ecx
	add	DWORD PTR -19228[rbp], 1
.L9:
	add	DWORD PTR -19232[rbp], 1
.L2:
	mov	eax, DWORD PTR -19232[rbp]
	cmp	eax, DWORD PTR -19228[rbp]
	jl	.L11
	mov	DWORD PTR -19224[rbp], 0
	jmp	.L12
.L19:
	mov	DWORD PTR -19220[rbp], 0
	jmp	.L13
.L16:
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	je	.L21
	add	DWORD PTR -19220[rbp], 1
.L13:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -19220[rbp], eax
	jl	.L16
	jmp	.L15
.L21:
	nop
.L15:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -19220[rbp], eax
	jl	.L22
	add	DWORD PTR -19224[rbp], 1
.L12:
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -19224[rbp], eax
	jl	.L19
	jmp	.L18
.L22:
	nop
.L18:
	mov	eax, DWORD PTR -19220[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -19224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	mov	eax, DWORD PTR -19216[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	ret
	.size	bfs, .-bfs
	.globl	ok
	.type	ok, @function
ok:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 0
	js	.L24
	cmp	DWORD PTR -8[rbp], 0
	js	.L24
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -4[rbp], eax
	jge	.L24
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L25
.L24:
	mov	eax, 0
	jmp	.L26
.L25:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	jne	.L27
	mov	eax, 0
	jmp	.L26
.L27:
	mov	eax, 1
.L26:
	pop	rbp
	ret
	.size	ok, .-ok
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	left
	.type	left, @function
left:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L29
.L31:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
.L30:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ok
	test	eax, eax
	je	.L30
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L29:
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	jne	.L31
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
	.size	left, .-left
	.globl	right
	.type	right, @function
right:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	DWORD PTR -40[rbp], esi
	mov	DWORD PTR -16[rbp], 1
	mov	DWORD PTR -12[rbp], 1
	jmp	.L33
.L35:
	mov	eax, DWORD PTR -12[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
.L34:
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -36[rbp]
	add	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*8]
	lea	rax, path[rip+4]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	add	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 3
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	ok
	test	eax, eax
	je	.L34
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -40[rbp], eax
	mov	eax, DWORD PTR -20[rbp]
	add	eax, 1
	cdq
	shr	edx, 30
	add	eax, edx
	and	eax, 3
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -16[rbp], 1
.L33:
	mov	eax, DWORD PTR -40[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -36[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 69
	jne	.L35
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
	.size	right, .-right
	.section	.rodata
.LC2:
	.string	"%d"
.LC3:
	.string	"%d%d"
.LC4:
	.string	"%s"
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
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -20[rbp], 0
	jmp	.L37
.L48:
	lea	rax, h[rip]
	mov	rdx, rax
	lea	rax, w[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -16[rbp], 0
	jmp	.L38
.L39:
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, map[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -16[rbp], 1
.L38:
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L39
	mov	DWORD PTR -16[rbp], 0
	jmp	.L40
.L47:
	mov	DWORD PTR -12[rbp], 0
	jmp	.L41
.L44:
	mov	eax, DWORD PTR -12[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -16[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rax+rcx]
	lea	rax, map[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 83
	je	.L51
	add	DWORD PTR -12[rbp], 1
.L41:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L44
	jmp	.L43
.L51:
	nop
.L43:
	mov	eax, DWORD PTR w[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L52
	add	DWORD PTR -16[rbp], 1
.L40:
	mov	eax, DWORD PTR h[rip]
	cmp	DWORD PTR -16[rbp], eax
	jl	.L47
	jmp	.L46
.L52:
	nop
.L46:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	left
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	right
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -16[rbp]
	mov	esi, edx
	mov	edi, eax
	call	bfs
	add	DWORD PTR -20[rbp], 1
.L37:
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -20[rbp], eax
	jl	.L48
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
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
