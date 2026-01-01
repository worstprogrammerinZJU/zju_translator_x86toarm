	.file	"q1920a.cpp"
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
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev:
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
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9709:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEEC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEEC2Ev:
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
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt12_Vector_baseIxSaIxEEC2Ev, .-_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEEC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEEC1Ev,_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.section	.text._ZNSt6vectorIxSaIxEEC2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEC2Ev
	.type	_ZNSt6vectorIxSaIxEEC2Ev, @function
_ZNSt6vectorIxSaIxEEC2Ev:
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
	call	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt6vectorIxSaIxEEC2Ev, .-_ZNSt6vectorIxSaIxEEC2Ev
	.weak	_ZNSt6vectorIxSaIxEEC1Ev
	.set	_ZNSt6vectorIxSaIxEEC1Ev,_ZNSt6vectorIxSaIxEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev:
.LFB9719:
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
	call	_ZNSaISt4pairIixEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9719:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev:
.LFB9721:
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
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9721:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC1Ev,_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev
	.type	_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev, @function
_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev:
.LFB9723:
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
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9723:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev, .-_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EEC1Ev
	.set	_ZNSt6vectorISt4pairIixESaIS1_EEC1Ev,_ZNSt6vectorISt4pairIixESaIS1_EEC2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB9704:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9704
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 152
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -160[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB0:
	call	_ZNSirsERi@PLT
	mov	DWORD PTR -148[rbp], 1
	jmp	.L13
.L32:
	lea	rax, -128[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERx@PLT
.LEHE0:
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEEC1Ev
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEC1Ev
	mov	DWORD PTR -144[rbp], 0
	jmp	.L14
.L15:
	lea	rax, -156[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB1:
	call	_ZNSirsERi@PLT
	mov	rdx, rax
	lea	rax, -152[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZNSirsERi@PLT
	lea	rdx, -152[rbp]
	lea	rax, -156[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	mov	QWORD PTR -104[rbp], rax
	lea	rdx, -104[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt4pairIixEC1IiiLb1EEEOS_IT_T0_E
	lea	rdx, -96[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_
	add	DWORD PTR -144[rbp], 1
.L14:
	mov	eax, DWORD PTR -144[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	cmp	rdx, rax
	jl	.L15
	mov	QWORD PTR -120[rbp], 0
	mov	QWORD PTR -112[rbp], 2147483647
	mov	DWORD PTR -140[rbp], 0
	jmp	.L16
.L24:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	eax, DWORD PTR [rax]
	cmp	eax, 1
	jne	.L17
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -120[rbp], rax
	jge	.L17
	mov	eax, 1
	jmp	.L18
.L17:
	mov	eax, 0
.L18:
	test	al, al
	je	.L19
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -120[rbp], rax
.L19:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	eax, DWORD PTR [rax]
	cmp	eax, 2
	jne	.L20
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	rax, QWORD PTR 8[rax]
	cmp	QWORD PTR -112[rbp], rax
	jle	.L20
	mov	eax, 1
	jmp	.L21
.L20:
	mov	eax, 0
.L21:
	test	al, al
	je	.L22
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -112[rbp], rax
.L22:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	mov	eax, DWORD PTR [rax]
	cmp	eax, 3
	sete	al
	test	al, al
	je	.L23
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	lea	rdx, 8[rax]
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE9push_backERKx
.L23:
	add	DWORD PTR -140[rbp], 1
.L16:
	mov	eax, DWORD PTR -140[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -128[rbp]
	cmp	rdx, rax
	jl	.L24
	mov	DWORD PTR -136[rbp], 0
	mov	rax, QWORD PTR -120[rbp]
	cmp	rax, QWORD PTR -112[rbp]
	jg	.L25
	mov	DWORD PTR -132[rbp], 0
	jmp	.L26
.L30:
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEEixEm
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -112[rbp], rax
	jl	.L27
	mov	eax, DWORD PTR -132[rbp]
	movsx	rdx, eax
	lea	rax, -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEEixEm
	mov	rax, QWORD PTR [rax]
	cmp	QWORD PTR -120[rbp], rax
	jg	.L27
	mov	eax, 1
	jmp	.L28
.L27:
	mov	eax, 0
.L28:
	test	al, al
	je	.L29
	add	DWORD PTR -136[rbp], 1
.L29:
	add	DWORD PTR -132[rbp], 1
.L26:
	mov	eax, DWORD PTR -132[rbp]
	movsx	rbx, eax
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmp	rbx, rax
	setb	al
	test	al, al
	jne	.L30
	mov	rax, QWORD PTR -112[rbp]
	sub	rax, QWORD PTR -120[rbp]
	mov	edx, DWORD PTR -136[rbp]
	movsx	rdx, edx
	sub	rax, rdx
	add	rax, 1
	mov	rsi, rax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEx@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L31
.L25:
	mov	esi, 0
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE1:
.L31:
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EED1Ev
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEED1Ev
	add	DWORD PTR -148[rbp], 1
.L13:
	mov	eax, DWORD PTR -160[rbp]
	cmp	DWORD PTR -148[rbp], eax
	jle	.L32
	mov	eax, 0
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L35
	jmp	.L37
.L36:
	endbr64
	mov	rbx, rax
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EED1Ev
	lea	rax, -80[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L37:
	call	__stack_chk_fail@PLT
.L35:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9704:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9704-.LLSDACSB9704
.LLSDACSB9704:
	.uleb128 .LEHB0-.LFB9704
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9704
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L36-.LFB9704
	.uleb128 0
	.uleb128 .LEHB2-.LFB9704
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9704:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10042:
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
	jnb	.L39
	mov	rax, QWORD PTR -16[rbp]
	jmp	.L40
.L39:
	mov	rax, QWORD PTR -8[rbp]
.L40:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10042:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10047:
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
.LFE10047:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev:
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
	mov	rdi, rax
	call	_ZNSaIxEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10420:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
.LFB10423:
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
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10423:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEED2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEED2Ev, @function
_ZNSt12_Vector_baseIxSaIxEED2Ev:
.LFB10426:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10426
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10426:
	.section	.gcc_except_table
.LLSDA10426:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10426-.LLSDACSB10426
.LLSDACSB10426:
.LLSDACSE10426:
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIxSaIxEED2Ev, .-_ZNSt12_Vector_baseIxSaIxEED2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEED1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEED1Ev,_ZNSt12_Vector_baseIxSaIxEED2Ev
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEED2Ev
	.type	_ZNSt6vectorIxSaIxEED2Ev, @function
_ZNSt6vectorIxSaIxEED2Ev:
.LFB10429:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10429
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
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10429:
	.section	.gcc_except_table
.LLSDA10429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10429-.LLSDACSB10429
.LLSDACSB10429:
.LLSDACSE10429:
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.size	_ZNSt6vectorIxSaIxEED2Ev, .-_ZNSt6vectorIxSaIxEED2Ev
	.weak	_ZNSt6vectorIxSaIxEED1Ev
	.set	_ZNSt6vectorIxSaIxEED1Ev,_ZNSt6vectorIxSaIxEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev:
.LFB10432:
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
	call	_ZNSaISt4pairIixEEC2Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10432:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt4pairIixEED2Ev,"axG",@progbits,_ZNSaISt4pairIixEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIixEED2Ev
	.type	_ZNSaISt4pairIixEED2Ev, @function
_ZNSaISt4pairIixEED2Ev:
.LFB10435:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10435:
	.size	_ZNSaISt4pairIixEED2Ev, .-_ZNSaISt4pairIixEED2Ev
	.weak	_ZNSaISt4pairIixEED1Ev
	.set	_ZNSaISt4pairIixEED1Ev,_ZNSaISt4pairIixEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev:
.LFB10438:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10438
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
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10438:
	.section	.gcc_except_table
.LLSDA10438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10438-.LLSDACSB10438
.LLSDACSB10438:
.LLSDACSE10438:
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIixESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIixESaIS1_EED2Ev:
.LFB10441:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10441
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
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10441:
	.section	.gcc_except_table
.LLSDA10441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10441-.LLSDACSB10441
.LLSDACSB10441:
.LLSDACSE10441:
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIixESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIixESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIixESaIS1_EED1Ev,_ZNSt6vectorISt4pairIixESaIS1_EED2Ev
	.section	.text._ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_,"axG",@progbits,_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_,comdat
	.weak	_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	.type	_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, @function
_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_:
.LFB10443:
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
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	mov	rcx, rax
	lea	rax, -32[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt4pairIiiEC1IRiS2_Lb1EEEOT_OT0_
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10443:
	.size	_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, .-_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	.section	.text._ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E,"axG",@progbits,_ZNSt4pairIixEC5IiiLb1EEEOS_IT_T0_E,comdat
	.align 2
	.weak	_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E
	.type	_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E, @function
_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E:
.LFB10453:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -16[rbp]
	add	rax, 4
	mov	rdi, rax
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	mov	eax, DWORD PTR [rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10453:
	.size	_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E, .-_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E
	.weak	_ZNSt4pairIixEC1IiiLb1EEEOS_IT_T0_E
	.set	_ZNSt4pairIixEC1IiiLb1EEEOS_IT_T0_E,_ZNSt4pairIixEC2IiiLb1EEEOS_IT_T0_E
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_, @function
_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_:
.LFB10455:
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
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10455:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_, .-_ZNSt6vectorISt4pairIixESaIS1_EE9push_backEOS1_
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	.type	_ZNSt6vectorISt4pairIixESaIS1_EEixEm, @function
_ZNSt6vectorISt4pairIixESaIS1_EEixEm:
.LFB10456:
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
.LFE10456:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EEixEm, .-_ZNSt6vectorISt4pairIixESaIS1_EEixEm
	.section	.text._ZNSt6vectorIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt6vectorIxSaIxEE9push_backERKx,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE9push_backERKx
	.type	_ZNSt6vectorIxSaIxEE9push_backERKx, @function
_ZNSt6vectorIxSaIxEE9push_backERKx:
.LFB10457:
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
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L59
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L61
.L59:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE3endEv
	mov	rcx, rax
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10457:
	.size	_ZNSt6vectorIxSaIxEE9push_backERKx, .-_ZNSt6vectorIxSaIxEE9push_backERKx
	.section	.text._ZNKSt6vectorIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE4sizeEv
	.type	_ZNKSt6vectorIxSaIxEE4sizeEv, @function
_ZNKSt6vectorIxSaIxEE4sizeEv:
.LFB10458:
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
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10458:
	.size	_ZNKSt6vectorIxSaIxEE4sizeEv, .-_ZNKSt6vectorIxSaIxEE4sizeEv
	.section	.text._ZNSt6vectorIxSaIxEEixEm,"axG",@progbits,_ZNSt6vectorIxSaIxEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEixEm
	.type	_ZNSt6vectorIxSaIxEEixEm, @function
_ZNSt6vectorIxSaIxEEixEm:
.LFB10459:
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
	sal	rax, 3
	add	rax, rdx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10459:
	.size	_ZNSt6vectorIxSaIxEEixEm, .-_ZNSt6vectorIxSaIxEEixEm
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
.LFB10855:
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
	call	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10855:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev:
.LFB10858:
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
.LFE10858:
	.size	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB10861:
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
.LFE10861:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.type	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, @function
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm:
.LFB10863:
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
	je	.L71
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10863:
	.size	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, .-_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.section	.text._ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10864:
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
.LFE10864:
	.size	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E:
.LFB10865:
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
	call	_ZSt8_DestroyIPxEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10865:
	.size	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.section	.text._ZNSaISt4pairIixEEC2Ev,"axG",@progbits,_ZNSaISt4pairIixEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIixEEC2Ev
	.type	_ZNSaISt4pairIixEEC2Ev, @function
_ZNSaISt4pairIixEEC2Ev:
.LFB10867:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10867:
	.size	_ZNSaISt4pairIixEEC2Ev, .-_ZNSaISt4pairIixEEC2Ev
	.weak	_ZNSaISt4pairIixEEC1Ev
	.set	_ZNSaISt4pairIixEEC1Ev,_ZNSaISt4pairIixEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB10870:
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
.LFE10870:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev:
.LFB10873:
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
.LFE10873:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIixEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIixEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m:
.LFB10875:
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
	je	.L80
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m
.L80:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10875:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB10876:
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
.LFE10876:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E:
.LFB10877:
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
	call	_ZSt8_DestroyIPSt4pairIixEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10877:
	.size	_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPSt4pairIixES1_EvT_S3_RSaIT0_E
	.section	.text._ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB10878:
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
.LFE10878:
	.size	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIiiEC5IRiS2_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_, @function
_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_:
.LFB10880:
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
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10880:
	.size	_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_, .-_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIiiEC1IRiS2_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIiiEC1IRiS2_Lb1EEEOT_OT0_,_ZNSt4pairIiiEC2IRiS2_Lb1EEEOT_OT0_
	.section	.text._ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB10882:
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
.LFE10882:
	.size	_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, @function
_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_:
.LFB10883:
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 16[rax]
	cmp	rdx, rax
	je	.L90
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 8[rax]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	jmp	.L91
.L90:
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE3endEv
	mov	rcx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, rbx
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L91:
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE4backEv
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10883:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, .-_ZNSt6vectorISt4pairIixESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_:
.LFB10885:
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
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10885:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE3endEv
	.type	_ZNSt6vectorIxSaIxEE3endEv, @function
_ZNSt6vectorIxSaIxEE3endEv:
.LFB10886:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10886:
	.size	_ZNSt6vectorIxSaIxEE3endEv, .-_ZNSt6vectorIxSaIxEE3endEv
	.section	.rodata
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.type	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, @function
_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_:
.LFB10887:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, .LC0[rip]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE5beginEv
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	lea	rcx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	mov	rsi, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	mov	QWORD PTR -32[rbp], rax
	add	QWORD PTR -32[rbp], 8
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -56[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -64[rbp]
	sar	rdx, 3
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10887:
	.size	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, .-_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB11090:
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
.LFE11090:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11092:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11092:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZSt8_DestroyIPxEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPxEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPxEvT_S1_
	.type	_ZSt8_DestroyIPxEvT_S1_, @function
_ZSt8_DestroyIPxEvT_S1_:
.LFB11093:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11093:
	.size	_ZSt8_DestroyIPxEvT_S1_, .-_ZSt8_DestroyIPxEvT_S1_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev:
.LFB11095:
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
.LFE11095:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIixEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m:
.LFB11097:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11097:
	.size	_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt4pairIixEEE10deallocateERS2_PS1_m
	.section	.text._ZSt8_DestroyIPSt4pairIixEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIixEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIixEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIixEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIixEEvT_S3_:
.LFB11098:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11098:
	.size	_ZSt8_DestroyIPSt4pairIixEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIixEEvT_S3_
	.section	.text._ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11099:
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
.LFE11099:
	.size	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_:
.LFB11100:
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
	call	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11100:
	.size	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE3endEv
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE3endEv, @function
_ZNSt6vectorISt4pairIixESaIS1_EE3endEv:
.LFB11101:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 8[rax]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11101:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE3endEv, .-_ZNSt6vectorISt4pairIixESaIS1_EE3endEv
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11102:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 104
	.cfi_offset 3, -24
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -104[rbp], rdx
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -88[rbp]
	lea	rdx, .LC0[rip]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc
	mov	QWORD PTR -72[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -64[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rax, QWORD PTR 8[rax]
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv
	mov	QWORD PTR -80[rbp], rax
	lea	rdx, -80[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -72[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -104[rbp]
	mov	rdi, rax
	call	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rdx, rax
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 4
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rcx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	mov	QWORD PTR -32[rbp], 0
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rsi, QWORD PTR [rax]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -64[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	QWORD PTR -32[rbp], rax
	add	QWORD PTR -32[rbp], 16
	mov	rax, QWORD PTR -88[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -32[rbp]
	mov	rsi, QWORD PTR -56[rbp]
	mov	rcx, rbx
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	sub	rdx, QWORD PTR -64[rbp]
	sar	rdx, 4
	mov	rcx, QWORD PTR -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE13_M_deallocateEPS1_m
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -88[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -72[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -40[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -88[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11102:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIixESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE4backEv,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE4backEv
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE4backEv, @function
_ZNSt6vectorISt4pairIixESaIS1_EE4backEv:
.LFB11106:
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
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE3endEv
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -24[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl
	mov	QWORD PTR -16[rbp], rax
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11106:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE4backEv, .-_ZNSt6vectorISt4pairIixESaIS1_EE4backEv
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11107:
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
.LFE11107:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11108:
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
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rax
	mov	edi, 8
	call	_ZnwmPv
	mov	QWORD PTR [rax], rbx
	nop
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11108:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_:
.LFB11110:
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
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11110:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.section	.text._ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc:
.LFB11112:
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
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -64[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L121
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L121:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
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
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jb	.L122
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L123
.L122:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	jmp	.L124
.L123:
	mov	rax, QWORD PTR -32[rbp]
.L124:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11112:
	.size	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE5beginEv
	.type	_ZNSt6vectorIxSaIxEE5beginEv, @function
_ZNSt6vectorIxSaIxEE5beginEv:
.LFB11113:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11113:
	.size	_ZNSt6vectorIxSaIxEE5beginEv, .-_ZNSt6vectorIxSaIxEE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB11114:
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11114:
	.size	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm:
.LFB11115:
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
	je	.L133
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	jmp	.L135
.L133:
	mov	eax, 0
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11115:
	.size	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, .-_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.section	.text._ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.type	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_, @function
_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_:
.LFB11116:
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
	call	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11116:
	.size	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_, .-_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv:
.LFB11117:
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
.LFE11117:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11256:
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
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11256:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_:
.LFB11257:
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
.LFE11257:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m:
.LFB11258:
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
.LFE11258:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEE10deallocateEPS2_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_:
.LFB11259:
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
.LFE11259:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIixEEEvT_S5_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_:
.LFB11260:
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
	call	_ZSt7forwardISt4pairIixEEOT_RNSt16remove_referenceIS2_E4typeE
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
.LFE11260:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEE9constructIS2_JS2_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_:
.LFB11262:
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
	mov	QWORD PTR [rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11262:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.section	.text._ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc:
.LFB11264:
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
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
	sub	rbx, rax
	mov	rdx, rbx
	mov	rax, QWORD PTR -64[rbp]
	cmp	rdx, rax
	setb	al
	test	al, al
	je	.L149
	mov	rax, QWORD PTR -72[rbp]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L149:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
	mov	rbx, rax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
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
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jb	.L150
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv
	cmp	QWORD PTR -32[rbp], rax
	jbe	.L151
.L150:
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv
	jmp	.L152
.L151:
	mov	rax, QWORD PTR -32[rbp]
.L152:
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L154
	call	__stack_chk_fail@PLT
.L154:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11264:
	.size	_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt4pairIixESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv, @function
_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv:
.LFB11265:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rdx, QWORD PTR -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11265:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv, .-_ZNSt6vectorISt4pairIixESaIS1_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11266:
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
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rbx, QWORD PTR [rax]
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	mov	rdx, QWORD PTR [rax]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 4
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11266:
	.size	_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt4pairIixESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm:
.LFB11267:
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
	je	.L161
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m
	jmp	.L163
.L161:
	mov	eax, 0
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11267:
	.size	_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIixESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, @function
_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
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
	mov	QWORD PTR -32[rbp], rcx
	mov	rcx, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11268:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .-_ZNSt6vectorISt4pairIixESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB11269:
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
.LFE11269:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_
	.type	_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_, @function
_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_:
.LFB11270:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11270:
	.size	_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_, .-_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl:
.LFB11271:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -48[rbp]
	sal	rax, 4
	neg	rax
	add	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	lea	rdx, -24[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEC1ERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11271:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv:
.LFB11272:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11272:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIixESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZNKSt6vectorIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.type	_ZNKSt6vectorIxSaIxEE8max_sizeEv, @function
_ZNKSt6vectorIxSaIxEE8max_sizeEv:
.LFB11273:
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
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11273:
	.size	_ZNKSt6vectorIxSaIxEE8max_sizeEv, .-_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11274:
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
	call	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11274:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE:
.LFB11275:
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
	call	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11275:
	.size	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE, .-_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.section	.text._ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv:
.LFB11361:
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
	call	_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	mov	rdi, rax
	call	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11361:
	.size	_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorISt4pairIixESaIS1_EE8max_sizeEv
	.section	.text._ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv, @function
_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv:
.LFB11362:
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
.LFE11362:
	.size	_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv, .-_ZNKSt6vectorISt4pairIixESaIS1_EE4sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m:
.LFB11363:
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
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11363:
	.size	_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt4pairIixEEE8allocateERS2_m
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE:
.LFB11364:
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
	call	_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11364:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt4pairIixESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_:
.LFB11365:
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
.LFE11365:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEE7destroyIS2_EEvPT_
	.section	.text._ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_:
.LFB11366:
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
	movabs	rax, 1152921504606846975
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L191
	call	__stack_chk_fail@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11366:
	.size	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11367:
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
.LFE11367:
	.size	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11369:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	movabs	rax, 1152921504606846975
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11369:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11368:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L197
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L198
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L198:
	call	_ZSt17__throw_bad_allocv@PLT
.L197:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11368:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_:
.LFB11370:
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
	call	_ZSt12__niter_baseIPxET_S1_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPxET_S1_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPxET_S1_
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	call	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11370:
	.size	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.section	.text._ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_:
.LFB11476:
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
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11476:
	.size	_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIixESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB11477:
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
.LFE11477:
	.size	_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt4pairIixESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv:
.LFB11479:
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
.LFE11479:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L210
	movabs	rax, 1152921504606846975
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L211
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L211:
	call	_ZSt17__throw_bad_allocv@PLT
.L210:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11478:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt4pairIixEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11480:
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
	call	_ZSt12__niter_baseIPSt4pairIixEET_S3_
	mov	r12, rax
	mov	rax, QWORD PTR -32[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIixEET_S3_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt12__niter_baseIPSt4pairIixEET_S3_
	mov	rdi, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rcx, rax
	mov	rdx, r12
	mov	rsi, rbx
	call	_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	add	rsp, 32
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11480:
	.size	_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt12__relocate_aIPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11481:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11481:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.weak	_ZSt12__niter_baseIPxET_S1_
	.type	_ZSt12__niter_baseIPxET_S1_, @function
_ZSt12__niter_baseIPxET_S1_:
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
	.size	_ZSt12__niter_baseIPxET_S1_, .-_ZSt12__niter_baseIPxET_S1_
	.section	.text._ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB11483:
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
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jle	.L220
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	memmove@PLT
.L220:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11483:
	.size	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_:
.LFB11551:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11551:
	.size	_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaISt4pairIixEEE8max_sizeERKS2_
	.section	.text._ZSt12__niter_baseIPSt4pairIixEET_S3_,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIixEET_S3_,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIixEET_S3_
	.type	_ZSt12__niter_baseIPSt4pairIixEET_S3_, @function
_ZSt12__niter_baseIPSt4pairIixEET_S3_:
.LFB11552:
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
.LFE11552:
	.size	_ZSt12__niter_baseIPSt4pairIixEET_S3_, .-_ZSt12__niter_baseIPSt4pairIixEET_S3_
	.section	.text._ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11553:
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
	jmp	.L227
.L228:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIixEEPT_RS2_
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIixEEPT_RS2_
	mov	rcx, rax
	mov	rax, QWORD PTR -64[rbp]
	mov	rdx, rax
	mov	rsi, rbx
	mov	rdi, rcx
	call	_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_
	add	QWORD PTR -40[rbp], 16
	add	QWORD PTR -24[rbp], 16
.L227:
	mov	rax, QWORD PTR -40[rbp]
	cmp	rax, QWORD PTR -48[rbp]
	jne	.L228
	mov	rax, QWORD PTR -24[rbp]
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11553:
	.size	_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt14__relocate_a_1IPSt4pairIixES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11554:
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
	call	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11554:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv:
.LFB11584:
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
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11584:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIixEE8max_sizeEv
	.section	.text._ZSt11__addressofISt4pairIixEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIixEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIixEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIixEEPT_RS2_, @function
_ZSt11__addressofISt4pairIixEEPT_RS2_:
.LFB11585:
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
.LFE11585:
	.size	_ZSt11__addressofISt4pairIixEEPT_RS2_, .-_ZSt11__addressofISt4pairIixEEPT_RS2_
	.section	.text._ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_:
.LFB11586:
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
	call	_ZSt4moveIRSt4pairIixEEONSt16remove_referenceIT_E4typeEOS4_
	mov	rdx, rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofISt4pairIixEEPT_RS2_
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaISt4pairIixEEE7destroyIS1_EEvRS2_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11586:
	.size	_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt4pairIixES1_SaIS1_EEvPT_PT0_RT1_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11639:
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
	jne	.L239
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L239
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
.L239:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11639:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11662:
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
.LFE11662:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
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
