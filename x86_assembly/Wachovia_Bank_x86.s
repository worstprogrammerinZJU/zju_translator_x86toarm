	.file	"Wachovia_Bank.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB1007:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1007:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3255:
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
	jnb	.L4
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L5
.L4:
	mov	rax, QWORD PTR -8[rbp]
.L5:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3255:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_collateE, @object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_ctypeE, @object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.long	1
	.align 4
	.type	_ZNSt15regex_constantsL12error_escapeE, @object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_backrefE, @object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.long	3
	.align 4
	.type	_ZNSt15regex_constantsL11error_brackE, @object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.long	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_parenE, @object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.long	5
	.align 4
	.type	_ZNSt15regex_constantsL11error_braceE, @object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.long	6
	.align 4
	.type	_ZNSt15regex_constantsL14error_badbraceE, @object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.long	7
	.align 4
	.type	_ZNSt15regex_constantsL11error_rangeE, @object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.long	8
	.align 4
	.type	_ZNSt15regex_constantsL11error_spaceE, @object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.long	9
	.align 4
	.type	_ZNSt15regex_constantsL15error_badrepeatE, @object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.long	10
	.align 4
	.type	_ZNSt15regex_constantsL16error_complexityE, @object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.long	11
	.align 4
	.type	_ZNSt15regex_constantsL11error_stackE, @object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.long	12
	.align 8
	.type	_ZNSt8__detailL19_S_invalid_state_idE, @object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.quad	-1
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"w"
.LC3:
	.string	"output.txt"
	.text
	.globl	_Z5setupv
	.type	_Z5setupv, @function
_Z5setupv:
.LFB9704:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 0
	call	_ZNSt8ios_base15sync_with_stdioEb@PLT
	mov	esi, 0
	lea	rax, _ZSt3cin[rip+16]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	esi, 0
	lea	rax, _ZSt4cout[rip+8]
	mov	rdi, rax
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo@PLT
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	freopen@PLT
	mov	rax, QWORD PTR stdout[rip]
	mov	rdx, rax
	lea	rax, .LC2[rip]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	freopen@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.size	_Z5setupv, .-_Z5setupv
	.globl	k
	.bss
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev:
.LFB9709:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIxxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev:
.LFB9711:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC1Ev,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev, @function
_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev:
.LFB9713:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev, .-_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EEC1Ev
	.set	_ZNSt6vectorISt4pairIxxESaIS1_EEC1Ev,_ZNSt6vectorISt4pairIxxESaIS1_EEC2Ev
	.globl	arr
	.bss
	.align 16
	.type	arr, @object
	.size	arr, 24
arr:
	.zero	24
	.globl	dp
	.align 32
	.type	dp, @object
	.size	dp, 4402200
dp:
	.zero	4402200
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, @function
_ZSt3maxIiERKT_S2_S2_:
.LFB9717:
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
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L11
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L12
.L11:
	mov	rax, QWORD PTR -8[rbp]
.L12:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9717:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.text
	.globl	_Z3solxx
	.type	_Z3solxx, @function
_Z3solxx:
.LFB9715:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	eax, DWORD PTR n[rip]
	cdqe
	cmp	QWORD PTR -56[rbp], rax
	jne	.L14
	mov	eax, 0
	jmp	.L18
