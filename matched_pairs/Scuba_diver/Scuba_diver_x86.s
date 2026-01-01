	.file	"Scuba_diver.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB538:
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
.LFE538:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
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
	jnb	.L6
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L7
.L6:
	mov	rax, QWORD PTR -8[rbp]
.L7:
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
	.globl	x
	.bss
	.align 8
	.type	x, @object
	.size	x, 8
x:
	.zero	8
	.globl	y
	.align 8
	.type	y, @object
	.size	y, 8
y:
	.zero	8
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev:
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
	call	_ZNSaI2stED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev:
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
	call	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EEC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI2stSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EEC2Ev
	.type	_ZNSt6vectorI2stSaIS0_EEC2Ev, @function
_ZNSt6vectorI2stSaIS0_EEC2Ev:
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
	call	_ZNSt12_Vector_baseI2stSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt6vectorI2stSaIS0_EEC2Ev, .-_ZNSt6vectorI2stSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI2stSaIS0_EEC1Ev
	.set	_ZNSt6vectorI2stSaIS0_EEC1Ev,_ZNSt6vectorI2stSaIS0_EEC2Ev
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
	.size	dp, 17085000
dp:
	.zero	17085000
	.text
	.globl	_Z3solxxx
	.type	_Z3solxxx, @function
