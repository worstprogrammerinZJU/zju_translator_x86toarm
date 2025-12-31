	.file	"1007.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d %d\n"
.LC1:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4096
	or	QWORD PTR [rsp], 0
	sub	rsp, 1456
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -5520[rbp]
	mov	eax, 0
	mov	ecx, 50
	mov	rdi, rdx
	rep stosq
	lea	rdx, -5540[rbp]
	lea	rax, -5536[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -5532[rbp], 0
	jmp	.L2
.L8:
	lea	rcx, -5120[rbp]
	mov	eax, DWORD PTR -5532[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rcx
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -5528[rbp], 0
	jmp	.L3
.L7:
	mov	eax, DWORD PTR -5528[rbp]
	add	eax, 1
	mov	DWORD PTR -5524[rbp], eax
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -5528[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -5532[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 5120
	movzx	ecx, BYTE PTR [rax]
	mov	eax, DWORD PTR -5524[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -5532[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rbp
	add	rax, rsi
	sub	rax, 5120
	movzx	eax, BYTE PTR [rax]
	cmp	cl, al
	jle	.L5
	mov	eax, DWORD PTR -5532[rbp]
	cdqe
	mov	eax, DWORD PTR -5520[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -5532[rbp]
	cdqe
	mov	DWORD PTR -5520[rbp+rax*4], edx
.L5:
	add	DWORD PTR -5524[rbp], 1
.L4:
	mov	eax, DWORD PTR -5536[rbp]
	cmp	DWORD PTR -5524[rbp], eax
	jl	.L6
	add	DWORD PTR -5528[rbp], 1
.L3:
	mov	eax, DWORD PTR -5536[rbp]
	cmp	DWORD PTR -5528[rbp], eax
	jl	.L7
	add	DWORD PTR -5532[rbp], 1
.L2:
	mov	eax, DWORD PTR -5540[rbp]
	cmp	DWORD PTR -5532[rbp], eax
	jl	.L8
	mov	DWORD PTR -5532[rbp], 0
	jmp	.L9
.L13:
	mov	DWORD PTR -5524[rbp], 0
	mov	DWORD PTR -5528[rbp], 0
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -5524[rbp]
	cdqe
	mov	edx, DWORD PTR -5520[rbp+rax*4]
	mov	eax, DWORD PTR -5528[rbp]
	cdqe
	mov	eax, DWORD PTR -5520[rbp+rax*4]
	cmp	edx, eax
	jle	.L11
	mov	eax, DWORD PTR -5528[rbp]
	mov	DWORD PTR -5524[rbp], eax
.L11:
	add	DWORD PTR -5528[rbp], 1
.L10:
	mov	eax, DWORD PTR -5540[rbp]
	cmp	DWORD PTR -5528[rbp], eax
	jl	.L12
	lea	rcx, -5120[rbp]
	mov	eax, DWORD PTR -5524[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	add	rax, rcx
	mov	rdi, rax
	call	puts@PLT
	mov	eax, DWORD PTR -5524[rbp]
	cdqe
	mov	DWORD PTR -5520[rbp+rax*4], 10000000
	add	DWORD PTR -5532[rbp], 1
.L9:
	mov	eax, DWORD PTR -5540[rbp]
	cmp	DWORD PTR -5532[rbp], eax
	jl	.L13
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
