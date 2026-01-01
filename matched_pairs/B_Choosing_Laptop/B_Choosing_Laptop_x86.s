	.file	"B_Choosing_Laptop.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
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
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB371:
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
.LFE371:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
	.section	.text._ZNSt14_Bit_referenceC2EPmm,"axG",@progbits,_ZNSt14_Bit_referenceC5EPmm,comdat
	.align 2
	.weak	_ZNSt14_Bit_referenceC2EPmm
	.type	_ZNSt14_Bit_referenceC2EPmm, @function
_ZNSt14_Bit_referenceC2EPmm:
.LFB3837:
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
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 8[rax], rdx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3837:
	.size	_ZNSt14_Bit_referenceC2EPmm, .-_ZNSt14_Bit_referenceC2EPmm
	.weak	_ZNSt14_Bit_referenceC1EPmm
	.set	_ZNSt14_Bit_referenceC1EPmm,_ZNSt14_Bit_referenceC2EPmm
	.section	.text._ZNKSt14_Bit_referencecvbEv,"axG",@progbits,_ZNKSt14_Bit_referencecvbEv,comdat
	.align 2
	.weak	_ZNKSt14_Bit_referencecvbEv
	.type	_ZNKSt14_Bit_referencecvbEv, @function
_ZNKSt14_Bit_referencecvbEv:
.LFB3842:
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
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	and	rax, rdx
	test	rax, rax
	setne	al
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3842:
	.size	_ZNKSt14_Bit_referencecvbEv, .-_ZNKSt14_Bit_referencecvbEv
	.section	.text._ZNSt14_Bit_referenceaSEb,"axG",@progbits,_ZNSt14_Bit_referenceaSEb,comdat
	.align 2
	.weak	_ZNSt14_Bit_referenceaSEb
	.type	_ZNSt14_Bit_referenceaSEb, @function
_ZNSt14_Bit_referenceaSEb:
.LFB3843:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -12[rbp], al
	cmp	BYTE PTR -12[rbp], 0
	je	.L12
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	or	rdx, rcx
	mov	QWORD PTR [rax], rdx
	jmp	.L13
.L12:
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 8[rax]
	not	rax
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	and	rdx, rcx
	mov	QWORD PTR [rax], rdx
.L13:
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3843:
	.size	_ZNSt14_Bit_referenceaSEb, .-_ZNSt14_Bit_referenceaSEb
	.section	.text._ZNSt18_Bit_iterator_baseC2EPmj,"axG",@progbits,_ZNSt18_Bit_iterator_baseC5EPmj,comdat
	.align 2
	.weak	_ZNSt18_Bit_iterator_baseC2EPmj
	.type	_ZNSt18_Bit_iterator_baseC2EPmj, @function
_ZNSt18_Bit_iterator_baseC2EPmj:
.LFB3852:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	QWORD PTR -16[rbp], rsi
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	DWORD PTR 8[rax], edx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3852:
	.size	_ZNSt18_Bit_iterator_baseC2EPmj, .-_ZNSt18_Bit_iterator_baseC2EPmj
	.weak	_ZNSt18_Bit_iterator_baseC1EPmj
	.set	_ZNSt18_Bit_iterator_baseC1EPmj,_ZNSt18_Bit_iterator_baseC2EPmj
	.section	.text._ZNSt18_Bit_iterator_base7_M_incrEl,"axG",@progbits,_ZNSt18_Bit_iterator_base7_M_incrEl,comdat
	.align 2
	.weak	_ZNSt18_Bit_iterator_base7_M_incrEl
	.type	_ZNSt18_Bit_iterator_base7_M_incrEl, @function
