	.file	"2479.c"
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
	lea	r11, -499712[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 336
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -500044[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -500036[rbp], 0
	jmp	.L2
.L19:
	mov	DWORD PTR -500024[rbp], -10001
	lea	rax, -500048[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -500040[rbp], 0
	jmp	.L3
.L6:
	lea	rdx, -500016[rbp]
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	add	rax, rax
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	cmp	DWORD PTR -500024[rbp], eax
	jge	.L4
	mov	eax, DWORD PTR -500024[rbp]
	mov	DWORD PTR -500020[rbp], eax
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	mov	DWORD PTR -500024[rbp], eax
	jmp	.L5
.L4:
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	cmp	DWORD PTR -500020[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	mov	DWORD PTR -500020[rbp], eax
.L5:
	add	DWORD PTR -500040[rbp], 1
.L3:
	mov	eax, DWORD PTR -500048[rbp]
	cmp	DWORD PTR -500040[rbp], eax
	jl	.L6
	mov	DWORD PTR -500028[rbp], -10001
	mov	DWORD PTR -500032[rbp], 0
	mov	DWORD PTR -500040[rbp], 0
	jmp	.L7
.L10:
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	add	DWORD PTR -500032[rbp], eax
	mov	eax, DWORD PTR -500032[rbp]
	cmp	eax, DWORD PTR -500028[rbp]
	jle	.L8
	mov	eax, DWORD PTR -500032[rbp]
	mov	DWORD PTR -500028[rbp], eax
.L8:
	cmp	DWORD PTR -500032[rbp], 0
	jns	.L9
	mov	DWORD PTR -500032[rbp], 0
.L9:
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	mov	edx, DWORD PTR -500028[rbp]
	mov	DWORD PTR -400016[rbp+rax*4], edx
	add	DWORD PTR -500040[rbp], 1
.L7:
	mov	eax, DWORD PTR -500048[rbp]
	cmp	DWORD PTR -500040[rbp], eax
	jl	.L10
	mov	DWORD PTR -500028[rbp], -10001
	mov	DWORD PTR -500032[rbp], 0
	mov	eax, DWORD PTR -500048[rbp]
	sub	eax, 1
	cdqe
	mov	DWORD PTR -200016[rbp+rax*4], 0
	mov	eax, DWORD PTR -500048[rbp]
	sub	eax, 1
	mov	DWORD PTR -500040[rbp], eax
	jmp	.L11
.L14:
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	movzx	eax, WORD PTR -500016[rbp+rax*2]
	cwde
	add	DWORD PTR -500032[rbp], eax
	mov	eax, DWORD PTR -500032[rbp]
	cmp	eax, DWORD PTR -500028[rbp]
	jle	.L12
	mov	eax, DWORD PTR -500032[rbp]
	mov	DWORD PTR -500028[rbp], eax
.L12:
	cmp	DWORD PTR -500032[rbp], 0
	jns	.L13
	mov	DWORD PTR -500032[rbp], 0
.L13:
	mov	eax, DWORD PTR -500040[rbp]
	sub	eax, 1
	cdqe
	mov	edx, DWORD PTR -500028[rbp]
	mov	DWORD PTR -200016[rbp+rax*4], edx
	sub	DWORD PTR -500040[rbp], 1
.L11:
	cmp	DWORD PTR -500040[rbp], 0
	jg	.L14
	mov	DWORD PTR -500028[rbp], -10001
	mov	DWORD PTR -500040[rbp], 0
	jmp	.L15
.L17:
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	mov	edx, DWORD PTR -400016[rbp+rax*4]
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	mov	eax, DWORD PTR -200016[rbp+rax*4]
	add	eax, edx
	cmp	DWORD PTR -500028[rbp], eax
	jge	.L16
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	mov	edx, DWORD PTR -400016[rbp+rax*4]
	mov	eax, DWORD PTR -500040[rbp]
	cdqe
	mov	eax, DWORD PTR -200016[rbp+rax*4]
	add	eax, edx
	mov	DWORD PTR -500028[rbp], eax
.L16:
	add	DWORD PTR -500040[rbp], 1
.L15:
	mov	eax, DWORD PTR -500048[rbp]
	cmp	DWORD PTR -500040[rbp], eax
	jl	.L17
	mov	eax, DWORD PTR -500028[rbp]
	cmp	eax, DWORD PTR -500024[rbp]
	jne	.L18
	mov	eax, DWORD PTR -500020[rbp]
	add	DWORD PTR -500028[rbp], eax
.L18:
	mov	eax, DWORD PTR -500028[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -500036[rbp], 1
.L2:
	mov	eax, DWORD PTR -500044[rbp]
	cmp	DWORD PTR -500036[rbp], eax
	jl	.L19
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
