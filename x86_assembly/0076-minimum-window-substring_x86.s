	.file	"0076-minimum-window-substring.c"
	.intel_syntax noprefix
	.text
	.globl	minWindow
	.type	minWindow, @function
minWindow:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 320
	mov	QWORD PTR -312[rbp], rdi
	mov	QWORD PTR -320[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -256[rbp]
	mov	eax, 0
	mov	ecx, 29
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -300[rbp], 0
	mov	DWORD PTR -296[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -296[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -320[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -256[rbp+rax*4]
	test	eax, eax
	jne	.L3
	add	DWORD PTR -300[rbp], 1
.L3:
	mov	eax, DWORD PTR -296[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -320[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -256[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -256[rbp+rax*4], edx
	add	DWORD PTR -296[rbp], 1
.L2:
	mov	eax, DWORD PTR -296[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -320[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L4
	mov	DWORD PTR -292[rbp], 100001
	mov	DWORD PTR -288[rbp], 0
	mov	DWORD PTR -284[rbp], 0
	mov	DWORD PTR -280[rbp], 0
	jmp	.L5
.L10:
	mov	eax, DWORD PTR -280[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -256[rbp+rdx*4]
	add	edx, 1
	cdqe
	mov	DWORD PTR -256[rbp+rax*4], edx
	mov	eax, DWORD PTR -280[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -256[rbp+rax*4]
	test	eax, eax
	jne	.L6
	sub	DWORD PTR -300[rbp], 1
	cmp	DWORD PTR -300[rbp], 0
	jne	.L6
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -284[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -256[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -256[rbp+rax*4], edx
	add	DWORD PTR -284[rbp], 1
.L7:
	mov	eax, DWORD PTR -284[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	cdqe
	mov	eax, DWORD PTR -256[rbp+rax*4]
	test	eax, eax
	jg	.L8
	mov	eax, DWORD PTR -280[rbp]
	sub	eax, DWORD PTR -284[rbp]
	add	eax, 1
	cmp	DWORD PTR -292[rbp], eax
	jle	.L9
	mov	eax, DWORD PTR -284[rbp]
	mov	DWORD PTR -288[rbp], eax
	mov	eax, DWORD PTR -280[rbp]
	sub	eax, DWORD PTR -284[rbp]
	add	eax, 1
	mov	DWORD PTR -292[rbp], eax
.L9:
	mov	eax, DWORD PTR -284[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 65
	movsx	rdx, eax
	mov	edx, DWORD PTR -256[rbp+rdx*4]
	sub	edx, 1
	cdqe
	mov	DWORD PTR -256[rbp+rax*4], edx
	add	DWORD PTR -300[rbp], 1
	add	DWORD PTR -284[rbp], 1
.L6:
	add	DWORD PTR -280[rbp], 1
.L5:
	mov	eax, DWORD PTR -280[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L10
	cmp	DWORD PTR -292[rbp], 100001
	jne	.L11
	mov	edi, 1
	call	malloc@PLT
	mov	QWORD PTR -264[rbp], rax
	mov	rax, QWORD PTR -264[rbp]
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -264[rbp]
	jmp	.L15
.L11:
	mov	eax, DWORD PTR -292[rbp]
	add	eax, 1
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -272[rbp], rax
	mov	DWORD PTR -276[rbp], 0
	jmp	.L13
.L14:
	mov	edx, DWORD PTR -276[rbp]
	mov	eax, DWORD PTR -288[rbp]
	add	eax, edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -312[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR -276[rbp]
	movsx	rcx, edx
	mov	rdx, QWORD PTR -272[rbp]
	add	rdx, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	DWORD PTR -276[rbp], 1
.L13:
	mov	eax, DWORD PTR -276[rbp]
	cmp	eax, DWORD PTR -292[rbp]
	jl	.L14
	mov	eax, DWORD PTR -292[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -272[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
	mov	rax, QWORD PTR -272[rbp]
.L15:
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	ret
	.size	minWindow, .-minWindow
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