.L14:
	mov	rax, QWORD PTR -56[rbp]
	imul	rdx, rax, 10005
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rax, -1
	je	.L16
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	jmp	.L18
.L16:
	mov	DWORD PTR -40[rbp], 0
	mov	DWORD PTR -36[rbp], 0
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, 1[rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_Z3solxx
	mov	DWORD PTR -40[rbp], eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR k[rip]
	cdqe
	cmp	rdx, rax
	setle	al
	test	al, al
	je	.L17
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	add	rax, 1
	mov	rsi, rdx
	mov	rdi, rax
	call	_Z3solxx
	mov	ebx, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	mov	rax, QWORD PTR 8[rax]
	add	eax, ebx
	mov	DWORD PTR -36[rbp], eax
.L17:
	lea	rdx, -36[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxIiERKT_S2_S2_
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
.L18:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9715:
	.size	_Z3solxx, .-_Z3solxx
	.section	.rodata
	.align 8
.LC4:
	.string	"Hey stupid robber, you can get "
.LC5:
	.string	"."
	.text
	.globl	main
	.type	main, @function
main:
.LFB9718:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	call	_Z5setupv
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	jmp	.L21
.L24:
	lea	rax, k[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	mov	eax, DWORD PTR n[rip]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm
	mov	DWORD PTR -28[rbp], 0
	jmp	.L22
.L23:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERx@PLT
	add	DWORD PTR -28[rbp], 1
.L22:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L23
	mov	edx, 4402200
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rax, .LC4[rip]
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	rbx, rax
	mov	esi, 0
	mov	edi, 0
	call	_Z3solxx
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSolsEx@PLT
	mov	rdx, rax
	lea	rax, .LC5[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv
.L21:
	mov	eax, DWORD PTR -32[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -32[rbp], edx
	test	eax, eax
	setne	al
	test	al, al
	jne	.L24
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9718:
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10030:
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
	jnb	.L28
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L29
.L28:
	mov	rax, QWORD PTR -8[rbp]
.L29:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10030:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev:
.LFB10408:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSaISt4pairIxxEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10408:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt4pairIxxEED2Ev,"axG",@progbits,_ZNSaISt4pairIxxEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIxxEED2Ev
	.type	_ZNSaISt4pairIxxEED2Ev, @function
_ZNSaISt4pairIxxEED2Ev:
.LFB10411:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10411:
	.size	_ZNSaISt4pairIxxEED2Ev, .-_ZNSaISt4pairIxxEED2Ev
	.weak	_ZNSaISt4pairIxxEED1Ev
	.set	_ZNSaISt4pairIxxEED1Ev,_ZNSaISt4pairIxxEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev:
.LFB10414:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10414
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED5Ev,comdat
.LLSDA10414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10414-.LLSDACSB10414
.LLSDACSB10414:
.LLSDACSE10414:
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm, @function
_ZNSt6vectorISt4pairIxxESaIS1_EEixEm:
.LFB10416:
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
	sal	rax, 4
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10416:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EEixEm, .-_ZNSt6vectorISt4pairIxxESaIS1_EEixEm
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm:
.LFB10417:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	test	al, al
	je	.L36
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm
	jmp	.L38
.L36:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	setb	al
	test	al, al
	je	.L38
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm, .-_ZNSt6vectorISt4pairIxxESaIS1_EE6resizeEm
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv:
.LFB10422:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10422:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv, .-_ZNSt6vectorISt4pairIxxESaIS1_EE5clearEv
	.section	.text._ZNSaISt4pairIxxEEC2Ev,"axG",@progbits,_ZNSaISt4pairIxxEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIxxEEC2Ev
	.type	_ZNSaISt4pairIxxEEC2Ev, @function
_ZNSaISt4pairIxxEEC2Ev:
.LFB10815:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10815:
	.size	_ZNSaISt4pairIxxEEC2Ev, .-_ZNSaISt4pairIxxEEC2Ev
	.weak	_ZNSaISt4pairIxxEEC1Ev
	.set	_ZNSaISt4pairIxxEEC1Ev,_ZNSaISt4pairIxxEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB10818:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10818:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev:
.LFB10821:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m:
.LFB10823:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	cmp	QWORD PTR -16[rbp], 0
	je	.L45
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10823:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv, @function
_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv:
.LFB10824:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 4
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10824:
	.size	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv, .-_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	.section	.rodata
.LC6:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm:
.LFB10825:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10825
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	cmp	QWORD PTR -64[rbp], 0
	je	.L59
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 4
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	cmp	QWORD PTR -48[rbp], rax
	ja	.L50
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	sub	rax, QWORD PTR -48[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jbe	.L51
.L50:
	mov	eax, 1
	jmp	.L52
.L51:
	mov	eax, 0
.L52:
	test	al, al
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -64[rbp]
	jb	.L54
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB0:
	call	_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L59
.L54:
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm
.LEHE0:
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rsi, rax
	mov	rdi, rcx
.LEHB1:
	call	_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E
.LEHE1:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	sar	rdx, 4
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
.LEHB2:
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m
.LEHE2:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -64[rbp]
	add	rax, rdx
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -32[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L59
.L57:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB3:
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE13_M_deallocateEPS1_m
	call	__cxa_rethrow@PLT
.LEHE3:
.L58:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L59:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10825:
	.section	.gcc_except_table._ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,"aG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,comdat
	.align 4
.LLSDA10825:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10825-.LLSDATTD10825
.LLSDATTD10825:
	.byte	0x1
	.uleb128 .LLSDACSE10825-.LLSDACSB10825
.LLSDACSB10825:
	.uleb128 .LEHB0-.LFB10825
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10825
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L57-.LFB10825
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB10825
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB10825
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L58-.LFB10825
	.uleb128 0
	.uleb128 .LEHB4-.LFB10825
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10825:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10825:
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm,comdat
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairIxxESaIS1_EE17_M_default_appendEm
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_:
.LFB10830:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10830
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	sub	rax, QWORD PTR -32[rbp]
	sar	rax, 4
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L62
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L62:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10830:
	.section	.gcc_except_table._ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,"aG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,comdat
.LLSDA10830:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10830-.LLSDACSB10830
.LLSDACSB10830:
.LLSDACSE10830:
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorISt4pairIxxESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev:
.LFB11028:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11028:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m:
.LFB11030:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11030:
	.size	_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt4pairIxxEEE10deallocateERS2_PS1_m
	.section	.text._ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv:
.LFB11031:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11031:
	.size	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB11032:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11032:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E:
.LFB11033:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPSt4pairIxxEmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc:
.LFB11034:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 72
	.cfi_offset 3, -24
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -64[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L72
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L72:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	mov	QWORD PTR -40[rbp], rax
	lea	rdx, -64[rbp]
	lea	rax, -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3maxImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	add	rax, rbx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jb	.L73
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L74
.L73:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIxxESaIS1_EE8max_sizeEv
	jmp	.L75
.L74:
	mov	rax, QWORD PTR -32[rbp]
.L75:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11034:
	.size	_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt4pairIxxESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm:
.LFB11035:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	cmp	QWORD PTR -16[rbp], 0
	je	.L79
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m
	jmp	.L81
.L79:
	mov	eax, 0
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.size	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB11036:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11036:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .-_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.section	.text._ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E:
.LFB11037:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIxxEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11037:
	.size	_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m:
.LFB11175:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE10deallocateEPS2_m
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_:
.LFB11176:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 576460752303423487
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIxxESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB11177:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11177:
	.size	_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_:
.LFB11178:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	BYTE PTR -1[rbp], 1
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPSt4pairIxxEmET_S3_T0_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m:
.LFB11179:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11179:
	.size	_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt4pairIxxEEE8allocateERS2_m
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE:
.LFB11180:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11180:
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt4pairIxxESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.section	.text._ZSt8_DestroyIPSt4pairIxxEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIxxEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIxxEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIxxEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIxxEEvT_S3_:
.LFB11181:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11181:
	.size	_ZSt8_DestroyIPSt4pairIxxEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIxxEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_:
.LFB11266:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11266:
	.size	_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaISt4pairIxxEEE8max_sizeERKS2_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_:
.LFB11267:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11267
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L102
.L103:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIxxEEPT_RS2_
	mov	rdi, rax
.LEHB5:
	call	_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_
.LEHE5:
	sub	QWORD PTR -48[rbp], 1
	add	QWORD PTR -24[rbp], 16
.L102:
	cmp	QWORD PTR -48[rbp], 0
	jne	.L103
	mov	rax, QWORD PTR -24[rbp]
	jmp	.L109
.L107:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIxxEEvT_S3_
.LEHB6:
	call	__cxa_rethrow@PLT
.LEHE6:
.L108:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L109:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11267:
	.section	.gcc_except_table._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,"aG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,comdat
	.align 4
.LLSDA11267:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11267-.LLSDATTD11267
.LLSDATTD11267:
	.byte	0x1
	.uleb128 .LLSDACSE11267-.LLSDACSB11267
.LLSDACSB11267:
	.uleb128 .LEHB5-.LFB11267
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L107-.LFB11267
	.uleb128 0x1
	.uleb128 .LEHB6-.LFB11267
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L108-.LFB11267
	.uleb128 0
	.uleb128 .LEHB7-.LFB11267
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE11267:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT11267:
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_,comdat
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt4pairIxxEmEET_S5_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv:
.LFB11269:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 576460752303423487
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11269:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv:
.LFB11268:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L113
	movabs	rax, 1152921504606846975
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L114
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L114:
	call	_ZSt17__throw_bad_allocv@PLT
.L113:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11268:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11270:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r12
	push	rbx
	sub	rsp, 32
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIxxEET_S3_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIxxEET_S3_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIxxEET_S3_
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	call	_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11270:
	.size	_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt12__relocate_aIPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_:
.LFB11271:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11271:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIxxEEEvT_S5_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv:
.LFB11377:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11377:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIxxEE8max_sizeEv
	.section	.text._ZSt11__addressofISt4pairIxxEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIxxEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIxxEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIxxEEPT_RS2_, @function
_ZSt11__addressofISt4pairIxxEEPT_RS2_:
.LFB11378:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11378:
	.size	_ZSt11__addressofISt4pairIxxEEPT_RS2_, .-_ZSt11__addressofISt4pairIxxEEPT_RS2_
	.section	.text._ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_
	.type	_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_, @function
_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_:
.LFB11379:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	mov	edi, 16
	call	_ZnwmPv
	mov	rdi, rax
	call	_ZNSt4pairIxxEC1IxxLb1EEEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11379:
	.size	_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_, .-_ZSt10_ConstructISt4pairIxxEJEEvPT_DpOT0_
	.section	.text._ZSt12__niter_baseIPSt4pairIxxEET_S3_,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIxxEET_S3_,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIxxEET_S3_
	.type	_ZSt12__niter_baseIPSt4pairIxxEET_S3_, @function
_ZSt12__niter_baseIPSt4pairIxxEET_S3_:
.LFB11380:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11380:
	.size	_ZSt12__niter_baseIPSt4pairIxxEET_S3_, .-_ZSt12__niter_baseIPSt4pairIxxEET_S3_
	.section	.text._ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11381:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -64[rbp], rcx
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR -24[rbp], rax
	jmp	.L127
.L128:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIxxEEPT_RS2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIxxEEPT_RS2_
	mov	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_
	add	QWORD PTR -40[rbp], 16
	add	QWORD PTR -24[rbp], 16
.L127:
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jne	.L128
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11381:
	.size	_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt14__relocate_a_1IPSt4pairIxxES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt4pairIxxEC2IxxLb1EEEv,"axG",@progbits,_ZNSt4pairIxxEC5IxxLb1EEEv,comdat
	.align 2
	.weak	_ZNSt4pairIxxEC2IxxLb1EEEv
	.type	_ZNSt4pairIxxEC2IxxLb1EEEv, @function
_ZNSt4pairIxxEC2IxxLb1EEEv:
.LFB11450:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR [rax], 0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11450:
	.size	_ZNSt4pairIxxEC2IxxLb1EEEv, .-_ZNSt4pairIxxEC2IxxLb1EEEv
	.weak	_ZNSt4pairIxxEC1IxxLb1EEEv
	.set	_ZNSt4pairIxxEC1IxxLb1EEEv,_ZNSt4pairIxxEC2IxxLb1EEEv
	.section	.text._ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_:
.LFB11452:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rdx, rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIxxEEPT_RS2_
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11452:
	.size	_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt4pairIxxES1_SaIS1_EEvPT_PT0_RT1_
	.section	.text._ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB11482:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11482:
	.size	_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt4pairIxxEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_:
.LFB11483:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11483:
	.size	_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt4pairIxxEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_
	.type	_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_, @function
_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_:
.LFB11484:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11484:
	.size	_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_, .-_ZNSt16allocator_traitsISaISt4pairIxxEEE7destroyIS1_EEvRS2_PT_
	.section	.text._ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11488:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11488:
	.size	_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_:
.LFB11489:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt4pairIxxEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 16
	call	_ZnwmPv
	mov	rcx, rax
	mov	rax, QWORD PTR [rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11489:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE9constructIS2_JS2_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_:
.LFB11490:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11490:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIxxEE7destroyIS2_EEvPT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11540:
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
	jne	.L142
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L142
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
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIxxESaIS1_EEC1Ev
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	lea	rax, _ZNSt6vectorISt4pairIxxESaIS1_EED1Ev[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L142:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11540:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev:
.LFB11556:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11556
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIxxES1_EvT_S3_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIxxESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11556:
	.section	.gcc_except_table._ZNSt6vectorISt4pairIxxESaIS1_EED2Ev,"aG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EED5Ev,comdat
.LLSDA11556:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11556-.LLSDACSB11556
.LLSDACSB11556:
.LLSDACSE11556:
	.section	.text._ZNSt6vectorISt4pairIxxESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIxxESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIxxESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIxxESaIS1_EED1Ev,_ZNSt6vectorISt4pairIxxESaIS1_EED2Ev
	.text
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11566:
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
.LFE11566:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5setupv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