_Z3solxxx:
.LFB9715:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	QWORD PTR -88[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	eax, DWORD PTR n[rip]
	cdqe
	cmp	QWORD PTR -72[rbp], rax
	jne	.L13
	mov	rax, QWORD PTR x[rip]
	cmp	QWORD PTR -80[rbp], rax
	jl	.L14
	mov	rax, QWORD PTR y[rip]
	cmp	QWORD PTR -88[rbp], rax
	jl	.L14
	mov	eax, 0
	jmp	.L18
.L14:
	mov	eax, 1000000000
	jmp	.L18
.L13:
	mov	rdx, QWORD PTR -80[rbp]
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	mov	rdx, rax
	sal	rdx, 4
	add	rax, rdx
	mov	rdx, QWORD PTR -72[rbp]
	imul	rdx, rdx, 2125
	add	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	lea	rdx, 0[0+rax*8]
	lea	rax, dp[rip]
	add	rax, rdx
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	cmp	rax, -1
	je	.L17
	mov	rax, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR [rax]
	jmp	.L18
.L17:
	mov	rax, QWORD PTR -72[rbp]
	lea	rcx, 1[rax]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR -80[rbp]
	mov	rsi, rax
	mov	rdi, rcx
	call	_Z3solxxx
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EEixEm
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -88[rbp]
	add	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	lea	rax, -40[rbp]
	lea	rdx, y[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EEixEm
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -80[rbp]
	add	rax, rdx
	mov	QWORD PTR -48[rbp], rax
	lea	rax, -48[rbp]
	lea	rdx, x[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -72[rbp]
	lea	rcx, 1[rdx]
	mov	rdx, rbx
	mov	rsi, rax
	mov	rdi, rcx
	call	_Z3solxxx
	mov	rbx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EEixEm
	mov	rax, QWORD PTR 16[rax]
	add	rax, rbx
	mov	QWORD PTR -56[rbp], rax
	lea	rdx, -56[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minIxERKT_S2_S2_
	mov	rdx, QWORD PTR [rax]
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
	.size	_Z3solxxx, .-_Z3solxxx
	.globl	main
	.type	main, @function
main:
.LFB9716:
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
	lea	rax, x[rip]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
	mov	rdx, rax
	lea	rax, y[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERx@PLT
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
	call	_ZNSt6vectorI2stSaIS0_EE6resizeEm
	mov	DWORD PTR -28[rbp], 0
	jmp	.L22
.L23:
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EEixEm
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
	call	_ZNSt6vectorI2stSaIS0_EEixEm
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERx@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	rsi, rax
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EEixEm
	add	rax, 16
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERx@PLT
	add	DWORD PTR -28[rbp], 1
.L22:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L23
	mov	edx, 17085000
	mov	esi, -1
	lea	rax, dp[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 0
	mov	esi, 0
	mov	edi, 0
	call	_Z3solxxx
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	esi, 10
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	lea	rax, arr[rip]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EE5clearEv
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
.LFE9716:
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10028:
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
.LFE10028:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev:
.LFB10406:
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
	call	_ZNSaI2stEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI2stED2Ev,"axG",@progbits,_ZNSaI2stED5Ev,comdat
	.align 2
	.weak	_ZNSaI2stED2Ev
	.type	_ZNSaI2stED2Ev, @function
_ZNSaI2stED2Ev:
.LFB10409:
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
	call	_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10409:
	.size	_ZNSaI2stED2Ev, .-_ZNSaI2stED2Ev
	.weak	_ZNSaI2stED1Ev
	.set	_ZNSaI2stED1Ev,_ZNSaI2stED2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI2stSaIS0_EED2Ev:
.LFB10412:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10412
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
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10412:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
.LLSDA10412:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10412-.LLSDACSB10412
.LLSDACSB10412:
.LLSDACSE10412:
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EED1Ev,_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI2stSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EEixEm
	.type	_ZNSt6vectorI2stSaIS0_EEixEm, @function
_ZNSt6vectorI2stSaIS0_EEixEm:
.LFB10414:
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
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	add	rax, rcx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10414:
	.size	_ZNSt6vectorI2stSaIS0_EEixEm, .-_ZNSt6vectorI2stSaIS0_EEixEm
	.section	.text._ZSt3minIxERKT_S2_S2_,"axG",@progbits,_ZSt3minIxERKT_S2_S2_,comdat
	.weak	_ZSt3minIxERKT_S2_S2_
	.type	_ZSt3minIxERKT_S2_S2_, @function
_ZSt3minIxERKT_S2_S2_:
.LFB10415:
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
	jge	.L36
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L37
.L36:
	mov	rax, QWORD PTR -8[rbp]
.L37:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10415:
	.size	_ZSt3minIxERKT_S2_S2_, .-_ZSt3minIxERKT_S2_S2_
	.section	.text._ZNSt6vectorI2stSaIS0_EE6resizeEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE6resizeEm,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EE6resizeEm
	.type	_ZNSt6vectorI2stSaIS0_EE6resizeEm, @function
_ZNSt6vectorI2stSaIS0_EE6resizeEm:
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
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	test	al, al
	je	.L39
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	rcx, rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, rcx
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	jmp	.L41
.L39:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	cmp	QWORD PTR -16[rbp], rax
	setb	al
	test	al, al
	je	.L41
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt6vectorI2stSaIS0_EE6resizeEm, .-_ZNSt6vectorI2stSaIS0_EE6resizeEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE5clearEv,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE5clearEv,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EE5clearEv
	.type	_ZNSt6vectorI2stSaIS0_EE5clearEv, @function
_ZNSt6vectorI2stSaIS0_EE5clearEv:
.LFB10420:
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
	call	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10420:
	.size	_ZNSt6vectorI2stSaIS0_EE5clearEv, .-_ZNSt6vectorI2stSaIS0_EE5clearEv
	.section	.text._ZNSaI2stEC2Ev,"axG",@progbits,_ZNSaI2stEC5Ev,comdat
	.align 2
	.weak	_ZNSaI2stEC2Ev
	.type	_ZNSaI2stEC2Ev, @function
_ZNSaI2stEC2Ev:
.LFB10813:
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
	call	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10813:
	.size	_ZNSaI2stEC2Ev, .-_ZNSaI2stEC2Ev
	.weak	_ZNSaI2stEC1Ev
	.set	_ZNSaI2stEC1Ev,_ZNSaI2stEC2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB10816:
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
.LFE10816:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI2stSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI2stED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI2stED2Ev:
.LFB10819:
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
.LFE10819:
	.size	_ZN9__gnu_cxx13new_allocatorI2stED2Ev, .-_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI2stED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI2stED1Ev,_ZN9__gnu_cxx13new_allocatorI2stED2Ev
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m:
.LFB10821:
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
	je	.L48
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
.L48:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNKSt6vectorI2stSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI2stSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI2stSaIS0_EE4sizeEv:
.LFB10822:
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
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10822:
	.size	_ZNKSt6vectorI2stSaIS0_EE4sizeEv, .-_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	.section	.rodata
.LC4:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	.type	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm, @function
_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm:
.LFB10823:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10823
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
	je	.L62
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, rdx
	sub	rax, rcx
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	cmp	QWORD PTR -48[rbp], rax
	ja	.L53
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	sub	rax, QWORD PTR -48[rbp]
	cmp	QWORD PTR -40[rbp], rax
	jbe	.L54
.L53:
	mov	eax, 1
	jmp	.L55
.L54:
	mov	eax, 0
.L55:
	test	al, al
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -64[rbp]
	jb	.L57
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB0:
	call	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	mov	rdx, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rdx], rax
	jmp	.L62
.L57:
	mov	rcx, QWORD PTR -64[rbp]
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
.LEHE0:
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rsi, rax
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rsi
	mov	rsi, rax
	mov	rdi, rcx
.LEHB1:
	call	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
.LEHE1:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rcx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -56[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR 16[rdx]
	mov	rdx, QWORD PTR -56[rbp]
	mov	rsi, QWORD PTR [rdx]
	sub	rcx, rsi
	mov	rdx, rcx
	mov	rcx, rdx
	sar	rcx, 3
	movabs	rdx, -6148914691236517205
	imul	rdx, rcx
	mov	rsi, rdx
	mov	rdx, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, rsi
	mov	rsi, rcx
	mov	rdi, rax
.LEHB2:
	call	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
.LEHE2:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -64[rbp]
	add	rdx, rax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	QWORD PTR 16[rax], rdx
	jmp	.L62
.L60:
	endbr64
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB3:
	call	_ZNSt12_Vector_baseI2stSaIS0_EE13_M_deallocateEPS0_m
	call	__cxa_rethrow@PLT
.LEHE3:
.L61:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L62:
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10823:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.align 4
.LLSDA10823:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10823-.LLSDATTD10823
.LLSDATTD10823:
	.byte	0x1
	.uleb128 .LLSDACSE10823-.LLSDACSB10823
.LLSDACSB10823:
	.uleb128 .LEHB0-.LFB10823
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10823
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB10823
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB10823
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB10823
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L61-.LFB10823
	.uleb128 0
	.uleb128 .LEHB4-.LFB10823
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10823:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT10823:
	.section	.text._ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm,comdat
	.size	_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm, .-_ZNSt6vectorI2stSaIS0_EE17_M_default_appendEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	.type	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_, @function
_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_:
.LFB10828:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10828
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
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L65
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
.L65:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10828:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
.LLSDA10828:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10828-.LLSDACSB10828
.LLSDACSB10828:
.LLSDACSE10828:
	.section	.text._ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_,comdat
	.size	_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_, .-_ZNSt6vectorI2stSaIS0_EE15_M_erase_at_endEPS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI2stEC2Ev:
.LFB11026:
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
.LFE11026:
	.size	_ZN9__gnu_cxx13new_allocatorI2stEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI2stEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI2stEC1Ev,_ZN9__gnu_cxx13new_allocatorI2stEC2Ev
	.section	.text._ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m:
.LFB11028:
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
	call	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11028:
	.size	_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI2stEE10deallocateERS1_PS0_m
	.section	.text._ZNKSt6vectorI2stSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv:
.LFB11029:
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
	call	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11029:
	.size	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB11030:
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
.LFE11030:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E:
.LFB11031:
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
	call	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11031:
	.size	_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIP2stmS0_ET_S2_T0_RSaIT1_E
	.section	.text._ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc:
.LFB11032:
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
	call	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -64[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L75
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L75:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
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
	call	_ZNKSt6vectorI2stSaIS0_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jb	.L76
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L77
.L76:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorI2stSaIS0_EE8max_sizeEv
	jmp	.L78
.L77:
	mov	rax, QWORD PTR -32[rbp]
.L78:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11032:
	.size	_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI2stSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm:
.LFB11033:
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
	je	.L82
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	jmp	.L84
.L82:
	mov	eax, 0
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI2stSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB11034:
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
	call	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11034:
	.size	_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI2stSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E:
.LFB11035:
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
	call	_ZSt8_DestroyIP2stEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11035:
	.size	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m:
.LFB11172:
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
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11172:
	.size	_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI2stE10deallocateEPS1_m
	.section	.text._ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_:
.LFB11173:
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
	movabs	rax, 384307168202282325
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11173:
	.size	_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI2stSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB11174:
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
.LFE11174:
	.size	_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt25__uninitialized_default_nIP2stmET_S2_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIP2stmET_S2_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	.type	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_, @function
_ZSt25__uninitialized_default_nIP2stmET_S2_T0_:
.LFB11175:
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
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZSt25__uninitialized_default_nIP2stmET_S2_T0_, .-_ZSt25__uninitialized_default_nIP2stmET_S2_T0_
	.section	.text._ZNSt16allocator_traitsISaI2stEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m:
.LFB11176:
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
	call	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI2stEE8allocateERS1_m
	.section	.text._ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB11177:
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
	call	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11177:
	.size	_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorI2stSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.section	.text._ZSt8_DestroyIP2stEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP2stEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP2stEvT_S2_
	.type	_ZSt8_DestroyIP2stEvT_S2_, @function
_ZSt8_DestroyIP2stEvT_S2_:
.LFB11178:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZSt8_DestroyIP2stEvT_S2_, .-_ZSt8_DestroyIP2stEvT_S2_
	.section	.text._ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_:
.LFB11263:
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
	call	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11263:
	.size	_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI2stEE8max_sizeERKS1_
	.section	.text._ZSt11__addressofI2stEPT_RS1_,"axG",@progbits,_ZSt11__addressofI2stEPT_RS1_,comdat
	.weak	_ZSt11__addressofI2stEPT_RS1_
	.type	_ZSt11__addressofI2stEPT_RS1_, @function
_ZSt11__addressofI2stEPT_RS1_:
.LFB11265:
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
.LFE11265:
	.size	_ZSt11__addressofI2stEPT_RS1_, .-_ZSt11__addressofI2stEPT_RS1_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_:
.LFB11264:
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
	cmp	QWORD PTR -32[rbp], 0
	je	.L107
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofI2stEPT_RS1_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructI2stJEEvPT_DpOT0_
	add	QWORD PTR -24[rbp], 24
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	mov	QWORD PTR -24[rbp], rax
.L107:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11264:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP2stmEET_S4_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv:
.LFB11267:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 384307168202282325
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11267:
	.size	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv:
.LFB11266:
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
	call	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L112
	movabs	rax, 768614336404564650
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L113
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L113:
	call	_ZSt17__throw_bad_allocv@PLT
.L112:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11266:
	.size	_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI2stE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB11268:
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
	call	_ZSt12__niter_baseIP2stET_S2_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP2stET_S2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIP2stET_S2_
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	call	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11268:
	.size	_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP2stS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_:
.LFB11269:
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
.LFE11269:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP2stEEvT_S4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv:
.LFB11375:
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
	call	_ZNK9__gnu_cxx13new_allocatorI2stE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11375:
	.size	_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI2stE8max_sizeEv
	.section	.text._ZSt10_ConstructI2stJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI2stJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI2stJEEvPT_DpOT0_
	.type	_ZSt10_ConstructI2stJEEvPT_DpOT0_, @function
_ZSt10_ConstructI2stJEEvPT_DpOT0_:
.LFB11376:
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
	mov	edi, 24
	call	_ZnwmPv
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 8[rax], 0
	mov	QWORD PTR 16[rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11376:
	.size	_ZSt10_ConstructI2stJEEvPT_DpOT0_, .-_ZSt10_ConstructI2stJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	.type	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_, @function
_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_:
.LFB11377:
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
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11377:
	.size	_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_, .-_ZSt6fill_nIP2stmS0_ET_S2_T0_RKT1_
	.section	.text._ZSt12__niter_baseIP2stET_S2_,"axG",@progbits,_ZSt12__niter_baseIP2stET_S2_,comdat
	.weak	_ZSt12__niter_baseIP2stET_S2_
	.type	_ZSt12__niter_baseIP2stET_S2_, @function
_ZSt12__niter_baseIP2stET_S2_:
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
	.size	_ZSt12__niter_baseIP2stET_S2_, .-_ZSt12__niter_baseIP2stET_S2_
	.section	.text._ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.type	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, @function
_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E:
.LFB11379:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -24[rbp]
	sar	rax, 3
	mov	rdx, rax
	movabs	rax, -6148914691236517205
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jle	.L126
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L126:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11379:
	.size	_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E, .-_ZSt14__relocate_a_1I2stS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E
	.section	.text._ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB11447:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11447:
	.size	_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIP2stENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag:
.LFB11448:
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
	jne	.L131
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L132
.L131:
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 3
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIP2stmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIP2stS0_EvT_S2_RKT0_,"axG",@progbits,_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_,comdat
	.weak	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	.type	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_, @function
_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_:
.LFB11478:
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
	call	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11478:
	.size	_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_, .-_ZSt8__fill_aIP2stS0_EvT_S2_RKT0_
	.section	.text._ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,"axG",@progbits,_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,comdat
	.weak	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.type	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, @function
_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_:
.LFB11482:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	QWORD PTR -24[rbp], rdx
	jmp	.L135
.L136:
	mov	rcx, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rsi]
	mov	rdx, QWORD PTR 8[rsi]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, QWORD PTR 16[rsi]
	mov	QWORD PTR 16[rcx], rax
	add	QWORD PTR -8[rbp], 24
.L135:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L136
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11482:
	.size	_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, .-_ZSt9__fill_a1IP2stS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11532:
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
	jne	.L139
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L139
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
	call	_ZNSt6vectorI2stSaIS0_EEC1Ev
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, arr[rip]
	mov	rsi, rax
	lea	rax, _ZNSt6vectorI2stSaIS0_EED1Ev[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L139:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11532:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI2stSaIS0_EED2Ev
	.type	_ZNSt6vectorI2stSaIS0_EED2Ev, @function
_ZNSt6vectorI2stSaIS0_EED2Ev:
.LFB11548:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11548
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
	call	_ZNSt12_Vector_baseI2stSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIP2stS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI2stSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11548:
	.section	.gcc_except_table._ZNSt6vectorI2stSaIS0_EED2Ev,"aG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
.LLSDA11548:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11548-.LLSDACSB11548
.LLSDACSB11548:
.LLSDACSE11548:
	.section	.text._ZNSt6vectorI2stSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI2stSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI2stSaIS0_EED2Ev, .-_ZNSt6vectorI2stSaIS0_EED2Ev
	.weak	_ZNSt6vectorI2stSaIS0_EED1Ev
	.set	_ZNSt6vectorI2stSaIS0_EED1Ev,_ZNSt6vectorI2stSaIS0_EED2Ev
	.text
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11558:
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
.LFE11558:
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