_ZNSt18_Bit_iterator_base7_M_incrEl:
.LFB3856:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR 8[rax]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 63[rax]
	test	rax, rax
	cmovs	rax, rdx
	sar	rax, 6
	sal	rax, 3
	lea	rdx, [rcx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	cqo
	shr	rdx, 58
	add	rax, rdx
	and	eax, 63
	sub	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jns	.L17
	add	QWORD PTR -8[rbp], 64
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	lea	rdx, -8[rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR [rax], rdx
.L17:
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -24[rbp]
	mov	DWORD PTR 8[rax], edx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3856:
	.size	_ZNSt18_Bit_iterator_base7_M_incrEl, .-_ZNSt18_Bit_iterator_base7_M_incrEl
	.section	.text._ZNSt13_Bit_iteratorC2Ev,"axG",@progbits,_ZNSt13_Bit_iteratorC5Ev,comdat
	.align 2
	.weak	_ZNSt13_Bit_iteratorC2Ev
	.type	_ZNSt13_Bit_iteratorC2Ev, @function
_ZNSt13_Bit_iteratorC2Ev:
.LFB3865:
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
	mov	edx, 0
	mov	esi, 0
	mov	rdi, rax
	call	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3865:
	.size	_ZNSt13_Bit_iteratorC2Ev, .-_ZNSt13_Bit_iteratorC2Ev
	.weak	_ZNSt13_Bit_iteratorC1Ev
	.set	_ZNSt13_Bit_iteratorC1Ev,_ZNSt13_Bit_iteratorC2Ev
	.section	.text._ZNSt13_Bit_iteratorC2EPmj,"axG",@progbits,_ZNSt13_Bit_iteratorC5EPmj,comdat
	.align 2
	.weak	_ZNSt13_Bit_iteratorC2EPmj
	.type	_ZNSt13_Bit_iteratorC2EPmj, @function
_ZNSt13_Bit_iteratorC2EPmj:
.LFB3868:
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
	mov	DWORD PTR -20[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -20[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3868:
	.size	_ZNSt13_Bit_iteratorC2EPmj, .-_ZNSt13_Bit_iteratorC2EPmj
	.weak	_ZNSt13_Bit_iteratorC1EPmj
	.set	_ZNSt13_Bit_iteratorC1EPmj,_ZNSt13_Bit_iteratorC2EPmj
	.section	.text._ZNKSt13_Bit_iteratordeEv,"axG",@progbits,_ZNKSt13_Bit_iteratordeEv,comdat
	.align 2
	.weak	_ZNKSt13_Bit_iteratordeEv
	.type	_ZNKSt13_Bit_iteratordeEv, @function
_ZNKSt13_Bit_iteratordeEv:
.LFB3871:
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
	mov	eax, DWORD PTR 8[rax]
	mov	edx, 1
	mov	ecx, eax
	sal	rdx, cl
	mov	rax, QWORD PTR -40[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -32[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceC1EPmm
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3871:
	.size	_ZNKSt13_Bit_iteratordeEv, .-_ZNKSt13_Bit_iteratordeEv
	.section	.text._ZNSt13_Bit_iteratorpLEl,"axG",@progbits,_ZNSt13_Bit_iteratorpLEl,comdat
	.align 2
	.weak	_ZNSt13_Bit_iteratorpLEl
	.type	_ZNSt13_Bit_iteratorpLEl, @function
_ZNSt13_Bit_iteratorpLEl:
.LFB3876:
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
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt18_Bit_iterator_base7_M_incrEl
	mov	rax, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3876:
	.size	_ZNSt13_Bit_iteratorpLEl, .-_ZNSt13_Bit_iteratorpLEl
	.section	.text._ZNKSt13_Bit_iteratorixEl,"axG",@progbits,_ZNKSt13_Bit_iteratorixEl,comdat
	.align 2
	.weak	_ZNKSt13_Bit_iteratorixEl
	.type	_ZNKSt13_Bit_iteratorixEl, @function
_ZNKSt13_Bit_iteratorixEl:
.LFB3878:
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
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStplRKSt13_Bit_iteratorl
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratordeEv
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3878:
	.size	_ZNKSt13_Bit_iteratorixEl, .-_ZNKSt13_Bit_iteratorixEl
	.section	.text._ZStplRKSt13_Bit_iteratorl,"axG",@progbits,_ZStplRKSt13_Bit_iteratorl,comdat
	.weak	_ZStplRKSt13_Bit_iteratorl
	.type	_ZStplRKSt13_Bit_iteratorl, @function
_ZStplRKSt13_Bit_iteratorl:
.LFB3879:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	rdx, QWORD PTR -64[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorpLEl
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3879:
	.size	_ZStplRKSt13_Bit_iteratorl, .-_ZStplRKSt13_Bit_iteratorl
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
	.globl	main
	.type	main, @function
main:
.LFB9705:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9705
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 136
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
.LEHB0:
	call	_Z5setupv
	lea	rax, -140[rbp]
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
	call	_ZNSirsERi@PLT
.LEHE0:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaI6laptopEC1Ev
	mov	eax, DWORD PTR -140[rbp]
	movsx	rcx, eax
	lea	rdx, -64[rbp]
	lea	rax, -96[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB1:
	call	_ZNSt6vectorI6laptopSaIS0_EEC1EmRKS1_
.LEHE1:
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaI6laptopED1Ev
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSaIbEC1Ev
	mov	eax, DWORD PTR -140[rbp]
	movsx	rcx, eax
	lea	rdx, -112[rbp]
	lea	rax, -64[rbp]
	mov	rsi, rcx
	mov	rdi, rax
.LEHB2:
	call	_ZNSt6vectorIbSaIbEEC1EmRKS0_
.LEHE2:
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSaIbED1Ev
	mov	DWORD PTR -136[rbp], 0
	jmp	.L33
.L34:
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	rsi, rax
	lea	rax, _ZSt3cin[rip]
	mov	rdi, rax
.LEHB3:
	call	_ZNSirsERi@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	add	rax, 4
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERi@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	add	rax, 8
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERi@PLT
	mov	rbx, rax
	mov	eax, DWORD PTR -136[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	add	rax, 12
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSirsERi@PLT
	add	DWORD PTR -136[rbp], 1
.L33:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -136[rbp], eax
	jl	.L34
	mov	DWORD PTR -132[rbp], -1
	mov	DWORD PTR -128[rbp], 1001
	mov	DWORD PTR -124[rbp], 0
	jmp	.L35
.L42:
	mov	DWORD PTR -120[rbp], 0
	jmp	.L36
.L41:
	mov	eax, DWORD PTR -124[rbp]
	cmp	eax, DWORD PTR -120[rbp]
	je	.L37
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	ebx, DWORD PTR [rax]
	mov	eax, DWORD PTR -120[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	eax, DWORD PTR [rax]
	cmp	ebx, eax
	jge	.L37
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	ebx, DWORD PTR 4[rax]
	mov	eax, DWORD PTR -120[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	eax, DWORD PTR 4[rax]
	cmp	ebx, eax
	jge	.L37
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	ebx, DWORD PTR 8[rax]
	mov	eax, DWORD PTR -120[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	eax, DWORD PTR 8[rax]
	cmp	ebx, eax
	jge	.L37
	mov	eax, 1
	jmp	.L38
.L37:
	mov	eax, 0
.L38:
	test	al, al
	je	.L39
	mov	eax, DWORD PTR -124[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	lea	rax, -112[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	_ZNSt14_Bit_referenceaSEb
	jmp	.L40
.L39:
	add	DWORD PTR -120[rbp], 1
.L36:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -120[rbp], eax
	jl	.L41
.L40:
	add	DWORD PTR -124[rbp], 1
.L35:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -124[rbp], eax
	jl	.L42
	mov	DWORD PTR -116[rbp], 0
	jmp	.L43
.L47:
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	lea	rax, -64[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEixEm
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNKSt14_Bit_referencecvbEv
	xor	eax, 1
	test	al, al
	je	.L44
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	eax, DWORD PTR 12[rax]
	cmp	DWORD PTR -128[rbp], eax
	jle	.L44
	mov	eax, 1
	jmp	.L45
.L44:
	mov	eax, 0
.L45:
	test	al, al
	je	.L46
	mov	eax, DWORD PTR -116[rbp]
	movsx	rdx, eax
	lea	rax, -96[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EEixEm
	mov	eax, DWORD PTR 12[rax]
	mov	DWORD PTR -128[rbp], eax
	mov	eax, DWORD PTR -116[rbp]
	add	eax, 1
	mov	DWORD PTR -132[rbp], eax
.L46:
	add	DWORD PTR -116[rbp], 1
.L43:
	mov	eax, DWORD PTR -140[rbp]
	cmp	DWORD PTR -116[rbp], eax
	jl	.L47
	mov	eax, DWORD PTR -132[rbp]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
.LEHE3:
	mov	ebx, 0
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEED1Ev
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EED1Ev
	mov	eax, ebx
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L53
	jmp	.L57
.L54:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSaI6laptopED1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB4:
	call	_Unwind_Resume@PLT
.L55:
	endbr64
	mov	rbx, rax
	lea	rax, -112[rbp]
	mov	rdi, rax
	call	_ZNSaIbED1Ev
	jmp	.L51
.L56:
	endbr64
	mov	rbx, rax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEED1Ev
.L51:
	lea	rax, -96[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EED1Ev
	mov	rax, rbx
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE4:
.L57:
	call	__stack_chk_fail@PLT
.L53:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9705:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9705:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9705-.LLSDACSB9705
.LLSDACSB9705:
	.uleb128 .LEHB0-.LFB9705
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9705
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L54-.LFB9705
	.uleb128 0
	.uleb128 .LEHB2-.LFB9705
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L55-.LFB9705
	.uleb128 0
	.uleb128 .LEHB3-.LFB9705
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L56-.LFB9705
	.uleb128 0
	.uleb128 .LEHB4-.LFB9705
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9705:
	.text
	.size	main, .-main
	.section	.text._ZNSaImED2Ev,"axG",@progbits,_ZNSaImED5Ev,comdat
	.align 2
	.weak	_ZNSaImED2Ev
	.type	_ZNSaImED2Ev, @function
_ZNSaImED2Ev:
.LFB10315:
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
	call	_ZN9__gnu_cxx13new_allocatorImED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10315:
	.size	_ZNSaImED2Ev, .-_ZNSaImED2Ev
	.weak	_ZNSaImED1Ev
	.set	_ZNSaImED1Ev,_ZNSaImED2Ev
	.section	.text._ZNSaI6laptopEC2Ev,"axG",@progbits,_ZNSaI6laptopEC5Ev,comdat
	.align 2
	.weak	_ZNSaI6laptopEC2Ev
	.type	_ZNSaI6laptopEC2Ev, @function
_ZNSaI6laptopEC2Ev:
.LFB10395:
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
	call	_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10395:
	.size	_ZNSaI6laptopEC2Ev, .-_ZNSaI6laptopEC2Ev
	.weak	_ZNSaI6laptopEC1Ev
	.set	_ZNSaI6laptopEC1Ev,_ZNSaI6laptopEC2Ev
	.section	.text._ZNSaI6laptopED2Ev,"axG",@progbits,_ZNSaI6laptopED5Ev,comdat
	.align 2
	.weak	_ZNSaI6laptopED2Ev
	.type	_ZNSaI6laptopED2Ev, @function
_ZNSaI6laptopED2Ev:
.LFB10398:
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
	call	_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSaI6laptopED2Ev, .-_ZNSaI6laptopED2Ev
	.weak	_ZNSaI6laptopED1Ev
	.set	_ZNSaI6laptopED1Ev,_ZNSaI6laptopED2Ev
	.section	.text._ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_
	.type	_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_, @function
_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_:
.LFB10401:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10401
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
	mov	rbx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rax, QWORD PTR -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB5:
	call	_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_
	mov	rcx, rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, rax
	mov	rsi, rcx
	mov	rdi, rbx
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_
.LEHE5:
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB6:
	call	_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm
.LEHE6:
	jmp	.L64
.L63:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L64:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10401:
	.section	.gcc_except_table
.LLSDA10401:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10401-.LLSDACSB10401
.LLSDACSB10401:
	.uleb128 .LEHB5-.LFB10401
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10401
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L63-.LFB10401
	.uleb128 0
	.uleb128 .LEHB7-.LFB10401
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE10401:
	.section	.text._ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_, .-_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_
	.weak	_ZNSt6vectorI6laptopSaIS0_EEC1EmRKS1_
	.set	_ZNSt6vectorI6laptopSaIS0_EEC1EmRKS1_,_ZNSt6vectorI6laptopSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt6vectorI6laptopSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI6laptopSaIS0_EED2Ev
	.type	_ZNSt6vectorI6laptopSaIS0_EED2Ev, @function
_ZNSt6vectorI6laptopSaIS0_EED2Ev:
.LFB10404:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10404
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
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10404:
	.section	.gcc_except_table
.LLSDA10404:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10404-.LLSDACSB10404
.LLSDACSB10404:
.LLSDACSE10404:
	.section	.text._ZNSt6vectorI6laptopSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI6laptopSaIS0_EED2Ev, .-_ZNSt6vectorI6laptopSaIS0_EED2Ev
	.weak	_ZNSt6vectorI6laptopSaIS0_EED1Ev
	.set	_ZNSt6vectorI6laptopSaIS0_EED1Ev,_ZNSt6vectorI6laptopSaIS0_EED2Ev
	.section	.text._ZNSaIbEC2Ev,"axG",@progbits,_ZNSaIbEC5Ev,comdat
	.align 2
	.weak	_ZNSaIbEC2Ev
	.type	_ZNSaIbEC2Ev, @function
_ZNSaIbEC2Ev:
.LFB10407:
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
	call	_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZNSaIbEC2Ev, .-_ZNSaIbEC2Ev
	.weak	_ZNSaIbEC1Ev
	.set	_ZNSaIbEC1Ev,_ZNSaIbEC2Ev
	.section	.text._ZNSaIbED2Ev,"axG",@progbits,_ZNSaIbED5Ev,comdat
	.align 2
	.weak	_ZNSaIbED2Ev
	.type	_ZNSaIbED2Ev, @function
_ZNSaIbED2Ev:
.LFB10410:
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
	call	_ZN9__gnu_cxx13new_allocatorIbED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10410:
	.size	_ZNSaIbED2Ev, .-_ZNSaIbED2Ev
	.weak	_ZNSaIbED1Ev
	.set	_ZNSaIbED1Ev,_ZNSaIbED2Ev
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.type	_ZNSt6vectorIbSaIbEEC2EmRKS0_, @function
_ZNSt6vectorIbSaIbEEC2EmRKS0_:
.LFB10413:
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
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	BYTE PTR -9[rbp], 0
	mov	rcx, QWORD PTR -40[rbp]
	lea	rdx, -9[rbp]
	mov	rsi, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10413:
	.size	_ZNSt6vectorIbSaIbEEC2EmRKS0_, .-_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.weak	_ZNSt6vectorIbSaIbEEC1EmRKS0_
	.set	_ZNSt6vectorIbSaIbEEC1EmRKS0_,_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.section	.text._ZNSt6vectorIbSaIbEED2Ev,"axG",@progbits,_ZNSt6vectorIbSaIbEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEED2Ev
	.type	_ZNSt6vectorIbSaIbEED2Ev, @function
_ZNSt6vectorIbSaIbEED2Ev:
.LFB10416:
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
	call	_ZNSt13_Bvector_baseISaIbEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10416:
	.size	_ZNSt6vectorIbSaIbEED2Ev, .-_ZNSt6vectorIbSaIbEED2Ev
	.weak	_ZNSt6vectorIbSaIbEED1Ev
	.set	_ZNSt6vectorIbSaIbEED1Ev,_ZNSt6vectorIbSaIbEED2Ev
	.section	.text._ZNSt6vectorI6laptopSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI6laptopSaIS0_EEixEm
	.type	_ZNSt6vectorI6laptopSaIS0_EEixEm, @function
_ZNSt6vectorI6laptopSaIS0_EEixEm:
.LFB10418:
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
.LFE10418:
	.size	_ZNSt6vectorI6laptopSaIS0_EEixEm, .-_ZNSt6vectorI6laptopSaIS0_EEixEm
	.section	.text._ZNSt6vectorIbSaIbEEixEm,"axG",@progbits,_ZNSt6vectorIbSaIbEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEEixEm
	.type	_ZNSt6vectorIbSaIbEEixEm, @function
_ZNSt6vectorIbSaIbEEixEm:
.LFB10419:
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
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEE5beginEv
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -32[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNKSt13_Bit_iteratorixEl
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10419:
	.size	_ZNSt6vectorIbSaIbEEixEm, .-_ZNSt6vectorIbSaIbEEixEm
	.section	.text._ZN9__gnu_cxx13new_allocatorImED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorImED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorImED2Ev, @function
_ZN9__gnu_cxx13new_allocatorImED2Ev:
.LFB10711:
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
.LFE10711:
	.size	_ZN9__gnu_cxx13new_allocatorImED2Ev, .-_ZN9__gnu_cxx13new_allocatorImED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorImED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorImED1Ev,_ZN9__gnu_cxx13new_allocatorImED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6laptopEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev:
.LFB10812:
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
.LFE10812:
	.size	_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI6laptopEC1Ev,_ZN9__gnu_cxx13new_allocatorI6laptopEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI6laptopED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6laptopED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev:
.LFB10815:
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
.LFE10815:
	.size	_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev, .-_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI6laptopED1Ev,_ZN9__gnu_cxx13new_allocatorI6laptopED2Ev
	.section	.rodata
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_,comdat
	.weak	_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_
	.type	_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_, @function
_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_:
.LFB10817:
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
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaI6laptopEC1ERKS0_
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_
	cmp	QWORD PTR -40[rbp], rax
	seta	bl
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaI6laptopED1Ev
	test	bl, bl
	je	.L80
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	_ZSt20__throw_length_errorPKc@PLT
.L80:
	mov	rax, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10817:
	.size	_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_, .-_ZNSt6vectorI6laptopSaIS0_EE17_S_check_init_lenEmRKS1_
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev:
.LFB10820:
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
	call	_ZNSaI6laptopED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10820:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_:
.LFB10822:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10822
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
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC1ERKS1_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB8:
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm
.LEHE8:
	jmp	.L87
.L86:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD1Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L87:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10822:
	.section	.gcc_except_table
.LLSDA10822:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10822-.LLSDACSB10822
.LLSDACSB10822:
	.uleb128 .LEHB8-.LFB10822
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L86-.LFB10822
	.uleb128 0
	.uleb128 .LEHB9-.LFB10822
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE10822:
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_, .-_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EEC1EmRKS1_
	.set	_ZNSt12_Vector_baseI6laptopSaIS0_EEC1EmRKS1_,_ZNSt12_Vector_baseI6laptopSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev:
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
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10825:
	.section	.gcc_except_table
.LLSDA10825:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10825-.LLSDACSB10825
.LLSDACSB10825:
.LLSDACSE10825:
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI6laptopSaIS0_EED1Ev,_ZNSt12_Vector_baseI6laptopSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm
	.type	_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm, @function
_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm:
.LFB10827:
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
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rdx], rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10827:
	.size	_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm, .-_ZNSt6vectorI6laptopSaIS0_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10828:
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
.LFE10828:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E:
.LFB10829:
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
	call	_ZSt8_DestroyIP6laptopEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10829:
	.size	_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP6laptopS0_EvT_S2_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIbEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIbEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIbEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIbEC2Ev:
.LFB10831:
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
.LFE10831:
	.size	_ZN9__gnu_cxx13new_allocatorIbEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIbEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIbEC1Ev,_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIbED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIbED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIbED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIbED2Ev:
.LFB10834:
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
.LFE10834:
	.size	_ZN9__gnu_cxx13new_allocatorIbED2Ev, .-_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIbED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIbED1Ev,_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKbRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKbRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.type	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, @function
_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_:
.LFB10837:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10837
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
	mov	QWORD PTR -48[rbp], rcx
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	mov	rdx, QWORD PTR -32[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
.LEHB10:
	call	_ZNSt6vectorIbSaIbEE13_M_initializeEm
.LEHE10:
	mov	rax, QWORD PTR -40[rbp]
	movzx	eax, BYTE PTR [rax]
	movzx	edx, al
	mov	rax, QWORD PTR -24[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	jmp	.L98
.L97:
	endbr64
	mov	rbx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEED2Ev
	mov	rax, rbx
	mov	rdi, rax
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L98:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10837:
	.section	.gcc_except_table
.LLSDA10837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10837-.LLSDACSB10837
.LLSDACSB10837:
	.uleb128 .LEHB10-.LFB10837
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L97-.LFB10837
	.uleb128 0
	.uleb128 .LEHB11-.LFB10837
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE10837:
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKbRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKbRKS0_,comdat
	.size	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, .-_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.weak	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_
	.set	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_,_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.type	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev, @function
_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev:
.LFB10841:
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
	call	_ZNSaImED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10841:
	.size	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev, .-_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	.set	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.section	.text._ZNSt13_Bvector_baseISaIbEED2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEED5Ev,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEED2Ev
	.type	_ZNSt13_Bvector_baseISaIbEED2Ev, @function
_ZNSt13_Bvector_baseISaIbEED2Ev:
.LFB10843:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10843
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
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10843:
	.section	.gcc_except_table
.LLSDA10843:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10843-.LLSDACSB10843
.LLSDACSB10843:
.LLSDACSE10843:
	.section	.text._ZNSt13_Bvector_baseISaIbEED2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEED5Ev,comdat
	.size	_ZNSt13_Bvector_baseISaIbEED2Ev, .-_ZNSt13_Bvector_baseISaIbEED2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEED1Ev
	.set	_ZNSt13_Bvector_baseISaIbEED1Ev,_ZNSt13_Bvector_baseISaIbEED2Ev
	.section	.text._ZNSt6vectorIbSaIbEE5beginEv,"axG",@progbits,_ZNSt6vectorIbSaIbEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEE5beginEv
	.type	_ZNSt6vectorIbSaIbEE5beginEv, @function
_ZNSt6vectorIbSaIbEE5beginEv:
.LFB10845:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	mov	rcx, QWORD PTR [rax]
	lea	rax, -48[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorC1EPmj
	mov	rax, QWORD PTR -48[rbp]
	mov	rdx, QWORD PTR -40[rbp]
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -32[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -8[rbp]
	sub	rcx, QWORD PTR fs:40
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10845:
	.size	_ZNSt6vectorIbSaIbEE5beginEv, .-_ZNSt6vectorIbSaIbEE5beginEv
	.section	.text._ZN9__gnu_cxx13new_allocatorImEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorImEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorImEC2Ev:
.LFB10999:
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
.LFE10999:
	.size	_ZN9__gnu_cxx13new_allocatorImEC2Ev, .-_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorImEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorImEC1Ev,_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.section	.text._ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm,"axG",@progbits,_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm,comdat
	.weak	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	.type	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, @function
_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm:
.LFB11001:
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
	call	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11001:
	.size	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, .-_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	.section	.text._ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_:
.LFB11042:
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
	call	_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -16[rbp]
	lea	rax, -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZSt3minImERKT_S2_S2_
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI6laptopSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNSaI6laptopEC2ERKS0_,"axG",@progbits,_ZNSaI6laptopEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI6laptopEC2ERKS0_
	.type	_ZNSaI6laptopEC2ERKS0_, @function
_ZNSaI6laptopEC2ERKS0_:
.LFB11044:
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
	call	_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11044:
	.size	_ZNSaI6laptopEC2ERKS0_, .-_ZNSaI6laptopEC2ERKS0_
	.weak	_ZNSaI6laptopEC1ERKS0_
	.set	_ZNSaI6laptopEC1ERKS0_,_ZNSaI6laptopEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_:
.LFB11047:
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
	call	_ZNSaI6laptopEC2ERKS0_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11047:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI6laptopSaIS0_EE12_Vector_implC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm:
.LFB11049:
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
	call	_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm
	mov	rdx, QWORD PTR -8[rbp]
	mov	QWORD PTR [rdx], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	add	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 16[rax], rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11049:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m:
.LFB11050:
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
	je	.L114
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rcx, QWORD PTR -16[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m
.L114:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11050:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E:
.LFB11051:
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
	call	_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11051:
	.size	_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIP6laptopmS0_ET_S2_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIP6laptopEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP6laptopEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP6laptopEvT_S2_
	.type	_ZSt8_DestroyIP6laptopEvT_S2_, @function
_ZSt8_DestroyIP6laptopEvT_S2_:
.LFB11052:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11052:
	.size	_ZSt8_DestroyIP6laptopEvT_S2_, .-_ZSt8_DestroyIP6laptopEvT_S2_
	.section	.text._ZNSt13_Bvector_baseISaIbEEC2ERKS0_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.type	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, @function
_ZNSt13_Bvector_baseISaIbEEC2ERKS0_:
.LFB11055:
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
	mov	rbx, QWORD PTR -40[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	lea	rax, -25[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSaImEC1IbEERKSaIT_E
	lea	rax, -25[rbp]
	mov	rsi, rax
	mov	rdi, rbx
	call	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	lea	rax, -25[rbp]
	mov	rdi, rax
	call	_ZNSaImED1Ev
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11055:
	.size	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, .-_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.weak	_ZNSt13_Bvector_baseISaIbEEC1ERKS0_
	.set	_ZNSt13_Bvector_baseISaIbEEC1ERKS0_,_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.section	.text._ZNSt6vectorIbSaIbEE13_M_initializeEm,"axG",@progbits,_ZNSt6vectorIbSaIbEE13_M_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEE13_M_initializeEm
	.type	_ZNSt6vectorIbSaIbEE13_M_initializeEm, @function
_ZNSt6vectorIbSaIbEE13_M_initializeEm:
.LFB11057:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -72[rbp], rdi
	mov	QWORD PTR -80[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	cmp	QWORD PTR -80[rbp], 0
	je	.L123
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -80[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	mov	QWORD PTR -56[rbp], rax
	mov	rax, QWORD PTR -80[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rax, QWORD PTR -72[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -56[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofImEPT_RS0_
	mov	rcx, rax
	lea	rax, -48[rbp]
	mov	edx, 0
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorC1EPmj
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -48[rbp]
	mov	QWORD PTR [rax], rdx
	mov	edx, DWORD PTR -40[rbp]
	mov	DWORD PTR 8[rax], edx
	mov	rdx, QWORD PTR -80[rbp]
	lea	rax, -48[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZStplRKSt13_Bit_iteratorl
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	rax, QWORD PTR -72[rbp]
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	edx, DWORD PTR -24[rbp]
	mov	DWORD PTR 24[rax], edx
.L123:
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L122
	call	__stack_chk_fail@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11057:
	.size	_ZNSt6vectorIbSaIbEE13_M_initializeEm, .-_ZNSt6vectorIbSaIbEE13_M_initializeEm
	.section	.text._ZNSt6vectorIbSaIbEE19_M_initialize_valueEb,"axG",@progbits,_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb,comdat
	.align 2
	.weak	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	.type	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, @function
_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb:
.LFB11058:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	eax, esi
	mov	BYTE PTR -28[rbp], al
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L128
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	sub	rax, QWORD PTR -8[rbp]
	mov	rdx, rax
	cmp	BYTE PTR -28[rbp], 0
	je	.L126
	mov	ecx, -1
	jmp	.L127
.L126:
	mov	ecx, 0
.L127:
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, ecx
	mov	rdi, rax
	call	memset@PLT
.L128:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11058:
	.size	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, .-_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.type	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, @function
_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv:
.LFB11059:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR [rax]
	test	rax, rax
	je	.L131
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	mov	rdx, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR [rdx]
	sub	rax, rdx
	sar	rax, 3
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 32[rax]
	mov	rax, QWORD PTR -8[rbp]
	sal	rax, 3
	neg	rax
	lea	rcx, [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
.L131:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11059:
	.size	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, .-_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.section	.text._ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	.type	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm, @function
_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm:
.LFB11158:
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
.LFE11158:
	.size	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm, .-_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	.section	.text._ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_:
.LFB11196:
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
	call	_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11196:
	.size	_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI6laptopEE8max_sizeERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6laptopEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_:
.LFB11198:
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
.LFE11198:
	.size	_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI6laptopEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI6laptopEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB11201:
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
.LFE11201:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI6laptopSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm:
.LFB11203:
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
	je	.L139
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m
	jmp	.L141
.L139:
	mov	eax, 0
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11203:
	.size	_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI6laptopSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m:
.LFB11204:
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
	call	_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11204:
	.size	_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI6laptopEE10deallocateERS1_PS0_m
	.section	.text._ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_
	.type	_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_, @function
_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_:
.LFB11205:
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
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11205:
	.size	_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_, .-_ZSt25__uninitialized_default_nIP6laptopmET_S2_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_:
.LFB11206:
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
.LFE11206:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIP6laptopEEvT_S4_
	.section	.text._ZNSaImEC2IbEERKSaIT_E,"axG",@progbits,_ZNSaImEC5IbEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaImEC2IbEERKSaIT_E
	.type	_ZNSaImEC2IbEERKSaIT_E, @function
_ZNSaImEC2IbEERKSaIT_E:
.LFB11208:
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
	call	_ZN9__gnu_cxx13new_allocatorImEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11208:
	.size	_ZNSaImEC2IbEERKSaIT_E, .-_ZNSaImEC2IbEERKSaIT_E
	.weak	_ZNSaImEC1IbEERKSaIT_E
	.set	_ZNSaImEC1IbEERKSaIT_E,_ZNSaImEC2IbEERKSaIT_E
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC5ERKSaImE,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.type	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, @function
_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE:
.LFB11211:
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
	call	_ZNSaImEC2ERKS_
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11211:
	.size	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, .-_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	.set	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.section	.text._ZNSt13_Bvector_baseISaIbEE11_M_allocateEm,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	.type	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, @function
_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm:
.LFB11213:
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
	call	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11213:
	.size	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, .-_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	.section	.text._ZNSt13_Bvector_baseISaIbEE8_S_nwordEm,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm,comdat
	.weak	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	.type	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, @function
_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm:
.LFB11214:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 63
	shr	rax, 6
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11214:
	.size	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, .-_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	.section	.text._ZSt11__addressofImEPT_RS0_,"axG",@progbits,_ZSt11__addressofImEPT_RS0_,comdat
	.weak	_ZSt11__addressofImEPT_RS0_
	.type	_ZSt11__addressofImEPT_RS0_, @function
_ZSt11__addressofImEPT_RS0_:
.LFB11215:
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
.LFE11215:
	.size	_ZSt11__addressofImEPT_RS0_, .-_ZSt11__addressofImEPT_RS0_
	.section	.text._ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv,"axG",@progbits,_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv,comdat
	.align 2
	.weak	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	.type	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, @function
_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv:
.LFB11216:
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
	mov	rax, QWORD PTR 32[rax]
	test	rax, rax
	je	.L155
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 32[rax]
	sub	rax, 8
	mov	rdi, rax
	call	_ZSt11__addressofImEPT_RS0_
	add	rax, 8
	jmp	.L156
.L155:
	mov	eax, 0
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11216:
	.size	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, .-_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, @function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv:
.LFB11217:
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
	mov	QWORD PTR -72[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -64[rbp]
	mov	rdi, rax
	call	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev
	mov	rax, QWORD PTR -72[rbp]
	mov	rcx, QWORD PTR -64[rbp]
	mov	rbx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR -48[rbp]
	mov	rbx, QWORD PTR -40[rbp]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rdx, QWORD PTR -32[rbp]
	mov	QWORD PTR 32[rax], rdx
	nop
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv:
.LFB11302:
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
	call	_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI6laptopE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m:
.LFB11303:
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
	call	_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11303:
	.size	_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI6laptopEE8allocateERS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m:
.LFB11304:
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
.LFE11304:
	.size	_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI6laptopE10deallocateEPS1_m
	.section	.text._ZSt11__addressofI6laptopEPT_RS1_,"axG",@progbits,_ZSt11__addressofI6laptopEPT_RS1_,comdat
	.weak	_ZSt11__addressofI6laptopEPT_RS1_
	.type	_ZSt11__addressofI6laptopEPT_RS1_, @function
_ZSt11__addressofI6laptopEPT_RS1_:
.LFB11306:
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
.LFE11306:
	.size	_ZSt11__addressofI6laptopEPT_RS1_, .-_ZSt11__addressofI6laptopEPT_RS1_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_:
.LFB11305:
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
	je	.L168
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZSt11__addressofI6laptopEPT_RS1_
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZSt10_ConstructI6laptopJEEvPT_DpOT0_
	add	QWORD PTR -24[rbp], 16
	mov	rax, QWORD PTR -32[rbp]
	lea	rcx, -1[rax]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_
	mov	QWORD PTR -24[rbp], rax
.L168:
	mov	rax, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIP6laptopmEET_S4_T0_
	.section	.text._ZNSaImEC2ERKS_,"axG",@progbits,_ZNSaImEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaImEC2ERKS_
	.type	_ZNSaImEC2ERKS_, @function
_ZNSaImEC2ERKS_:
.LFB11308:
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
	call	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11308:
	.size	_ZNSaImEC2ERKS_, .-_ZNSaImEC2ERKS_
	.weak	_ZNSaImEC1ERKS_
	.set	_ZNSaImEC1ERKS_,_ZNSaImEC2ERKS_
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, @function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev:
.LFB11311:
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
	call	_ZNSt13_Bit_iteratorC1Ev
	mov	rax, QWORD PTR -8[rbp]
	add	rax, 16
	mov	rdi, rax
	call	_ZNSt13_Bit_iteratorC1Ev
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR 32[rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11311:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev
	.set	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.section	.text._ZNSt16allocator_traitsISaImEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaImEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaImEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaImEE8allocateERS0_m:
.LFB11313:
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
	call	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZNSt16allocator_traitsISaImEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	.section	.text._ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv:
.LFB11419:
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
.LFE11419:
	.size	_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv:
.LFB11420:
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
	call	_ZNK9__gnu_cxx13new_allocatorI6laptopE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L177
	movabs	rax, 1152921504606846975
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L178
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L178:
	call	_ZSt17__throw_bad_allocv@PLT
.L177:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11420:
	.size	_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI6laptopE8allocateEmPKv
	.section	.text._ZSt10_ConstructI6laptopJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI6laptopJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI6laptopJEEvPT_DpOT0_
	.type	_ZSt10_ConstructI6laptopJEEvPT_DpOT0_, @function
_ZSt10_ConstructI6laptopJEEvPT_DpOT0_:
.LFB11421:
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
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR 4[rax], 0
	mov	DWORD PTR 8[rax], 0
	mov	DWORD PTR 12[rax], 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11421:
	.size	_ZSt10_ConstructI6laptopJEEvPT_DpOT0_, .-_ZSt10_ConstructI6laptopJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_
	.type	_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_, @function
_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_:
.LFB11422:
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
	call	_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZSt17__size_to_integerm
	mov	rcx, rax
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11422:
	.size	_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_, .-_ZSt6fill_nIP6laptopmS0_ET_S2_T0_RKT1_
	.section	.text._ZN9__gnu_cxx13new_allocatorImEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_:
.LFB11424:
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
.LFE11424:
	.size	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorImEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorImEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv:
.LFB11427:
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
.LFE11427:
	.size	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv:
.LFB11426:
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
	call	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	cmp	QWORD PTR -16[rbp], rax
	seta	al
	movzx	eax, al
	test	rax, rax
	setne	al
	test	al, al
	je	.L187
	movabs	rax, 2305843009213693951
	cmp	QWORD PTR -16[rbp], rax
	jbe	.L188
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L188:
	call	_ZSt17__throw_bad_allocv@PLT
.L187:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 3
	mov	rdi, rax
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11426:
	.size	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	.section	.text._ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB11495:
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
.LFE11495:
	.size	_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIP6laptopENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag:
.LFB11496:
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
	jne	.L193
	mov	rax, QWORD PTR -8[rbp]
	jmp	.L194
.L193:
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	lea	rcx, [rdx+rax]
	mov	rdx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rcx
	mov	rdi, rax
	call	_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_
	mov	rax, QWORD PTR -16[rbp]
	sal	rax, 4
	mov	rdx, rax
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11496:
	.size	_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIP6laptopmS0_ET_S2_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_,"axG",@progbits,_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_,comdat
	.weak	_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_
	.type	_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_, @function
_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_:
.LFB11526:
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
	call	_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11526:
	.size	_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_, .-_ZSt8__fill_aIP6laptopS0_EvT_S2_RKT0_
	.section	.text._ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,"axG",@progbits,_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_,comdat
	.weak	_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.type	_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, @function
_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_:
.LFB11530:
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
	jmp	.L197
.L198:
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	add	QWORD PTR -8[rbp], 16
.L197:
	mov	rax, QWORD PTR -8[rbp]
	cmp	rax, QWORD PTR -16[rbp]
	jne	.L198
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11530:
	.size	_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_, .-_ZSt9__fill_a1IP6laptopS0_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S9_RKS5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11580:
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
	jne	.L201
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L201
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
.L201:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11580:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5setupv, @function
_GLOBAL__sub_I__Z5setupv:
.LFB11603:
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
.LFE11603:
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
