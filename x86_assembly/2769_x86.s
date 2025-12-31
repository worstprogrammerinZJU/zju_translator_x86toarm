	.file	"2769.c"
	.intel_syntax noprefix
	.text
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
	lea	r11, -40960[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 288
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	QWORD PTR -40016[rbp], 0
	mov	QWORD PTR -40008[rbp], 0
	lea	rax, -40000[rbp]
	mov	edx, 39984
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	lea	rax, -41236[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -41224[rbp], 0
	jmp	.L2
.L12:
	lea	rax, -41240[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -41228[rbp], 0
	jmp	.L3
.L4:
	lea	rdx, -41216[rbp]
	mov	eax, DWORD PTR -41228[rbp]
	cdqe
	sal	rax, 2
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -41228[rbp], 1
.L3:
	mov	eax, DWORD PTR -41240[rbp]
	cmp	DWORD PTR -41228[rbp], eax
	jl	.L4
	mov	eax, DWORD PTR -41240[rbp]
	mov	DWORD PTR -41232[rbp], eax
.L11:
	mov	DWORD PTR -41228[rbp], 0
	jmp	.L5
.L8:
	mov	eax, DWORD PTR -41228[rbp]
	cdqe
	mov	eax, DWORD PTR -41216[rbp+rax*4]
	cdq
	idiv	DWORD PTR -41232[rbp]
	mov	DWORD PTR -41220[rbp], edx
	mov	eax, DWORD PTR -41220[rbp]
	cdqe
	movzx	eax, BYTE PTR -40016[rbp+rax]
	cmp	al, 1
	je	.L16
	mov	eax, DWORD PTR -41220[rbp]
	cdqe
	mov	BYTE PTR -40016[rbp+rax], 1
	add	DWORD PTR -41228[rbp], 1
.L5:
	mov	eax, DWORD PTR -41240[rbp]
	cmp	DWORD PTR -41228[rbp], eax
	jl	.L8
	jmp	.L7
.L16:
	nop
.L7:
	mov	eax, DWORD PTR -41240[rbp]
	cmp	DWORD PTR -41228[rbp], eax
	jne	.L9
	mov	eax, DWORD PTR -41232[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L15
.L9:
	mov	eax, DWORD PTR -41232[rbp]
	movsx	rdx, eax
	lea	rax, -40016[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -41232[rbp], 1
	jmp	.L11
.L15:
	mov	eax, DWORD PTR -41232[rbp]
	movsx	rdx, eax
	lea	rax, -40016[rbp]
	mov	esi, 0
	mov	rdi, rax
	call	memset@PLT
	add	DWORD PTR -41224[rbp], 1
.L2:
	mov	eax, DWORD PTR -41236[rbp]
	cmp	DWORD PTR -41224[rbp], eax
	jl	.L12
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
