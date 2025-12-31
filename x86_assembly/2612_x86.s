	.file	"2612.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	f
	.align 32
	.type	f, @object
	.size	f, 144
f:
	.zero	144
	.text
	.globl	add
	.type	add, @function
add:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rcx, edx
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, -1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, -1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -8[rbp]
	lea	edx, 1[rax]
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	movsx	rsi, edx
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, -1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rcx, edx
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	lea	rcx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rsi]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], cl
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]
	lea	ecx, 1[rax]
	movsx	rdi, ecx
	movsx	rsi, edx
	mov	rax, rsi
	add	rax, rax
	add	rax, rsi
	sal	rax, 2
	lea	rsi, [rax+rdi]
	lea	rax, f[rip]
	add	rax, rsi
	movzx	eax, BYTE PTR [rax]
	add	eax, 1
	mov	esi, eax
	movsx	rcx, ecx
	movsx	rdx, edx
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], sil
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	mov	BYTE PTR [rax], 9
	nop
	pop	rbp
	ret
	.size	add, .-add
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -148[rbp], 0
	lea	rdx, -144[rbp]
	mov	eax, 0
	mov	ecx, 15
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	BYTE PTR [rdx], al
	add	rdx, 1
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -156[rbp], 1
	jmp	.L3
.L7:
	mov	DWORD PTR -152[rbp], 1
	jmp	.L4
.L6:
	call	getchar@PLT
	cmp	eax, 42
	jne	.L5
	mov	edx, DWORD PTR -152[rbp]
	mov	eax, DWORD PTR -156[rbp]
	mov	esi, edx
	mov	edi, eax
	call	add
.L5:
	add	DWORD PTR -152[rbp], 1
.L4:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -152[rbp], eax
	jle	.L6
	call	getchar@PLT
	add	DWORD PTR -156[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -156[rbp], eax
	jle	.L7
	mov	DWORD PTR -156[rbp], 1
	jmp	.L8
.L12:
	mov	DWORD PTR -152[rbp], 1
	jmp	.L9
.L11:
	call	getchar@PLT
	cmp	eax, 120
	jne	.L10
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 144
	mov	BYTE PTR [rax], 1
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 8
	jle	.L10
	mov	DWORD PTR -148[rbp], 1
.L10:
	add	DWORD PTR -152[rbp], 1
.L9:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -152[rbp], eax
	jle	.L11
	call	getchar@PLT
	add	DWORD PTR -156[rbp], 1
.L8:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -156[rbp], eax
	jle	.L12
	mov	DWORD PTR -156[rbp], 1
	jmp	.L13
.L19:
	mov	DWORD PTR -152[rbp], 1
	jmp	.L14
.L18:
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	cmp	al, 8
	jle	.L15
	cmp	DWORD PTR -148[rbp], 1
	jne	.L15
	mov	edi, 42
	call	putchar@PLT
	jmp	.L16
.L15:
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rbp
	add	rax, rcx
	sub	rax, 144
	movzx	eax, BYTE PTR [rax]
	cmp	al, 1
	jne	.L17
	mov	eax, DWORD PTR -152[rbp]
	movsx	rcx, eax
	mov	eax, DWORD PTR -156[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+rcx]
	lea	rax, f[rip]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	add	eax, 48
	mov	edi, eax
	call	putchar@PLT
	jmp	.L16
.L17:
	mov	edi, 46
	call	putchar@PLT
.L16:
	add	DWORD PTR -152[rbp], 1
.L14:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -152[rbp], eax
	jle	.L18
	mov	edi, 10
	call	putchar@PLT
	add	DWORD PTR -156[rbp], 1
.L13:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -156[rbp], eax
	jle	.L19
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
