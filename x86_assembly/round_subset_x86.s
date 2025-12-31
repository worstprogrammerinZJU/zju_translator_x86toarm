	.file	"round_subset.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.globl	dadsadasda
	.bss
	.align 4
	.type	dadsadasda, @object
	.size	dadsadasda, 4
dadsadasda:
	.zero	4
	.section	.rodata
	.align 4
	.type	_ZL3INF, @object
	.size	_ZL3INF, 4
_ZL3INF:
	.long	1061109567
	.align 8
	.type	_ZL5LLINF, @object
	.size	_ZL5LLINF, 8
_ZL5LLINF:
	.quad	1000000000000000000
	.align 4
	.type	_ZL4MAXN, @object
	.size	_ZL4MAXN, 4
_ZL4MAXN:
	.long	203
	.globl	N
	.bss
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.zero	4
	.globl	K
	.align 4
	.type	K, @object
	.size	K, 4
K:
	.zero	4
	.globl	CNT2
	.align 32
	.type	CNT2, @object
	.size	CNT2, 812
CNT2:
	.zero	812
	.globl	CNT5
	.align 32
	.type	CNT5, @object
	.size	CNT5, 812
CNT5:
	.zero	812
	.globl	DP
	.align 32
	.type	DP, @object
	.size	DP, 9890160
DP:
	.zero	9890160
	.section	.rodata
.LC0:
	.string	"%d %d"
.LC1:
	.string	"%lld"
.LC2:
	.string	"%lld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5332:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, K[rip]
	mov	rdx, rax
	lea	rax, N[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR dadsadasda[rip], eax
	mov	DWORD PTR -52[rbp], 0
	jmp	.L2
.L7:
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR dadsadasda[rip], eax
	jmp	.L3
.L4:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, rax
	shr	rdx, 63
	add	rax, rdx
	sar	rax
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT2[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L3:
	mov	rax, QWORD PTR -16[rbp]
	and	eax, 1
	test	rax, rax
	je	.L4
	jmp	.L5
.L6:
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	sar	rcx, 63
	mov	rdx, rcx
	sub	rax, rdx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT5[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -52[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT5[rip]
	mov	DWORD PTR [rdx+rax], ecx
.L5:
	mov	rcx, QWORD PTR -16[rbp]
	movabs	rdx, 7378697629483820647
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	sar	rax
	mov	rdx, rcx
	sar	rdx, 63
	sub	rax, rdx
	mov	rdx, rax
	sal	rdx, 2
	add	rdx, rax
	mov	rax, rcx
	sub	rax, rdx
	test	rax, rax
	je	.L6
	add	DWORD PTR -52[rbp], 1
.L2:
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -52[rbp], eax
	jl	.L7
	mov	DWORD PTR -48[rbp], 0
	jmp	.L8
.L11:
	mov	DWORD PTR -44[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -44[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	imul	rax, rax, 6090
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, DP[rip]
	movabs	rdi, -1000000000000000000
	mov	QWORD PTR [rdx+rax], rdi
	add	DWORD PTR -44[rbp], 1
.L9:
	cmp	DWORD PTR -44[rbp], 6089
	jle	.L10
	add	DWORD PTR -48[rbp], 1
.L8:
	cmp	DWORD PTR -48[rbp], 202
	jle	.L11
	mov	QWORD PTR DP[rip], 0
	mov	DWORD PTR -40[rbp], 0
	jmp	.L12
.L17:
	mov	eax, DWORD PTR K[rip]
	mov	DWORD PTR -36[rbp], eax
	jmp	.L13
.L16:
	mov	edx, DWORD PTR N[rip]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	lea	edx, 0[0+rax*8]
	lea	ecx, [rax+rdx]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT5[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR K[rip]
	add	edx, eax
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -32[rbp], eax
	jmp	.L14
.L15:
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, eax
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	imul	rax, rax, 6090
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, DP[rip]
	mov	rcx, QWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT2[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	add	rax, rcx
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -36[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, CNT5[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	movsx	rdx, eax
	movsx	rax, ecx
	imul	rax, rax, 6090
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, DP[rip]
	add	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt3maxIxERKT_S2_S2_
	mov	edx, DWORD PTR -36[rbp]
	lea	esi, 1[rdx]
	mov	edx, DWORD PTR -40[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, CNT5[rip]
	mov	ecx, DWORD PTR [rcx+rdx]
	mov	edx, DWORD PTR -32[rbp]
	add	edx, ecx
	mov	rax, QWORD PTR [rax]
	movsx	rcx, edx
	movsx	rdx, esi
	imul	rdx, rdx, 6090
	add	rdx, rcx
	lea	rcx, 0[0+rdx*8]
	lea	rdx, DP[rip]
	mov	QWORD PTR [rcx+rdx], rax
	sub	DWORD PTR -32[rbp], 1
.L14:
	cmp	DWORD PTR -32[rbp], 0
	jns	.L15
	sub	DWORD PTR -36[rbp], 1
.L13:
	cmp	DWORD PTR -36[rbp], 0
	jns	.L16
	add	DWORD PTR -40[rbp], 1
.L12:
	mov	eax, DWORD PTR N[rip]
	cmp	DWORD PTR -40[rbp], eax
	jl	.L17
	mov	QWORD PTR -24[rbp], 0
	mov	DWORD PTR -28[rbp], 0
	jmp	.L18
.L19:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR K[rip]
	mov	edx, DWORD PTR -28[rbp]
	movsx	rdx, edx
	cdqe
	imul	rax, rax, 6090
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, DP[rip]
	add	rdx, rax
	lea	rax, -16[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZSt3minIxERKT_S2_S2_
	mov	rdx, rax
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -24[rbp], rax
	add	DWORD PTR -28[rbp], 1
.L18:
	cmp	DWORD PTR -28[rbp], 6089
	jle	.L19
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5332:
	.size	main, .-main
	.section	.text._ZSt3maxIxERKT_S2_S2_,"axG",@progbits,_ZSt3maxIxERKT_S2_S2_,comdat
	.weak	_ZSt3maxIxERKT_S2_S2_
	.type	_ZSt3maxIxERKT_S2_S2_, @function
_ZSt3maxIxERKT_S2_S2_:
.LFB5695:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L23
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L24
.L23:
	mov	rax, QWORD PTR -8[rbp]
.L24:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5695:
	.size	_ZSt3maxIxERKT_S2_S2_, .-_ZSt3maxIxERKT_S2_S2_
	.section	.text._ZSt3minIxERKT_S2_S2_,"axG",@progbits,_ZSt3minIxERKT_S2_S2_,comdat
	.weak	_ZSt3minIxERKT_S2_S2_
	.type	_ZSt3minIxERKT_S2_S2_, @function
_ZSt3minIxERKT_S2_S2_:
.LFB5696:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rdx, rax
	jge	.L26
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L27
.L26:
	mov	rax, QWORD PTR -8[rbp]
.L27:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5696:
	.size	_ZSt3minIxERKT_S2_S2_, .-_ZSt3minIxERKT_S2_S2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB6068:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L30
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L30
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6068:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_dadsadasda, @function
_GLOBAL__sub_I_dadsadasda:
.LFB6069:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	esi, 65535
	mov	edi, 1
	call	_Z41__static_initialization_and_destruction_0ii
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6069:
	.size	_GLOBAL__sub_I_dadsadasda, .-_GLOBAL__sub_I_dadsadasda
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_dadsadasda
	.hidden	__dso_handle
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
