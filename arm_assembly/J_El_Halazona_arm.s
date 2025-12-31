	.arch armv8-a
	.file	"J_El_Halazona.cpp"
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	2
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, %function
_ZSt17__size_to_integerm:
.LFB531:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE531:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB999:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE999:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, %function
_ZdlPvS_:
.LFB1001:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1001:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3247:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L7
	ldr	x0, [sp]
	b	.L8
.L7:
	ldr	x0, [sp, 8]
.L8:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt14_Bit_referenceC2EPmm,"axG",@progbits,_ZNSt14_Bit_referenceC5EPmm,comdat
	.align	2
	.weak	_ZNSt14_Bit_referenceC2EPmm
	.type	_ZNSt14_Bit_referenceC2EPmm, %function
_ZNSt14_Bit_referenceC2EPmm:
.LFB3829:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3829:
	.size	_ZNSt14_Bit_referenceC2EPmm, .-_ZNSt14_Bit_referenceC2EPmm
	.weak	_ZNSt14_Bit_referenceC1EPmm
	.set	_ZNSt14_Bit_referenceC1EPmm,_ZNSt14_Bit_referenceC2EPmm
	.section	.text._ZNKSt14_Bit_referencecvbEv,"axG",@progbits,_ZNKSt14_Bit_referencecvbEv,comdat
	.align	2
	.weak	_ZNKSt14_Bit_referencecvbEv
	.type	_ZNKSt14_Bit_referencecvbEv, %function
_ZNKSt14_Bit_referencecvbEv:
.LFB3834:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3834:
	.size	_ZNKSt14_Bit_referencecvbEv, .-_ZNKSt14_Bit_referencecvbEv
	.section	.text._ZNSt14_Bit_referenceaSEb,"axG",@progbits,_ZNSt14_Bit_referenceaSEb,comdat
	.align	2
	.weak	_ZNSt14_Bit_referenceaSEb
	.type	_ZNSt14_Bit_referenceaSEb, %function
_ZNSt14_Bit_referenceaSEb:
.LFB3835:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	cmp	w0, 0
	beq	.L13
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	orr	x1, x2, x1
	str	x1, [x0]
	b	.L14
.L13:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x2, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	mvn	x1, x0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	and	x1, x2, x1
	str	x1, [x0]
.L14:
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3835:
	.size	_ZNSt14_Bit_referenceaSEb, .-_ZNSt14_Bit_referenceaSEb
	.section	.text._ZNSt18_Bit_iterator_baseC2EPmj,"axG",@progbits,_ZNSt18_Bit_iterator_baseC5EPmj,comdat
	.align	2
	.weak	_ZNSt18_Bit_iterator_baseC2EPmj
	.type	_ZNSt18_Bit_iterator_baseC2EPmj, %function
_ZNSt18_Bit_iterator_baseC2EPmj:
.LFB3844:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 12]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3844:
	.size	_ZNSt18_Bit_iterator_baseC2EPmj, .-_ZNSt18_Bit_iterator_baseC2EPmj
	.weak	_ZNSt18_Bit_iterator_baseC1EPmj
	.set	_ZNSt18_Bit_iterator_baseC1EPmj,_ZNSt18_Bit_iterator_baseC2EPmj
	.section	.text._ZNSt18_Bit_iterator_base10_M_bump_upEv,"axG",@progbits,_ZNSt18_Bit_iterator_base10_M_bump_upEv,comdat
	.align	2
	.weak	_ZNSt18_Bit_iterator_base10_M_bump_upEv
	.type	_ZNSt18_Bit_iterator_base10_M_bump_upEv, %function
_ZNSt18_Bit_iterator_base10_M_bump_upEv:
.LFB3846:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	add	w2, w0, 1
	ldr	x1, [sp, 8]
	str	w2, [x1, 8]
	cmp	w0, 63
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	ldr	x0, [sp, 8]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 8
	ldr	x0, [sp, 8]
	str	x1, [x0]
.L19:
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3846:
	.size	_ZNSt18_Bit_iterator_base10_M_bump_upEv, .-_ZNSt18_Bit_iterator_base10_M_bump_upEv
	.section	.text._ZNSt18_Bit_iterator_base7_M_incrEl,"axG",@progbits,_ZNSt18_Bit_iterator_base7_M_incrEl,comdat
	.align	2
	.weak	_ZNSt18_Bit_iterator_base7_M_incrEl
	.type	_ZNSt18_Bit_iterator_base7_M_incrEl, %function
_ZNSt18_Bit_iterator_base7_M_incrEl:
.LFB3848:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	add	x2, x0, 63
	cmp	x0, 0
	csel	x0, x2, x0, lt
	asr	x0, x0, 6
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 63
	and	x1, x1, 63
	csneg	x0, x0, x1, mi
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bge	.L21
	ldr	x0, [sp, 24]
	add	x0, x0, 64
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #8
	ldr	x0, [sp, 8]
	str	x1, [x0]
.L21:
	ldr	x0, [sp, 24]
	mov	w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3848:
	.size	_ZNSt18_Bit_iterator_base7_M_incrEl, .-_ZNSt18_Bit_iterator_base7_M_incrEl
	.section	.text._ZStmiRKSt18_Bit_iterator_baseS1_,"axG",@progbits,_ZStmiRKSt18_Bit_iterator_baseS1_,comdat
	.align	2
	.weak	_ZStmiRKSt18_Bit_iterator_baseS1_
	.type	_ZStmiRKSt18_Bit_iterator_baseS1_, %function
_ZStmiRKSt18_Bit_iterator_baseS1_:
.LFB3855:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	sub	x0, x1, x0
	lsl	x1, x0, 3
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	add	x1, x1, x0
	ldr	x0, [sp]
	ldr	w0, [x0, 8]
	uxtw	x0, w0
	sub	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3855:
	.size	_ZStmiRKSt18_Bit_iterator_baseS1_, .-_ZStmiRKSt18_Bit_iterator_baseS1_
	.section	.text._ZNSt13_Bit_iteratorC2Ev,"axG",@progbits,_ZNSt13_Bit_iteratorC5Ev,comdat
	.align	2
	.weak	_ZNSt13_Bit_iteratorC2Ev
	.type	_ZNSt13_Bit_iteratorC2Ev, %function
_ZNSt13_Bit_iteratorC2Ev:
.LFB3857:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	w2, 0
	mov	x1, 0
	bl	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3857:
	.size	_ZNSt13_Bit_iteratorC2Ev, .-_ZNSt13_Bit_iteratorC2Ev
	.weak	_ZNSt13_Bit_iteratorC1Ev
	.set	_ZNSt13_Bit_iteratorC1Ev,_ZNSt13_Bit_iteratorC2Ev
	.section	.text._ZNSt13_Bit_iteratorC2EPmj,"axG",@progbits,_ZNSt13_Bit_iteratorC5EPmj,comdat
	.align	2
	.weak	_ZNSt13_Bit_iteratorC2EPmj
	.type	_ZNSt13_Bit_iteratorC2EPmj, %function
_ZNSt13_Bit_iteratorC2EPmj:
.LFB3860:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	bl	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3860:
	.size	_ZNSt13_Bit_iteratorC2EPmj, .-_ZNSt13_Bit_iteratorC2EPmj
	.weak	_ZNSt13_Bit_iteratorC1EPmj
	.set	_ZNSt13_Bit_iteratorC1EPmj,_ZNSt13_Bit_iteratorC2EPmj
	.section	.text._ZNKSt13_Bit_iteratordeEv,"axG",@progbits,_ZNKSt13_Bit_iteratordeEv,comdat
	.align	2
	.weak	_ZNKSt13_Bit_iteratordeEv
	.type	_ZNKSt13_Bit_iteratordeEv, %function
_ZNKSt13_Bit_iteratordeEv:
.LFB3863:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	mov	x1, 1
	lsl	x1, x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x3
	bl	_ZNSt14_Bit_referenceC1EPmm
	ldp	x0, x1, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3863:
	.size	_ZNKSt13_Bit_iteratordeEv, .-_ZNKSt13_Bit_iteratordeEv
	.section	.text._ZNSt13_Bit_iteratorppEv,"axG",@progbits,_ZNSt13_Bit_iteratorppEv,comdat
	.align	2
	.weak	_ZNSt13_Bit_iteratorppEv
	.type	_ZNSt13_Bit_iteratorppEv, %function
_ZNSt13_Bit_iteratorppEv:
.LFB3864:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt18_Bit_iterator_base10_M_bump_upEv
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3864:
	.size	_ZNSt13_Bit_iteratorppEv, .-_ZNSt13_Bit_iteratorppEv
	.section	.text._ZNSt13_Bit_iteratorpLEl,"axG",@progbits,_ZNSt13_Bit_iteratorpLEl,comdat
	.align	2
	.weak	_ZNSt13_Bit_iteratorpLEl
	.type	_ZNSt13_Bit_iteratorpLEl, %function
_ZNSt13_Bit_iteratorpLEl:
.LFB3868:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt18_Bit_iterator_base7_M_incrEl
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3868:
	.size	_ZNSt13_Bit_iteratorpLEl, .-_ZNSt13_Bit_iteratorpLEl
	.section	.text._ZNKSt13_Bit_iteratorixEl,"axG",@progbits,_ZNKSt13_Bit_iteratorixEl,comdat
	.align	2
	.weak	_ZNKSt13_Bit_iteratorixEl
	.type	_ZNKSt13_Bit_iteratorixEl, %function
_ZNKSt13_Bit_iteratorixEl:
.LFB3870:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	bl	_ZNKSt13_Bit_iteratordeEv
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3870:
	.size	_ZNKSt13_Bit_iteratorixEl, .-_ZNKSt13_Bit_iteratorixEl
	.section	.text._ZStplRKSt13_Bit_iteratorl,"axG",@progbits,_ZStplRKSt13_Bit_iteratorl,comdat
	.align	2
	.weak	_ZStplRKSt13_Bit_iteratorl
	.type	_ZStplRKSt13_Bit_iteratorl, %function
_ZStplRKSt13_Bit_iteratorl:
.LFB3871:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -64
	.cfi_offset 21, -56
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 48]
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	bl	_ZNSt13_Bit_iteratorpLEl
	ldp	x0, x1, [sp, 48]
	stp	x0, x1, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3871:
	.size	_ZStplRKSt13_Bit_iteratorl, .-_ZStplRKSt13_Bit_iteratorl
	.section	.text._ZNSt19_Bit_const_iteratorC2EPmj,"axG",@progbits,_ZNSt19_Bit_const_iteratorC5EPmj,comdat
	.align	2
	.weak	_ZNSt19_Bit_const_iteratorC2EPmj
	.type	_ZNSt19_Bit_const_iteratorC2EPmj, %function
_ZNSt19_Bit_const_iteratorC2EPmj:
.LFB3878:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	x0, [sp, 40]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	bl	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3878:
	.size	_ZNSt19_Bit_const_iteratorC2EPmj, .-_ZNSt19_Bit_const_iteratorC2EPmj
	.weak	_ZNSt19_Bit_const_iteratorC1EPmj
	.set	_ZNSt19_Bit_const_iteratorC1EPmj,_ZNSt19_Bit_const_iteratorC2EPmj
	.section	.text._ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator,"axG",@progbits,_ZNSt19_Bit_const_iteratorC5ERKSt13_Bit_iterator,comdat
	.align	2
	.weak	_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator
	.type	_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator, %function
_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator:
.LFB3881:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0, 8]
	mov	w2, w0
	mov	x0, x3
	bl	_ZNSt18_Bit_iterator_baseC2EPmj
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3881:
	.size	_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator, .-_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator
	.weak	_ZNSt19_Bit_const_iteratorC1ERKSt13_Bit_iterator
	.set	_ZNSt19_Bit_const_iteratorC1ERKSt13_Bit_iterator,_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator
	.section	.text._ZNKSt19_Bit_const_iteratordeEv,"axG",@progbits,_ZNKSt19_Bit_const_iteratordeEv,comdat
	.align	2
	.weak	_ZNKSt19_Bit_const_iteratordeEv
	.type	_ZNKSt19_Bit_const_iteratordeEv, %function
_ZNKSt19_Bit_const_iteratordeEv:
.LFB3884:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	mov	x1, 1
	lsl	x1, x1, x0
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x3
	bl	_ZNSt14_Bit_referenceC1EPmm
	add	x0, sp, 32
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3884:
	.size	_ZNKSt19_Bit_const_iteratordeEv, .-_ZNKSt19_Bit_const_iteratordeEv
	.section	.text._ZNSt19_Bit_const_iteratorppEv,"axG",@progbits,_ZNSt19_Bit_const_iteratorppEv,comdat
	.align	2
	.weak	_ZNSt19_Bit_const_iteratorppEv
	.type	_ZNSt19_Bit_const_iteratorppEv, %function
_ZNSt19_Bit_const_iteratorppEv:
.LFB3885:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt18_Bit_iterator_base10_M_bump_upEv
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3885:
	.size	_ZNSt19_Bit_const_iteratorppEv, .-_ZNSt19_Bit_const_iteratorppEv
	.section	.rodata
	.align	3
	.type	_ZN6__pstl9execution2v1L3seqE, %object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L3parE, %object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L9par_unseqE, %object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L5unseqE, %object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, %object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_collateE, %object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_ctypeE, %object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.word	1
	.align	2
	.type	_ZNSt15regex_constantsL12error_escapeE, %object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_backrefE, %object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.word	3
	.align	2
	.type	_ZNSt15regex_constantsL11error_brackE, %object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.word	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_parenE, %object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.word	5
	.align	2
	.type	_ZNSt15regex_constantsL11error_braceE, %object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.word	6
	.align	2
	.type	_ZNSt15regex_constantsL14error_badbraceE, %object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.word	7
	.align	2
	.type	_ZNSt15regex_constantsL11error_rangeE, %object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.word	8
	.align	2
	.type	_ZNSt15regex_constantsL11error_spaceE, %object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.word	9
	.align	2
	.type	_ZNSt15regex_constantsL15error_badrepeatE, %object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.word	10
	.align	2
	.type	_ZNSt15regex_constantsL16error_complexityE, %object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.word	11
	.align	2
	.type	_ZNSt15regex_constantsL11error_stackE, %object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.word	12
	.align	3
	.type	_ZNSt8__detailL19_S_invalid_state_idE, %object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.xword	-1
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"input.txt"
	.align	3
.LC2:
	.string	"w"
	.align	3
.LC3:
	.string	"output.txt"
	.text
	.align	2
	.global	_Z5setupv
	.type	_Z5setupv, %function
_Z5setupv:
.LFB9696:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 0
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	add	x0, x0, 8
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.size	_Z5setupv, .-_Z5setupv
	.global	n
	.bss
	.align	2
	.type	n, %object
	.size	n, 4
n:
	.zero	4
	.global	dx
	.data
	.align	3
	.type	dx, %object
	.size	dx, 16
dx:
	.word	0
	.word	1
	.word	0
	.word	-1
	.global	dy
	.align	3
	.type	dy, %object
	.size	dy, 16
dy:
	.word	1
	.word	0
	.word	-1
	.word	0
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev:
.LFB9701:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt6vectorIiSaIiEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9701:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev:
.LFB9703:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9703:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC1Ev,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev:
.LFB9705:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9705:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1Ev
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1Ev,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev
	.global	arr
	.bss
	.align	3
	.type	arr, %object
	.size	arr, 24
arr:
	.zero	24
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev:
.LFB9711:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt6vectorIbSaIbEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9711:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev:
.LFB9713:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9713:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC1Ev,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev:
.LFB9715:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9715:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC1Ev
	.set	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC1Ev,_ZNSt6vectorIS_IbSaIbEESaIS1_EEC2Ev
	.global	vis
	.bss
	.align	3
	.type	vis, %object
	.size	vis, 24
vis:
	.zero	24
	.section	.rodata
	.align	3
.LC4:
	.string	" "
	.text
	.align	2
	.global	_Z3soliiii
	.type	_Z3soliiii, %function
_Z3soliiii:
.LFB9717:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	ldrsw	x0, [sp, 28]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 24]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldrsw	x0, [sp, 28]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 24]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 40]
	add	x0, sp, 40
	mov	w1, 1
	bl	_ZNSt14_Bit_referenceaSEb
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bne	.L50
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.L50:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	adrp	x1, n
	add	x1, x1, :lo12:n
	ldr	w1, [x1]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 16]
	adrp	x0, dx
	add	x0, x0, :lo12:dx
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 92]
	adrp	x0, dy
	add	x0, x0, :lo12:dy
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	cmp	w0, 0
	blt	.L51
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	bge	.L51
	ldr	w0, [sp, 88]
	cmp	w0, 0
	blt	.L51
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	bge	.L51
	ldrsw	x0, [sp, 92]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 88]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 56]
	add	x0, sp, 56
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	mov	w0, 1
	b	.L52
.L51:
	mov	w0, 0
.L52:
	cmp	w0, 0
	beq	.L53
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 92]
	bl	_Z3soliiii
	b	.L57
.L53:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 20]
	adrp	x0, dx
	add	x0, x0, :lo12:dx
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 92]
	adrp	x0, dy
	add	x0, x0, :lo12:dy
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	cmp	w0, 0
	blt	.L55
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	bge	.L55
	ldr	w0, [sp, 88]
	cmp	w0, 0
	blt	.L55
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	bge	.L55
	ldrsw	x0, [sp, 92]
	mov	x1, x0
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 88]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIbSaIbEEixEm
	stp	x0, x1, [sp, 72]
	add	x0, sp, 72
	bl	_ZNKSt14_Bit_referencecvbEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	mov	w0, 1
	b	.L56
.L55:
	mov	w0, 0
.L56:
	cmp	w0, 0
	beq	.L57
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 92]
	bl	_Z3soliiii
.L57:
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9717:
	.size	_Z3soliiii, .-_Z3soliiii
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9718:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9718
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
.LEHB0:
	bl	_Z5setupv
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
.LEHE0:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x19, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x20, w0
	add	x0, sp, 64
	bl	_ZNSaIiEC1Ev
	add	x1, sp, 64
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x20
.LEHB1:
	bl	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE1:
	add	x0, sp, 40
	mov	x2, x0
	mov	x1, x19
	adrp	x0, arr
	add	x0, x0, :lo12:arr
.LEHB2:
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_
.LEHE2:
	add	x0, sp, 40
	bl	_ZNSt6vectorIiSaIiEED1Ev
	add	x0, sp, 64
	bl	_ZNSaIiED1Ev
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x19, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x20, w0
	add	x0, sp, 112
	bl	_ZNSaIbEC1Ev
	add	x1, sp, 112
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x20
.LEHB3:
	bl	_ZNSt6vectorIbSaIbEEC1EmRKS0_
.LEHE3:
	add	x0, sp, 72
	mov	x2, x0
	mov	x1, x19
	adrp	x0, vis
	add	x0, x0, :lo12:vis
.LEHB4:
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_
.LEHE4:
	add	x0, sp, 72
	bl	_ZNSt6vectorIbSaIbEED1Ev
	add	x0, sp, 112
	bl	_ZNSaIbED1Ev
	str	wzr, [sp, 124]
	b	.L59
.L62:
	str	wzr, [sp, 120]
	b	.L60
.L61:
	ldrsw	x0, [sp, 124]
	mov	x1, x0
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 120]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIiSaIiEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB5:
	bl	_ZNSirsERi
	ldr	w0, [sp, 120]
	add	w0, w0, 1
	str	w0, [sp, 120]
.L60:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 120]
	cmp	w1, w0
	blt	.L61
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
.L59:
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 124]
	cmp	w1, w0
	blt	.L62
	mov	w3, 0
	mov	w2, 0
	mov	w1, 0
	mov	w0, 0
	bl	_Z3soliiii
	mov	w0, 0
	b	.L72
.L69:
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNSt6vectorIiSaIiEED1Ev
	b	.L65
.L68:
	mov	x19, x0
.L65:
	add	x0, sp, 64
	bl	_ZNSaIiED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.L71:
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZNSt6vectorIbSaIbEED1Ev
	b	.L67
.L70:
	mov	x19, x0
.L67:
	add	x0, sp, 112
	bl	_ZNSaIbED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE5:
.L72:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9718:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9718:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9718-.LLSDACSB9718
.LLSDACSB9718:
	.uleb128 .LEHB0-.LFB9718
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9718
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L68-.LFB9718
	.uleb128 0
	.uleb128 .LEHB2-.LFB9718
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L69-.LFB9718
	.uleb128 0
	.uleb128 .LEHB3-.LFB9718
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L70-.LFB9718
	.uleb128 0
	.uleb128 .LEHB4-.LFB9718
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L71-.LFB9718
	.uleb128 0
	.uleb128 .LEHB5-.LFB9718
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE9718:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB10030:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L74
	ldr	x0, [sp]
	b	.L75
.L74:
	ldr	x0, [sp, 8]
.L75:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10030:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSaImED2Ev,"axG",@progbits,_ZNSaImED5Ev,comdat
	.align	2
	.weak	_ZNSaImED2Ev
	.type	_ZNSaImED2Ev, %function
_ZNSaImED2Ev:
.LFB10328:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorImED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10328:
	.size	_ZNSaImED2Ev, .-_ZNSaImED2Ev
	.weak	_ZNSaImED1Ev
	.set	_ZNSaImED1Ev,_ZNSaImED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev:
.LFB10408:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt6vectorIiSaIiEEEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10408:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt6vectorIiSaIiEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIiSaIiEEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIiSaIiEEED2Ev
	.type	_ZNSaISt6vectorIiSaIiEEED2Ev, %function
_ZNSaISt6vectorIiSaIiEEED2Ev:
.LFB10411:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10411:
	.size	_ZNSaISt6vectorIiSaIiEEED2Ev, .-_ZNSaISt6vectorIiSaIiEEED2Ev
	.weak	_ZNSaISt6vectorIiSaIiEEED1Ev
	.set	_ZNSaISt6vectorIiSaIiEEED1Ev,_ZNSaISt6vectorIiSaIiEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev:
.LFB10414:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10414
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10414:
	.section	.gcc_except_table
.LLSDA10414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10414-.LLSDACSB10414
.LLSDACSB10414:
.LLSDACSE10414:
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED1Ev,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev:
.LFB10417:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt6vectorIbSaIbEEEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt6vectorIbSaIbEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIbSaIbEEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIbSaIbEEED2Ev
	.type	_ZNSaISt6vectorIbSaIbEEED2Ev, %function
_ZNSaISt6vectorIbSaIbEEED2Ev:
.LFB10420:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10420:
	.size	_ZNSaISt6vectorIbSaIbEEED2Ev, .-_ZNSaISt6vectorIbSaIbEEED2Ev
	.weak	_ZNSaISt6vectorIbSaIbEEED1Ev
	.set	_ZNSaISt6vectorIbSaIbEEED1Ev,_ZNSaISt6vectorIbSaIbEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev:
.LFB10423:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10423
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10423:
	.section	.gcc_except_table
.LLSDA10423:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10423-.LLSDACSB10423
.LLSDACSB10423:
.LLSDACSE10423:
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED1Ev,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm:
.LFB10425:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [x0]
	ldr	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10425:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, %function
_ZNSt6vectorIiSaIiEEixEm:
.LFB10426:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10426:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm:
.LFB10428:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [x0]
	ldr	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10428:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EEixEm
	.section	.text._ZNSt6vectorIbSaIbEEixEm,"axG",@progbits,_ZNSt6vectorIbSaIbEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEixEm
	.type	_ZNSt6vectorIbSaIbEEixEm, %function
_ZNSt6vectorIbSaIbEEixEm:
.LFB10429:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, sp, 32
	bl	_ZNKSt13_Bit_iteratorixEl
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10429:
	.size	_ZNSt6vectorIbSaIbEEixEm, .-_ZNSt6vectorIbSaIbEEixEm
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC5Ev,comdat
	.align	2
	.weak	_ZNSaIiEC2Ev
	.type	_ZNSaIiEC2Ev, %function
_ZNSaIiEC2Ev:
.LFB10432:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10432:
	.size	_ZNSaIiEC2Ev, .-_ZNSaIiEC2Ev
	.weak	_ZNSaIiEC1Ev
	.set	_ZNSaIiEC1Ev,_ZNSaIiEC2Ev
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED5Ev,comdat
	.align	2
	.weak	_ZNSaIiED2Ev
	.type	_ZNSaIiED2Ev, %function
_ZNSaIiED2Ev:
.LFB10435:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10435:
	.size	_ZNSaIiED2Ev, .-_ZNSaIiED2Ev
	.weak	_ZNSaIiED1Ev
	.set	_ZNSaIiED1Ev,_ZNSaIiED2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, %function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB10438:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10438
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
.LEHB6:
	bl	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.LEHE6:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB7:
	bl	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
.LEHE7:
	b	.L96
.L95:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	mov	x0, x19
.LEHB8:
	bl	_Unwind_Resume
.LEHE8:
.L96:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
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
	.uleb128 .LEHB6-.LFB10438
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB10438
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L95-.LFB10438
	.uleb128 0
	.uleb128 .LEHB8-.LFB10438
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10438:
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, %function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB10441:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10441
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
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
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_:
.LFB10443:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L99
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	sub	x0, x0, x1
	ldr	x3, [sp, 40]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	b	.L101
.L99:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L101
	ldr	x0, [sp, 56]
	ldr	x2, [x0]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_
.L101:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10443:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEmRKS1_
	.section	.text._ZNSaIbEC2Ev,"axG",@progbits,_ZNSaIbEC5Ev,comdat
	.align	2
	.weak	_ZNSaIbEC2Ev
	.type	_ZNSaIbEC2Ev, %function
_ZNSaIbEC2Ev:
.LFB10445:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10445:
	.size	_ZNSaIbEC2Ev, .-_ZNSaIbEC2Ev
	.weak	_ZNSaIbEC1Ev
	.set	_ZNSaIbEC1Ev,_ZNSaIbEC2Ev
	.section	.text._ZNSaIbED2Ev,"axG",@progbits,_ZNSaIbED5Ev,comdat
	.align	2
	.weak	_ZNSaIbED2Ev
	.type	_ZNSaIbED2Ev, %function
_ZNSaIbED2Ev:
.LFB10448:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIbED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10448:
	.size	_ZNSaIbED2Ev, .-_ZNSaIbED2Ev
	.weak	_ZNSaIbED1Ev
	.set	_ZNSaIbED1Ev,_ZNSaIbED2Ev
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.type	_ZNSt6vectorIbSaIbEEC2EmRKS0_, %function
_ZNSt6vectorIbSaIbEEC2EmRKS0_:
.LFB10451:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	wzr, [sp, 63]
	add	x0, sp, 63
	ldr	x3, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10451:
	.size	_ZNSt6vectorIbSaIbEEC2EmRKS0_, .-_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.weak	_ZNSt6vectorIbSaIbEEC1EmRKS0_
	.set	_ZNSt6vectorIbSaIbEEC1EmRKS0_,_ZNSt6vectorIbSaIbEEC2EmRKS0_
	.section	.text._ZNSt6vectorIbSaIbEED2Ev,"axG",@progbits,_ZNSt6vectorIbSaIbEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEED2Ev
	.type	_ZNSt6vectorIbSaIbEED2Ev, %function
_ZNSt6vectorIbSaIbEED2Ev:
.LFB10454:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bvector_baseISaIbEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10454:
	.size	_ZNSt6vectorIbSaIbEED2Ev, .-_ZNSt6vectorIbSaIbEED2Ev
	.weak	_ZNSt6vectorIbSaIbEED1Ev
	.set	_ZNSt6vectorIbSaIbEED1Ev,_ZNSt6vectorIbSaIbEED2Ev
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_:
.LFB10456:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L107
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	sub	x0, x0, x1
	ldr	x3, [sp, 40]
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	b	.L109
.L107:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	cmp	x0, x1
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L109
	ldr	x0, [sp, 56]
	ldr	x2, [x0]
	ldr	x1, [sp, 48]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_
.L109:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10456:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorImED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorImED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorImED2Ev, %function
_ZN9__gnu_cxx13new_allocatorImED2Ev:
.LFB10748:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10748:
	.size	_ZN9__gnu_cxx13new_allocatorImED2Ev, .-_ZN9__gnu_cxx13new_allocatorImED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorImED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorImED1Ev,_ZN9__gnu_cxx13new_allocatorImED2Ev
	.section	.text._ZNSaISt6vectorIiSaIiEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIiSaIiEEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIiSaIiEEEC2Ev
	.type	_ZNSaISt6vectorIiSaIiEEEC2Ev, %function
_ZNSaISt6vectorIiSaIiEEEC2Ev:
.LFB10849:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10849:
	.size	_ZNSaISt6vectorIiSaIiEEEC2Ev, .-_ZNSaISt6vectorIiSaIiEEEC2Ev
	.weak	_ZNSaISt6vectorIiSaIiEEEC1Ev
	.set	_ZNSaISt6vectorIiSaIiEEEC1Ev,_ZNSaISt6vectorIiSaIiEEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB10852:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10852:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev:
.LFB10855:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10855:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m:
.LFB10857:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L116
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
.L116:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10857:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZNSaISt6vectorIbSaIbEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIbSaIbEEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIbSaIbEEEC2Ev
	.type	_ZNSaISt6vectorIbSaIbEEEC2Ev, %function
_ZNSaISt6vectorIbSaIbEEEC2Ev:
.LFB10859:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10859:
	.size	_ZNSaISt6vectorIbSaIbEEEC2Ev, .-_ZNSaISt6vectorIbSaIbEEEC2Ev
	.weak	_ZNSaISt6vectorIbSaIbEEEC1Ev
	.set	_ZNSaISt6vectorIbSaIbEEEC1Ev,_ZNSaISt6vectorIbSaIbEEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB10862:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10862:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev:
.LFB10865:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10865:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEED2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m:
.LFB10867:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L122
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m
.L122:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10867:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZNSt6vectorIbSaIbEE5beginEv,"axG",@progbits,_ZNSt6vectorIbSaIbEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE5beginEv
	.type	_ZNSt6vectorIbSaIbEE5beginEv, %function
_ZNSt6vectorIbSaIbEE5beginEv:
.LFB10869:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -64
	.cfi_offset 21, -56
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	add	x0, sp, 64
	mov	w2, 0
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldp	x0, x1, [sp, 64]
	stp	x0, x1, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10869:
	.size	_ZNSt6vectorIbSaIbEE5beginEv, .-_ZNSt6vectorIbSaIbEE5beginEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:
.LFB10871:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10871:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiEC1Ev,_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB10874:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10874:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiED1Ev,_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.section	.rodata
	.align	3
.LC5:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_:
.LFB10876:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaIiEC1ERKS_
	add	x0, sp, 56
	bl	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIiED1Ev
	cmp	w19, 0
	beq	.L128
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	_ZSt20__throw_length_errorPKc
.L128:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10876:
	.size	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB10879:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10879:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, %function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB10881:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10881
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB9:
	bl	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.LEHE9:
	b	.L134
.L133:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
.L134:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10881:
	.section	.gcc_except_table
.LLSDA10881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10881-.LLSDACSB10881
.LLSDACSB10881:
	.uleb128 .LEHB9-.LFB10881
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L133-.LFB10881
	.uleb128 0
	.uleb128 .LEHB10-.LFB10881
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE10881:
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, %function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB10884:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10884
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10884:
	.section	.gcc_except_table
.LLSDA10884:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10884-.LLSDACSB10884
.LLSDACSB10884:
.LLSDACSE10884:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE21_M_default_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.type	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, %function
_ZNSt6vectorIiSaIiEE21_M_default_initializeEm:
.LFB10886:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10886:
	.size	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, .-_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB10887:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10887:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, %function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:
.LFB10888:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPiEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10888:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.section	.text._ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv, %function
_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv:
.LFB10889:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10889:
	.size	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv, .-_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	.section	.rodata
	.align	3
.LC6:
	.string	"vector::_M_fill_insert"
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:
.LFB10890:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10890
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -176
	.cfi_offset 20, -168
	.cfi_offset 21, -160
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L155
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bhi	.L144
	add	x0, sp, 88
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
.LEHB11:
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
.LEHE11:
	add	x0, sp, 88
.LEHB12:
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv
	str	x0, [sp, 152]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv
	str	x0, [sp, 120]
	add	x1, sp, 64
	add	x0, sp, 120
	bl	_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	str	x0, [sp, 144]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 136]
	ldr	x1, [sp, 144]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bls	.L145
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	add	x19, x2, x0
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	ldr	x21, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x3, [x0]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 136]
	add	x0, x1, x0
	ldr	x2, [sp, 136]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x2, [x0]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x2, [sp, 152]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	b	.L146
.L145:
	ldr	x0, [sp, 72]
	ldr	x19, [x0, 8]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 144]
	sub	x20, x1, x0
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 152]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x20
	ldr	x1, [sp, 136]
	mov	x0, x19
	bl	_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 144]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x0, [x0]
	ldr	x2, [sp, 152]
	ldr	x1, [sp, 136]
	bl	_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
.LEHE12:
.L146:
	add	x0, sp, 88
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD1Ev
	b	.L155
.L144:
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
.LEHB13:
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc
	str	x0, [sp, 176]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv
	str	x0, [sp, 128]
	add	x1, sp, 128
	add	x0, sp, 64
	bl	_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	str	x0, [sp, 168]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 176]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
.LEHE13:
	str	x0, [sp, 160]
	ldr	x0, [sp, 160]
	str	x0, [sp, 184]
	ldr	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 160]
	add	x19, x0, x1
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 56]
	mov	x0, x19
.LEHB14:
	bl	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	str	xzr, [sp, 184]
	ldr	x0, [sp, 72]
	ldr	x19, [x0]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 160]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	str	x0, [sp, 184]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 184]
	add	x0, x0, x1
	str	x0, [sp, 184]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 184]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
.LEHE14:
	str	x0, [sp, 184]
	ldr	x0, [sp, 72]
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB15:
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	ldr	x3, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	x4, [x0]
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 160]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 184]
	str	x1, [x0, 8]
	ldr	x1, [sp, 176]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 160]
	add	x1, x0, x1
	ldr	x0, [sp, 72]
	str	x1, [x0, 16]
	b	.L155
.L152:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE15:
.L153:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 184]
	cmp	x0, 0
	bne	.L149
	ldr	x1, [sp, 168]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 160]
	add	x19, x0, x1
	ldr	x1, [sp, 168]
	ldr	x0, [sp, 56]
	add	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 160]
	add	x20, x0, x1
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB16:
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	b	.L150
.L149:
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 160]
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
.L150:
	ldr	x0, [sp, 72]
	ldr	x2, [sp, 176]
	ldr	x1, [sp, 160]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	bl	__cxa_rethrow
.LEHE16:
.L154:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L155:
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10890:
	.section	.gcc_except_table
	.align	2
.LLSDA10890:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10890-.LLSDATTD10890
.LLSDATTD10890:
	.byte	0x1
	.uleb128 .LLSDACSE10890-.LLSDACSB10890
.LLSDACSB10890:
	.uleb128 .LEHB11-.LFB10890
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB10890
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L152-.LFB10890
	.uleb128 0
	.uleb128 .LEHB13-.LFB10890
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB10890
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L153-.LFB10890
	.uleb128 0x1
	.uleb128 .LEHB15-.LFB10890
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB10890
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L154-.LFB10890
	.uleb128 0
	.uleb128 .LEHB17-.LFB10890
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE10890:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10890:
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv:
.LFB10891:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC1ERKS4_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10891:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_:
.LFB10892:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10892
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L160
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L160:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10892:
	.section	.gcc_except_table
.LLSDA10892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10892-.LLSDACSB10892
.LLSDACSB10892:
.LLSDACSE10892:
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIbEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIbEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIbEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIbEC2Ev:
.LFB10894:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10894:
	.size	_ZN9__gnu_cxx13new_allocatorIbEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIbEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIbEC1Ev,_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIbED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIbED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIbED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIbED2Ev:
.LFB10897:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10897:
	.size	_ZN9__gnu_cxx13new_allocatorIbED2Ev, .-_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIbED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIbED1Ev,_ZN9__gnu_cxx13new_allocatorIbED2Ev
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKbRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKbRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.type	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, %function
_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_:
.LFB10900:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10900
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 32]
	bl	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB18:
	bl	_ZNSt6vectorIbSaIbEE13_M_initializeEm
.LEHE18:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	b	.L166
.L165:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt13_Bvector_baseISaIbEED2Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.LEHE19:
.L166:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10900:
	.section	.gcc_except_table
.LLSDA10900:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10900-.LLSDACSB10900
.LLSDACSB10900:
	.uleb128 .LEHB18-.LFB10900
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L165-.LFB10900
	.uleb128 0
	.uleb128 .LEHB19-.LFB10900
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE10900:
	.section	.text._ZNSt6vectorIbSaIbEEC2EmRKbRKS0_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EmRKbRKS0_,comdat
	.size	_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, .-_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.weak	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_
	.set	_ZNSt6vectorIbSaIbEEC1EmRKbRKS0_,_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.type	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev, %function
_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev:
.LFB10904:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaImED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10904:
	.size	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev, .-_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	.set	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev
	.section	.text._ZNSt13_Bvector_baseISaIbEED2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEED5Ev,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEED2Ev
	.type	_ZNSt13_Bvector_baseISaIbEED2Ev, %function
_ZNSt13_Bvector_baseISaIbEED2Ev:
.LFB10906:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10906
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10906:
	.section	.gcc_except_table
.LLSDA10906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10906-.LLSDACSB10906
.LLSDACSB10906:
.LLSDACSE10906:
	.section	.text._ZNSt13_Bvector_baseISaIbEED2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEED5Ev,comdat
	.size	_ZNSt13_Bvector_baseISaIbEED2Ev, .-_ZNSt13_Bvector_baseISaIbEED2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEED1Ev
	.set	_ZNSt13_Bvector_baseISaIbEED1Ev,_ZNSt13_Bvector_baseISaIbEED2Ev
	.section	.text._ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv, %function
_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv:
.LFB10908:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10908:
	.size	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv, .-_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:
.LFB10909:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10909
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	.cfi_offset 21, -176
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L184
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bhi	.L173
	add	x0, sp, 88
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
.LEHB20:
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
.LEHE20:
	add	x0, sp, 88
.LEHB21:
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv
	str	x0, [sp, 168]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv
	str	x0, [sp, 136]
	add	x1, sp, 64
	add	x0, sp, 136
	bl	_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	str	x0, [sp, 160]
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 8]
	str	x0, [sp, 152]
	ldr	x1, [sp, 160]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bls	.L174
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	add	x19, x2, x0
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	ldr	x21, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x3, [x0]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 152]
	add	x0, x1, x0
	ldr	x2, [sp, 152]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x2, [x0]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x2, [sp, 168]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	b	.L175
.L174:
	ldr	x0, [sp, 72]
	ldr	x19, [x0, 8]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 160]
	sub	x20, x1, x0
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 168]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x20
	ldr	x1, [sp, 152]
	mov	x0, x19
	bl	_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	ldr	x0, [sp, 72]
	ldr	x2, [x0, 8]
	ldr	x1, [sp, 160]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 72]
	str	x1, [x0, 8]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x0, [x0]
	ldr	x2, [sp, 168]
	ldr	x1, [sp, 152]
	bl	_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
.LEHE21:
.L175:
	add	x0, sp, 88
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD1Ev
	b	.L184
.L173:
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
.LEHB22:
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc
	str	x0, [sp, 192]
	ldr	x0, [sp, 72]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv
	str	x0, [sp, 144]
	add	x1, sp, 144
	add	x0, sp, 64
	bl	_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	str	x0, [sp, 184]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 192]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm
.LEHE22:
	str	x0, [sp, 176]
	ldr	x0, [sp, 176]
	str	x0, [sp, 200]
	ldr	x1, [sp, 184]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 176]
	add	x19, x0, x1
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 56]
	mov	x0, x19
.LEHB23:
	bl	_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	str	xzr, [sp, 200]
	ldr	x0, [sp, 72]
	ldr	x19, [x0]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 176]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	str	x0, [sp, 200]
	ldr	x1, [sp, 56]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 200]
	add	x0, x0, x1
	str	x0, [sp, 200]
	add	x0, sp, 64
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 200]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
.LEHE23:
	str	x0, [sp, 200]
	ldr	x0, [sp, 72]
	ldr	x19, [x0]
	ldr	x0, [sp, 72]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB24:
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	ldr	x3, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	x4, [x0]
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 176]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 200]
	str	x1, [x0, 8]
	ldr	x1, [sp, 192]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 176]
	add	x1, x0, x1
	ldr	x0, [sp, 72]
	str	x1, [x0, 16]
	b	.L184
.L181:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE24:
.L182:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 200]
	cmp	x0, 0
	bne	.L178
	ldr	x1, [sp, 184]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 176]
	add	x19, x0, x1
	ldr	x1, [sp, 184]
	ldr	x0, [sp, 56]
	add	x1, x1, x0
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 176]
	add	x20, x0, x1
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB25:
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	b	.L179
.L178:
	ldr	x0, [sp, 72]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 200]
	ldr	x0, [sp, 176]
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
.L179:
	ldr	x0, [sp, 72]
	ldr	x2, [sp, 192]
	ldr	x1, [sp, 176]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE13_M_deallocateEPS2_m
	bl	__cxa_rethrow
.LEHE25:
.L183:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.LEHE26:
.L184:
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10909:
	.section	.gcc_except_table
	.align	2
.LLSDA10909:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10909-.LLSDATTD10909
.LLSDATTD10909:
	.byte	0x1
	.uleb128 .LLSDACSE10909-.LLSDACSB10909
.LLSDACSB10909:
	.uleb128 .LEHB20-.LFB10909
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB10909
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L181-.LFB10909
	.uleb128 0
	.uleb128 .LEHB22-.LFB10909
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB10909
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L182-.LFB10909
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB10909
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB10909
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L183-.LFB10909
	.uleb128 0
	.uleb128 .LEHB26-.LFB10909
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE10909:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10909:
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_,comdat
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv:
.LFB10910:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC1ERKS4_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10910:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE3endEv
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_:
.LFB10911:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10911
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L189
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L189:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10911:
	.section	.gcc_except_table
.LLSDA10911:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10911-.LLSDACSB10911
.LLSDACSB10911:
.LLSDACSE10911:
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorImEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorImEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorImEC2Ev:
.LFB11065:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11065:
	.size	_ZN9__gnu_cxx13new_allocatorImEC2Ev, .-_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorImEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorImEC1Ev,_ZN9__gnu_cxx13new_allocatorImEC2Ev
	.section	.text._ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm,"axG",@progbits,_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	.type	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, %function
_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm:
.LFB11067:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11067:
	.size	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, .-_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev:
.LFB11109:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11109:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m, %function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m:
.LFB11111:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11111:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev:
.LFB11113:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11113:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m, %function
_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m:
.LFB11115:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11115:
	.size	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE10deallocateERS3_PS2_m
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB11117:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 2305843009213693951
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11117:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIiEC2ERKS_,"axG",@progbits,_ZNSaIiEC5ERKS_,comdat
	.align	2
	.weak	_ZNSaIiEC2ERKS_
	.type	_ZNSaIiEC2ERKS_, %function
_ZNSaIiEC2ERKS_:
.LFB11119:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11119:
	.size	_ZNSaIiEC2ERKS_, .-_ZNSaIiEC2ERKS_
	.weak	_ZNSaIiEC1ERKS_
	.set	_ZNSaIiEC1ERKS_,_ZNSaIiEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB11122:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiEC2ERKS_
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11122:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, %function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB11124:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11124:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, %function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB11125:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L203
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.L203:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11125:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E:
.LFB11126:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11126:
	.size	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, %function
_ZSt8_DestroyIPiEvT_S1_:
.LFB11127:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11127:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC5IJRKS1_EEEPS3_DpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_:
.LFB11131:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x20, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x2, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11131:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev:
.LFB11134:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11134:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD1Ev
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD1Ev,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_valueD2Ev
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv:
.LFB11136:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11136:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_valEv
	.section	.text._ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, %function
_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11137:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11137:
	.size	_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11138:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11138:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.align	2
	.weak	_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_, %function
_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11139:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11139:
	.size	_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt22__uninitialized_move_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv:
.LFB11140:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11140:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv
	.section	.text._ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_,comdat
	.align	2
	.weak	_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_
	.type	_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_, %function
_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_:
.LFB11141:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11141:
	.size	_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_, .-_ZSt13move_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_
	.section	.text._ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_,comdat
	.align	2
	.weak	_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	.type	_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_, %function
_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_:
.LFB11142:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11142:
	.size	_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_, .-_ZSt4fillIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.align	2
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, %function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E:
.LFB11143:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11143:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.section	.text._ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc, %function
_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc:
.LFB11144:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L225
	ldr	x0, [sp, 40]
	bl	_ZSt20__throw_length_errorPKc
.L225:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L226
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L227
.L226:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv
	b	.L228
.L227:
	ldr	x0, [sp, 72]
.L228:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11144:
	.size	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv:
.LFB11145:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC1ERKS4_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11145:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm:
.LFB11146:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L233
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	b	.L235
.L233:
	mov	x0, 0
.L235:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11146:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.align	2
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_, %function
_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11147:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11147:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E, %function
_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E:
.LFB11148:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11148:
	.size	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC5ERKS4_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_, %function
_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_:
.LFB11150:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11150:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_
	.section	.text._ZNSt13_Bvector_baseISaIbEEC2ERKS0_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEEC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.type	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, %function
_ZNSt13_Bvector_baseISaIbEEC2ERKS0_:
.LFB11153:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaImEC1IbEERKSaIT_E
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	add	x0, sp, 56
	bl	_ZNSaImED1Ev
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11153:
	.size	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, .-_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.weak	_ZNSt13_Bvector_baseISaIbEEC1ERKS0_
	.set	_ZNSt13_Bvector_baseISaIbEEC1ERKS0_,_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.section	.text._ZNSt6vectorIbSaIbEE13_M_initializeEm,"axG",@progbits,_ZNSt6vectorIbSaIbEE13_M_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE13_M_initializeEm
	.type	_ZNSt6vectorIbSaIbEE13_M_initializeEm, %function
_ZNSt6vectorIbSaIbEE13_M_initializeEm:
.LFB11155:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L243
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	str	x0, [sp, 72]
	ldr	x0, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 32]
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofImEPT_RS0_
	mov	x1, x0
	add	x0, sp, 40
	mov	w2, 0
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 40
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	ldr	x1, [sp, 16]
	add	x0, sp, 40
	bl	_ZStplRKSt13_Bit_iteratorl
	stp	x0, x1, [sp, 56]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 56
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
.L243:
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11155:
	.size	_ZNSt6vectorIbSaIbEE13_M_initializeEm, .-_ZNSt6vectorIbSaIbEE13_M_initializeEm
	.section	.text._ZNSt6vectorIbSaIbEE19_M_initialize_valueEb,"axG",@progbits,_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	.type	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, %function
_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb:
.LFB11156:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	strb	w1, [sp, 39]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L248
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	beq	.L246
	mov	w19, -1
	b	.L247
.L246:
	mov	w19, 0
.L247:
	ldr	x0, [sp, 40]
	bl	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	mov	x2, x0
	mov	w1, w19
	ldr	x0, [sp, 56]
	bl	memset
.L248:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11156:
	.size	_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, .-_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.type	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, %function
_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv:
.LFB11157:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L251
	ldr	x0, [sp, 24]
	bl	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 40]
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x3
	bl	_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
.L251:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11157:
	.size	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, .-_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC5IJRKS1_EEEPS3_DpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_:
.LFB11160:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x20, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x2, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11160:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_
	.set	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC1IJRKS1_EEEPS3_DpOT_,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev:
.LFB11163:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11163:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD1Ev
	.set	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD1Ev,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_valueD2Ev
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv:
.LFB11165:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11165:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_valEv
	.section	.text._ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, %function
_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11166:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11166:
	.size	_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11167:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11167:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.align	2
	.weak	_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_, %function
_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11168:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11168:
	.size	_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt22__uninitialized_move_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv:
.LFB11169:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11169:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEE4baseEv
	.section	.text._ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_,comdat
	.align	2
	.weak	_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_
	.type	_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_, %function
_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_:
.LFB11170:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_, .-_ZSt13move_backwardIPSt6vectorIbSaIbEES3_ET0_T_S5_S4_
	.section	.text._ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_,comdat
	.align	2
	.weak	_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	.type	_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_, %function
_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_:
.LFB11171:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11171:
	.size	_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_, .-_ZSt4fillIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.align	2
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, %function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E:
.LFB11172:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11172:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt6vectorIbSaIbEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.section	.text._ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc, %function
_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc:
.LFB11173:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L270
	ldr	x0, [sp, 40]
	bl	_ZSt20__throw_length_errorPKc
.L270:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L271
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L272
.L271:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv
	b	.L273
.L272:
	ldr	x0, [sp, 72]
.L273:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11173:
	.size	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIS_IbSaIbEESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv:
.LFB11174:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC1ERKS4_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE5beginEv
	.section	.text._ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm:
.LFB11175:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L278
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m
	b	.L280
.L278:
	mov	x0, 0
.L280:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE11_M_allocateEm
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.align	2
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_, %function
_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB11176:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIbSaIbEES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E, %function
_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E:
.LFB11177:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11177:
	.size	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC5ERKS4_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_, %function
_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_:
.LFB11179:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11179:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIbSaIbEES1_IS3_SaIS3_EEEC2ERKS4_
	.section	.text._ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	.type	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm, %function
_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm:
.LFB11279:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11279:
	.size	_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm, .-_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m:
.LFB11317:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11317:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m:
.LFB11318:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11318:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE10deallocateEPS3_m
	.section	.text._ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_:
.LFB11319:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11319:
	.size	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, %function
_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_:
.LFB11321:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11321:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB11324:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11324:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB11326:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L296
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	b	.L298
.L296:
	mov	x0, 0
.L298:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, %function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim:
.LFB11327:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.section	.text._ZSt25__uninitialized_default_nIPimET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPimET_S1_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPimET_S1_T0_, %function
_ZSt25__uninitialized_default_nIPimET_S1_T0_:
.LFB11328:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZSt25__uninitialized_default_nIPimET_S1_T0_, .-_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB11329:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv:
.LFB11330:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11330:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE16_Temporary_value6_M_ptrEv
	.section	.text._ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE, %function
_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB11331:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11331:
	.size	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_:
.LFB11332:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11332:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_, %function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_:
.LFB11333:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11333:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_, .-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE7destroyIS2_EEvRS3_PT_
	.section	.text._ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_,"axG",@progbits,_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_,comdat
	.align	2
	.weak	_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_
	.type	_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_, %function
_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_:
.LFB11334:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_
	ldr	x1, [x0]
	add	x0, sp, 40
	bl	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC1ES3_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11334:
	.size	_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_, .-_ZSt18make_move_iteratorIPSt6vectorIiSaIiEEESt13move_iteratorIT_ES5_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E:
.LFB11335:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11335:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIiSaIiEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.section	.text._ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_,"axG",@progbits,_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_
	.type	_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_, %function
_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_:
.LFB11336:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11336:
	.size	_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_, .-_ZSt12__miter_baseIPSt6vectorIiSaIiEEET_S4_
	.section	.text._ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.type	_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, %function
_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_:
.LFB11337:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11337:
	.size	_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, .-_ZSt22__copy_move_backward_aILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.section	.text._ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	.type	_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_, %function
_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_:
.LFB11339:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11339:
	.size	_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_, .-_ZSt8__fill_aIPSt6vectorIiSaIiEES2_EvT_S4_RKT0_
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_, %function
_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_:
.LFB11340:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11340:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	.section	.text._ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv, %function
_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv:
.LFB11341:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11341:
	.size	_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m, %function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m:
.LFB11342:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11342:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_,comdat
	.align	2
	.weak	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_, %function
_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_:
.LFB11343:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	ldr	x1, [sp, 24]
	bl	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC1ES3_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11343:
	.size	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorISt6vectorIiSaIiEESt13move_iteratorIPS2_EET0_PT_
	.section	.text._ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.type	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_, %function
_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_:
.LFB11344:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11344:
	.size	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_, .-_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.section	.text._ZNSaImEC2IbEERKSaIT_E,"axG",@progbits,_ZNSaImEC5IbEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaImEC2IbEERKSaIT_E
	.type	_ZNSaImEC2IbEERKSaIT_E, %function
_ZNSaImEC2IbEERKSaIT_E:
.LFB11346:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorImEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11346:
	.size	_ZNSaImEC2IbEERKSaIT_E, .-_ZNSaImEC2IbEERKSaIT_E
	.weak	_ZNSaImEC1IbEERKSaIT_E
	.set	_ZNSaImEC1IbEERKSaIT_E,_ZNSaImEC2IbEERKSaIT_E
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC5ERKSaImE,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.type	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, %function
_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE:
.LFB11349:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSaImEC2ERKS_
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11349:
	.size	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, .-_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	.set	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE
	.section	.text._ZNSt13_Bvector_baseISaIbEE11_M_allocateEm,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	.type	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, %function
_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm:
.LFB11351:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11351:
	.size	_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, .-_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm
	.section	.text._ZNSt13_Bvector_baseISaIbEE8_S_nwordEm,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	.type	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, %function
_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm:
.LFB11352:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 63
	lsr	x0, x0, 6
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11352:
	.size	_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, .-_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm
	.section	.text._ZSt11__addressofImEPT_RS0_,"axG",@progbits,_ZSt11__addressofImEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofImEPT_RS0_
	.type	_ZSt11__addressofImEPT_RS0_, %function
_ZSt11__addressofImEPT_RS0_:
.LFB11353:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11353:
	.size	_ZSt11__addressofImEPT_RS0_, .-_ZSt11__addressofImEPT_RS0_
	.section	.text._ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv,"axG",@progbits,_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv,comdat
	.align	2
	.weak	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	.type	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, %function
_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv:
.LFB11354:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	cmp	x0, 0
	beq	.L336
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x0, #8
	bl	_ZSt11__addressofImEPT_RS0_
	add	x0, x0, 8
	b	.L337
.L336:
	mov	x0, 0
.L337:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11354:
	.size	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, .-_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, %function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv:
.LFB11355:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev
	ldr	x0, [sp, 24]
	mov	x1, x0
	add	x0, sp, 40
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [x0, 32]
	str	x0, [x1, 32]
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11355:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv:
.LFB11356:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11356:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE16_Temporary_value6_M_ptrEv
	.section	.text._ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE, %function
_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB11357:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11357:
	.size	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_:
.LFB11358:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11358:
	.size	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_
	.type	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_, %function
_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_:
.LFB11359:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11359:
	.size	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_, .-_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE7destroyIS2_EEvRS3_PT_
	.section	.text._ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_,"axG",@progbits,_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_,comdat
	.align	2
	.weak	_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_
	.type	_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_, %function
_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_:
.LFB11360:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_
	ldr	x1, [x0]
	add	x0, sp, 40
	bl	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC1ES3_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11360:
	.size	_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_, .-_ZSt18make_move_iteratorIPSt6vectorIbSaIbEEESt13move_iteratorIT_ES5_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E:
.LFB11361:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11361:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6vectorIbSaIbEEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.section	.text._ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_,"axG",@progbits,_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_
	.type	_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_, %function
_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_:
.LFB11362:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11362:
	.size	_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_, .-_ZSt12__miter_baseIPSt6vectorIbSaIbEEET_S4_
	.section	.text._ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.type	_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, %function
_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_:
.LFB11363:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11363:
	.size	_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, .-_ZSt22__copy_move_backward_aILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.section	.text._ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_,"axG",@progbits,_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	.type	_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_, %function
_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_:
.LFB11365:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11365:
	.size	_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_, .-_ZSt8__fill_aIPSt6vectorIbSaIbEES2_EvT_S4_RKT0_
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_, %function
_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_:
.LFB11366:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11366:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt6vectorIbSaIbEEmS2_ET_S4_T0_RKT1_
	.section	.text._ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv, %function
_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv:
.LFB11367:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11367:
	.size	_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorIS_IbSaIbEESaIS1_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m, %function
_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m:
.LFB11368:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11368:
	.size	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8allocateERS3_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_,comdat
	.align	2
	.weak	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_, %function
_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_:
.LFB11369:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	ldr	x1, [sp, 24]
	bl	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC1ES3_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11369:
	.size	_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorISt6vectorIbSaIbEESt13move_iteratorIPS2_EET0_PT_
	.section	.text._ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_
	.type	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_, %function
_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_:
.LFB11370:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11370:
	.size	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_, .-_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv:
.LFB11455:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11455:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m:
.LFB11456:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11456:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, %function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim:
.LFB11457:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11457:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.section	.text._ZSt11__addressofIiEPT_RS0_,"axG",@progbits,_ZSt11__addressofIiEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofIiEPT_RS0_
	.type	_ZSt11__addressofIiEPT_RS0_, %function
_ZSt11__addressofIiEPT_RS0_:
.LFB11459:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11459:
	.size	_ZSt11__addressofIiEPT_RS0_, .-_ZSt11__addressofIiEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_:
.LFB11458:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L372
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIiEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZSt10_ConstructIiJEEvPT_DpOT0_
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	str	x0, [sp, 24]
.L372:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11458:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_:
.LFB11460:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11460
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x0, [sp, 56]
	bl	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x21, x0
	ldr	x19, [sp, 64]
	mov	x1, x19
	mov	x0, 24
	bl	_ZnwmPv
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
.LEHB27:
	bl	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE27:
	b	.L377
.L376:
	mov	x21, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZdlPvS_
	mov	x0, x21
.LEHB28:
	bl	_Unwind_Resume
.LEHE28:
.L377:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11460:
	.section	.gcc_except_table
.LLSDA11460:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11460-.LLSDACSB11460
.LLSDACSB11460:
	.uleb128 .LEHB27-.LFB11460
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L376-.LFB11460
	.uleb128 0
	.uleb128 .LEHB28-.LFB11460
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE11460:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_:
.LFB11461:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNSt6vectorIiSaIiEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11461:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyIS3_EEvPT_
	.section	.text._ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.align	2
	.weak	_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_, %function
_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11462:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11462:
	.size	_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC5ES3_,comdat
	.align	2
	.weak	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_
	.type	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_, %function
_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_:
.LFB11464:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 16
	bl	_ZSt4moveIRPSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS6_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11464:
	.size	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_, .-_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_
	.weak	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC1ES3_
	.set	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC1ES3_,_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEC2ES3_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv, %function
_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv:
.LFB11469:
	.cfi_startproc
	mov	w0, 1
	ret
	.cfi_endproc
.LFE11469:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_, %function
_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_:
.LFB11466:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11466:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_, .-_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIiSaIiEEES4_ET0_T_S7_S6_
	.section	.text._ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_,"axG",@progbits,_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_
	.type	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_, %function
_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_:
.LFB11471:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11471:
	.size	_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_, .-_ZSt12__niter_baseIPSt6vectorIiSaIiEEET_S4_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, %function
_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_:
.LFB11472:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11472:
	.size	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.section	.text._ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_,"axG",@progbits,_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_
	.type	_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_, %function
_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_:
.LFB11473:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11473:
	.size	_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_, .-_ZSt12__niter_wrapIPSt6vectorIiSaIiEEET_RKS4_S4_
	.section	.text._ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,"axG",@progbits,_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.type	_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, %function
_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_:
.LFB11474:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L393
.L394:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEEaSERKS1_
	ldr	x0, [sp, 40]
	add	x0, x0, 24
	str	x0, [sp, 40]
.L393:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L394
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11474:
	.size	_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, .-_ZSt9__fill_a1IPSt6vectorIiSaIiEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,comdat
	.align	2
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_, %function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_:
.LFB11475:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11475
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L396
.L397:
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	ldr	x1, [sp, 40]
.LEHB29:
	bl	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
.LEHE29:
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x0, 24
	str	x0, [sp, 72]
.L396:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L397
	ldr	x0, [sp, 72]
	b	.L403
.L401:
	bl	__cxa_begin_catch
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
.LEHB30:
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	bl	__cxa_rethrow
.LEHE30:
.L402:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB31:
	bl	_Unwind_Resume
.LEHE31:
.L403:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11475:
	.section	.gcc_except_table
	.align	2
.LLSDA11475:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11475-.LLSDATTD11475
.LLSDATTD11475:
	.byte	0x1
	.uleb128 .LLSDACSE11475-.LLSDACSB11475
.LLSDACSB11475:
	.uleb128 .LEHB29-.LFB11475
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L401-.LFB11475
	.uleb128 0x1
	.uleb128 .LEHB30-.LFB11475
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L402-.LFB11475
	.uleb128 0
	.uleb128 .LEHB31-.LFB11475
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE11475:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11475:
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,comdat
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_:
.LFB11476:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11476:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11477:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11477:
	.size	_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv:
.LFB11479:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11479:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv:
.LFB11478:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L411
	ldr	x1, [sp, 32]
	mov	x0, -6148914691236517206
	movk	x0, 0xaaa, lsl 48
	cmp	x1, x0
	bls	.L412
	bl	_ZSt28__throw_bad_array_new_lengthv
.L412:
	bl	_ZSt17__throw_bad_allocv
.L411:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11478:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, %function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_:
.LFB11480:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L415
.L416:
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	bl	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 24]
.L415:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L416
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11480:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.section	.text._ZNSaImEC2ERKS_,"axG",@progbits,_ZNSaImEC5ERKS_,comdat
	.align	2
	.weak	_ZNSaImEC2ERKS_
	.type	_ZNSaImEC2ERKS_, %function
_ZNSaImEC2ERKS_:
.LFB11482:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11482:
	.size	_ZNSaImEC2ERKS_, .-_ZNSaImEC2ERKS_
	.weak	_ZNSaImEC1ERKS_
	.set	_ZNSaImEC1ERKS_,_ZNSaImEC2ERKS_
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, %function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev:
.LFB11485:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt13_Bit_iteratorC1Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	bl	_ZNSt13_Bit_iteratorC1Ev
	ldr	x0, [sp, 24]
	str	xzr, [x0, 32]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11485:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev
	.set	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1Ev,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.section	.text._ZNSt16allocator_traitsISaImEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaImEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaImEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaImEE8allocateERS0_m:
.LFB11487:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11487:
	.size	_ZNSt16allocator_traitsISaImEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaImEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_:
.LFB11488:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11488
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x0, [sp, 56]
	bl	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x21, x0
	ldr	x19, [sp, 64]
	mov	x1, x19
	mov	x0, 40
	bl	_ZnwmPv
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
.LEHB32:
	bl	_ZNSt6vectorIbSaIbEEC1ERKS1_
.LEHE32:
	b	.L424
.L423:
	mov	x21, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZdlPvS_
	mov	x0, x21
.LEHB33:
	bl	_Unwind_Resume
.LEHE33:
.L424:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11488:
	.section	.gcc_except_table
.LLSDA11488:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11488-.LLSDACSB11488
.LLSDACSB11488:
	.uleb128 .LEHB32-.LFB11488
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L423-.LFB11488
	.uleb128 0
	.uleb128 .LEHB33-.LFB11488
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE11488:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_:
.LFB11489:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNSt6vectorIbSaIbEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11489:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE7destroyIS3_EEvPT_
	.section	.text._ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.align	2
	.weak	_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_, %function
_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11490:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11490:
	.size	_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC5ES3_,comdat
	.align	2
	.weak	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_
	.type	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_, %function
_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_:
.LFB11492:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 16
	bl	_ZSt4moveIRPSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS6_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11492:
	.size	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_, .-_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_
	.weak	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC1ES3_
	.set	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC1ES3_,_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEC2ES3_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv, %function
_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv:
.LFB11496:
	.cfi_startproc
	mov	w0, 1
	ret
	.cfi_endproc
.LFE11496:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv, .-_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_, %function
_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_:
.LFB11494:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11494:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_, .-_ZSt18uninitialized_copyISt13move_iteratorIPSt6vectorIbSaIbEEES4_ET0_T_S7_S6_
	.section	.text._ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_,"axG",@progbits,_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_
	.type	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_, %function
_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_:
.LFB11499:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11499:
	.size	_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_, .-_ZSt12__niter_baseIPSt6vectorIbSaIbEEET_S4_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, %function
_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_:
.LFB11500:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11500:
	.size	_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a1ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.section	.text._ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_,"axG",@progbits,_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_
	.type	_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_, %function
_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_:
.LFB11501:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11501:
	.size	_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_, .-_ZSt12__niter_wrapIPSt6vectorIbSaIbEEET_RKS4_S4_
	.section	.text._ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,"axG",@progbits,_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.type	_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, %function
_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_:
.LFB11502:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L440
.L441:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEEaSERKS1_
	ldr	x0, [sp, 40]
	add	x0, x0, 40
	str	x0, [sp, 40]
.L440:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L441
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11502:
	.size	_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_, .-_ZSt9__fill_a1IPSt6vectorIbSaIbEES2_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SB_RKS7_
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_,comdat
	.align	2
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_, %function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_:
.LFB11503:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11503
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L443
.L444:
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_
	ldr	x1, [sp, 40]
.LEHB34:
	bl	_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_
.LEHE34:
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x0, 40
	str	x0, [sp, 72]
.L443:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L444
	ldr	x0, [sp, 72]
	b	.L450
.L448:
	bl	__cxa_begin_catch
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
.LEHB35:
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_
	bl	__cxa_rethrow
.LEHE35:
.L449:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB36:
	bl	_Unwind_Resume
.LEHE36:
.L450:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11503:
	.section	.gcc_except_table
	.align	2
.LLSDA11503:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11503-.LLSDATTD11503
.LLSDATTD11503:
	.byte	0x1
	.uleb128 .LLSDACSE11503-.LLSDACSB11503
.LLSDACSB11503:
	.uleb128 .LEHB34-.LFB11503
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L448-.LFB11503
	.uleb128 0x1
	.uleb128 .LEHB35-.LFB11503
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L449-.LFB11503
	.uleb128 0
	.uleb128 .LEHB36-.LFB11503
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE11503:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11503:
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_,comdat
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIbSaIbEEmS4_EET_S6_T0_RKT1_
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_:
.LFB11504:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 3689348814741910323
	movk	x0, 0x333, lsl 48
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11504:
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB11505:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11505:
	.size	_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv:
.LFB11507:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 3689348814741910323
	movk	x0, 0x333, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv:
.LFB11506:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L458
	ldr	x1, [sp, 32]
	mov	x0, 7378697629483820646
	movk	x0, 0x666, lsl 48
	cmp	x1, x0
	bls	.L459
	bl	_ZSt28__throw_bad_array_new_lengthv
.L459:
	bl	_ZSt17__throw_bad_allocv
.L458:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11506:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8allocateEmPKv
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_, %function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_:
.LFB11508:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L462
.L463:
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_
	bl	_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_
	ldr	x0, [sp, 24]
	add	x0, x0, 40
	str	x0, [sp, 24]
.L462:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L463
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11508:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIbSaIbEEEEvT_S6_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv:
.LFB11614:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 2305843009213693951
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11614:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv:
.LFB11615:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L467
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L468
	bl	_ZSt28__throw_bad_array_new_lengthv
.L468:
	bl	_ZSt17__throw_bad_allocv
.L467:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11615:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt10_ConstructIiJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIiJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructIiJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIiJEEvPT_DpOT0_, %function
_ZSt10_ConstructIiJEEvPT_DpOT0_:
.LFB11616:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11616:
	.size	_ZSt10_ConstructIiJEEvPT_DpOT0_, .-_ZSt10_ConstructIiJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_, %function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:
.LFB11617:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	bl	_ZSt17__size_to_integerm
	mov	x20, x0
	add	x0, sp, 72
	bl	_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	mov	w3, w21
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11617:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS1_
	.type	_ZNSt6vectorIiSaIiEEC2ERKS1_, %function
_ZNSt6vectorIiSaIiEEC2ERKS1_:
.LFB11619:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11619
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv
	mov	x20, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	add	x0, sp, 72
	mov	x8, x0
	mov	x0, x1
.LEHB37:
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
.LEHE37:
	add	x0, sp, 72
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB38:
	bl	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.LEHE38:
	add	x0, sp, 72
	bl	_ZNSaIiED1Ev
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE5beginEv
	mov	x20, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE3endEv
	mov	x21, x0
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
.LEHB39:
	bl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
.LEHE39:
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
	b	.L478
.L476:
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZNSaIiED1Ev
	mov	x0, x19
.LEHB40:
	bl	_Unwind_Resume
.L477:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE40:
.L478:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11619:
	.section	.gcc_except_table
.LLSDA11619:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11619-.LLSDACSB11619
.LLSDACSB11619:
	.uleb128 .LEHB37-.LFB11619
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB11619
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L476-.LFB11619
	.uleb128 0
	.uleb128 .LEHB39-.LFB11619
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L477-.LFB11619
	.uleb128 0
	.uleb128 .LEHB40-.LFB11619
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE11619:
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2ERKS1_, .-_ZNSt6vectorIiSaIiEEC2ERKS1_
	.weak	_ZNSt6vectorIiSaIiEEC1ERKS1_
	.set	_ZNSt6vectorIiSaIiEEC1ERKS1_,_ZNSt6vectorIiSaIiEEC2ERKS1_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv,comdat
	.align	2
	.weak	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv
	.type	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv, %function
_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv:
.LFB11622:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 24
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11622:
	.size	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv, .-_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_, %function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_:
.LFB11621:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11621
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	b	.L482
.L483:
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_
	add	x0, sp, 56
	bl	_ZNSt13move_iteratorIPSt6vectorIiSaIiEEEppEv
	ldr	x0, [sp, 72]
	add	x0, x0, 24
	str	x0, [sp, 72]
.L482:
	add	x1, sp, 48
	add	x0, sp, 56
.LEHB41:
	bl	_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
.LEHE41:
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L483
	ldr	x0, [sp, 72]
	b	.L489
.L487:
	bl	__cxa_begin_catch
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
.LEHB42:
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	bl	__cxa_rethrow
.LEHE42:
.L488:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB43:
	bl	_Unwind_Resume
.LEHE43:
.L489:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11621:
	.section	.gcc_except_table
	.align	2
.LLSDA11621:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11621-.LLSDATTD11621
.LLSDATTD11621:
	.byte	0x1
	.uleb128 .LLSDACSE11621-.LLSDACSB11621
.LLSDACSB11621:
	.uleb128 .LEHB41-.LFB11621
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L487-.LFB11621
	.uleb128 0x1
	.uleb128 .LEHB42-.LFB11621
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L488-.LFB11621
	.uleb128 0
	.uleb128 .LEHB43-.LFB11621
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE11621:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11621:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIiSaIiEEES6_EET0_T_S9_S8_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, %function
_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_:
.LFB11623:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11623:
	.size	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv, %function
_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv:
.LFB11625:
	.cfi_startproc
	mov	w0, 0
	ret
	.cfi_endproc
.LFE11625:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv
	.section	.text._ZNSt6vectorIiSaIiEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEaSERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEaSERKS1_
	.type	_ZNSt6vectorIiSaIiEEaSERKS1_, %function
_ZNSt6vectorIiSaIiEEaSERKS1_:
.LFB11624:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	beq	.L495
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE27_S_propagate_on_copy_assignEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L496
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE15_S_always_equalEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L497
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZStneRKSaIiES1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L497
	mov	w0, 1
	b	.L498
.L497:
	mov	w0, 0
.L498:
	cmp	w0, 0
	beq	.L499
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIiSaIiEE5clearEv
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x4, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	ldr	x0, [sp, 56]
	str	xzr, [x0]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 56]
	str	xzr, [x0, 16]
.L499:
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_
.L496:
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIiSaIiEE8capacityEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L500
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE5beginEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE3endEv
	mov	x3, x0
	mov	x2, x19
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x4, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 64]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	b	.L501
.L500:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L502
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE5beginEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIiSaIiEE3endEv
	mov	x20, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIiSaIiEE5beginEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIiSaIiEE3endEv
	mov	x20, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E
	b	.L501
.L502:
	ldr	x0, [sp, 48]
	ldr	x20, [x0]
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv
	lsl	x0, x0, 2
	add	x1, x19, x0
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x2, x0
	mov	x0, x20
	bl	_ZSt4copyIPiS0_ET0_T_S2_S1_
	ldr	x0, [sp, 48]
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv
	lsl	x0, x0, 2
	add	x19, x19, x0
	ldr	x0, [sp, 48]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	x21, [x0, 8]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x21
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E
.L501:
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
.L495:
	ldr	x0, [sp, 56]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11624:
	.size	_ZNSt6vectorIiSaIiEEaSERKS1_, .-_ZNSt6vectorIiSaIiEEaSERKS1_
	.section	.text._ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,comdat
	.align	2
	.weak	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.type	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_, %function
_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_:
.LFB11626:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11626:
	.size	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_, .-_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.section	.text._ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_, %function
_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_:
.LFB11627:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11627
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x0, [sp, 48]
	bl	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x21, x0
	ldr	x19, [sp, 56]
	mov	x1, x19
	mov	x0, 24
	bl	_ZnwmPv
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
.LEHB44:
	bl	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE44:
	b	.L509
.L508:
	mov	x21, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZdlPvS_
	mov	x0, x21
.LEHB45:
	bl	_Unwind_Resume
.LEHE45:
.L509:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11627:
	.section	.gcc_except_table
.LLSDA11627:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11627-.LLSDACSB11627
.LLSDACSB11627:
	.uleb128 .LEHB44-.LFB11627
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L508-.LFB11627
	.uleb128 0
	.uleb128 .LEHB45-.LFB11627
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE11627:
	.section	.text._ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_, %function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_:
.LFB11628:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11628:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS3_
	.section	.text._ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,comdat
	.align	2
	.weak	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.type	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_, %function
_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_:
.LFB11629:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11629:
	.size	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_, .-_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorImEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_, %function
_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_:
.LFB11631:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11631:
	.size	_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorImEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorImEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv:
.LFB11634:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11634:
	.size	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv:
.LFB11633:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorImE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L517
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L518
	bl	_ZSt28__throw_bad_array_new_lengthv
.L518:
	bl	_ZSt17__throw_bad_allocv
.L517:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11633:
	.size	_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv
	.section	.text._ZNSt6vectorIbSaIbEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5ERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEC2ERKS1_
	.type	_ZNSt6vectorIbSaIbEEC2ERKS1_, %function
_ZNSt6vectorIbSaIbEEC2ERKS1_:
.LFB11636:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11636
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	add	x0, sp, 56
	mov	x8, x0
	mov	x0, x1
.LEHB46:
	bl	_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_
.LEHE46:
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZNSaIbEC1ImEERKSaIT_E
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	add	x0, sp, 48
	bl	_ZNSaIbED1Ev
	add	x0, sp, 56
	bl	_ZNSaImED1Ev
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
.LEHB47:
	bl	_ZNSt6vectorIbSaIbEE13_M_initializeEm
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 80]
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 112]
	ldr	x5, [sp, 112]
	ldr	x4, [sp, 120]
	ldr	x3, [sp, 96]
	ldr	x2, [sp, 104]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x6, x4
	mov	x4, x2
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator
.LEHE47:
	stp	x0, x1, [sp, 64]
	b	.L523
.L522:
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEED2Ev
	mov	x0, x19
.LEHB48:
	bl	_Unwind_Resume
.LEHE48:
.L523:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11636:
	.section	.gcc_except_table
.LLSDA11636:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11636-.LLSDACSB11636
.LLSDACSB11636:
	.uleb128 .LEHB46-.LFB11636
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB11636
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L522-.LFB11636
	.uleb128 0
	.uleb128 .LEHB48-.LFB11636
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE11636:
	.section	.text._ZNSt6vectorIbSaIbEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIbSaIbEEC2ERKS1_, .-_ZNSt6vectorIbSaIbEEC2ERKS1_
	.weak	_ZNSt6vectorIbSaIbEEC1ERKS1_
	.set	_ZNSt6vectorIbSaIbEEC1ERKS1_,_ZNSt6vectorIbSaIbEEC2ERKS1_
	.section	.text._ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv,"axG",@progbits,_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv,comdat
	.align	2
	.weak	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv
	.type	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv, %function
_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv:
.LFB11639:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 40
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11639:
	.size	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv, .-_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_, %function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_:
.LFB11638:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11638
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	b	.L527
.L528:
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_
	add	x0, sp, 56
	bl	_ZNSt13move_iteratorIPSt6vectorIbSaIbEEEppEv
	ldr	x0, [sp, 72]
	add	x0, x0, 40
	str	x0, [sp, 72]
.L527:
	add	x1, sp, 48
	add	x0, sp, 56
.LEHB49:
	bl	_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
.LEHE49:
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L528
	ldr	x0, [sp, 72]
	b	.L534
.L532:
	bl	__cxa_begin_catch
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
.LEHB50:
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEEEvT_S4_
	bl	__cxa_rethrow
.LEHE50:
.L533:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB51:
	bl	_Unwind_Resume
.LEHE51:
.L534:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11638:
	.section	.gcc_except_table
	.align	2
.LLSDA11638:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11638-.LLSDATTD11638
.LLSDATTD11638:
	.byte	0x1
	.uleb128 .LLSDACSE11638-.LLSDACSB11638
.LLSDACSB11638:
	.uleb128 .LEHB49-.LFB11638
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L532-.LFB11638
	.uleb128 0x1
	.uleb128 .LEHB50-.LFB11638
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L533-.LFB11638
	.uleb128 0
	.uleb128 .LEHB51-.LFB11638
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE11638:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11638:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6vectorIbSaIbEEES6_EET0_T_S9_S8_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.type	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, %function
_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_:
.LFB11640:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11640:
	.size	_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_, .-_ZSt23__copy_move_backward_a2ILb1EPSt6vectorIbSaIbEES3_ET1_T0_S5_S4_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv, %function
_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv:
.LFB11642:
	.cfi_startproc
	mov	w0, 0
	ret
	.cfi_endproc
.LFE11642:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv, .-_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv
	.section	.text._ZNSt6vectorIbSaIbEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEaSERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEaSERKS1_
	.type	_ZNSt6vectorIbSaIbEEaSERKS1_, %function
_ZNSt6vectorIbSaIbEEaSERKS1_:
.LFB11641:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bne	.L540
	ldr	x0, [sp, 40]
	b	.L541
.L540:
	bl	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_copy_assignEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L542
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZStneRKSaImES1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L543
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt15__alloc_on_copyISaImEEvRT_RKS1_
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE13_M_initializeEm
	b	.L542
.L543:
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt15__alloc_on_copyISaImEEvRT_RKS1_
.L542:
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorIbSaIbEE8capacityEv
	cmp	x19, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L544
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE13_M_initializeEm
.L544:
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 64]
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 80]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 96]
	ldr	x5, [sp, 96]
	ldr	x4, [sp, 104]
	ldr	x3, [sp, 80]
	ldr	x2, [sp, 88]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	mov	x6, x4
	mov	x4, x2
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator
	stp	x0, x1, [sp, 48]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 48
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	ldr	x0, [sp, 40]
.L541:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11641:
	.size	_ZNSt6vectorIbSaIbEEaSERKS1_, .-_ZNSt6vectorIbSaIbEEaSERKS1_
	.section	.text._ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_,comdat
	.align	2
	.weak	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_
	.type	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_, %function
_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_:
.LFB11643:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11643:
	.size	_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_, .-_ZSt11__addressofISt6vectorIbSaIbEEEPT_RS3_
	.section	.text._ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_, %function
_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_:
.LFB11644:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11644
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x0, [sp, 48]
	bl	_ZSt7forwardIRKSt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x21, x0
	ldr	x19, [sp, 56]
	mov	x1, x19
	mov	x0, 40
	bl	_ZnwmPv
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
.LEHB52:
	bl	_ZNSt6vectorIbSaIbEEC1ERKS1_
.LEHE52:
	b	.L550
.L549:
	mov	x21, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZdlPvS_
	mov	x0, x21
.LEHB53:
	bl	_Unwind_Resume
.LEHE53:
.L550:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11644:
	.section	.gcc_except_table
.LLSDA11644:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11644-.LLSDACSB11644
.LLSDACSB11644:
	.uleb128 .LEHB52-.LFB11644
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L549-.LFB11644
	.uleb128 0
	.uleb128 .LEHB53-.LFB11644
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE11644:
	.section	.text._ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIbSaIbEEJRKS2_EEvPT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_, %function
_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_:
.LFB11645:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11645:
	.size	_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt6vectorIbSaIbEEEE8max_sizeERKS3_
	.section	.text._ZSt8_DestroyISt6vectorIbSaIbEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_,comdat
	.align	2
	.weak	_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_
	.type	_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_, %function
_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_:
.LFB11646:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIbSaIbEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11646:
	.size	_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_, .-_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_
	.section	.text._ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_, %function
_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB11714:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11714:
	.size	_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, %function
_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB11715:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L557
	ldr	x0, [sp, 40]
	b	.L558
.L557:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
.L558:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11715:
	.size	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, %function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB11716:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11716:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, %function
_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_:
.LFB11717:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	mov	x8, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11717:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB11718:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11718:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE5beginEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE5beginEv
	.type	_ZNKSt6vectorIiSaIiEE5beginEv, %function
_ZNKSt6vectorIiSaIiEE5beginEv:
.LFB11719:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11719:
	.size	_ZNKSt6vectorIiSaIiEE5beginEv, .-_ZNKSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNKSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE3endEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE3endEv
	.type	_ZNKSt6vectorIiSaIiEE3endEv, %function
_ZNKSt6vectorIiSaIiEE3endEv:
.LFB11720:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11720:
	.size	_ZNKSt6vectorIiSaIiEE3endEv, .-_ZNKSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E:
.LFB11721:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11721:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.section	.text._ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_,comdat
	.align	2
	.weak	_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_, %function
_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_:
.LFB11722:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11722:
	.size	_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_, .-_ZStneIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv, %function
_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv:
.LFB11723:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11723:
	.size	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv, .-_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEEdeEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EOS1_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EOS1_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, %function
_ZNSt12_Vector_baseIiSaIiEEC2EOS1_:
.LFB11727:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11727:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, .-_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EOS1_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EOS1_,_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.section	.text._ZNSt6vectorIiSaIiEEC2EOS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EOS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2EOS1_
	.type	_ZNSt6vectorIiSaIiEEC2EOS1_, %function
_ZNSt6vectorIiSaIiEEC2EOS1_:
.LFB11729:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11729:
	.size	_ZNSt6vectorIiSaIiEEC2EOS1_, .-_ZNSt6vectorIiSaIiEEC2EOS1_
	.weak	_ZNSt6vectorIiSaIiEEC1EOS1_
	.set	_ZNSt6vectorIiSaIiEEC1EOS1_,_ZNSt6vectorIiSaIiEEC2EOS1_
	.section	.text._ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_, %function
_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_:
.LFB11724:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	mov	x1, x19
	bl	_ZNSt6vectorIiSaIiEEC1EOS1_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11724:
	.size	_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIiSaIiEEJS2_EEvPT_DpOT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_, %function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_:
.LFB11731:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	b	.L579
.L580:
	ldr	x0, [sp, 32]
	sub	x0, x0, #24
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #24
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEEaSEOS1_
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
.L579:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bgt	.L580
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11731:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_
	.section	.text._ZStneRKSaIiES1_,"axG",@progbits,_ZStneRKSaIiES1_,comdat
	.align	2
	.weak	_ZStneRKSaIiES1_
	.type	_ZStneRKSaIiES1_, %function
_ZStneRKSaIiES1_:
.LFB11732:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11732:
	.size	_ZStneRKSaIiES1_, .-_ZStneRKSaIiES1_
	.section	.text._ZNSt6vectorIiSaIiEE5clearEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5clearEv,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE5clearEv
	.type	_ZNSt6vectorIiSaIiEE5clearEv, %function
_ZNSt6vectorIiSaIiEE5clearEv:
.LFB11733:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11733:
	.size	_ZNSt6vectorIiSaIiEE5clearEv, .-_ZNSt6vectorIiSaIiEE5clearEv
	.section	.text._ZSt15__alloc_on_copyISaIiEEvRT_RKS1_,"axG",@progbits,_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_,comdat
	.align	2
	.weak	_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_
	.type	_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_, %function
_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_:
.LFB11734:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11734:
	.size	_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_, .-_ZSt15__alloc_on_copyISaIiEEvRT_RKS1_
	.section	.text._ZNKSt6vectorIiSaIiEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE8capacityEv
	.type	_ZNKSt6vectorIiSaIiEE8capacityEv, %function
_ZNKSt6vectorIiSaIiEE8capacityEv:
.LFB11735:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 2
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11735:
	.size	_ZNKSt6vectorIiSaIiEE8capacityEv, .-_ZNKSt6vectorIiSaIiEE8capacityEv
	.section	.text._ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_,"axG",@progbits,_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_
	.type	_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_, %function
_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_:
.LFB11736:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11736
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
.LEHB54:
	bl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
.LEHE54:
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
.LEHB55:
	bl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
.LEHE55:
	ldr	x0, [sp, 72]
	b	.L594
.L592:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 56]
	ldr	x2, [sp, 48]
	ldr	x1, [sp, 72]
.LEHB56:
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	bl	__cxa_rethrow
.LEHE56:
.L593:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB57:
	bl	_Unwind_Resume
.LEHE57:
.L594:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11736:
	.section	.gcc_except_table
	.align	2
.LLSDA11736:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11736-.LLSDATTD11736
.LLSDATTD11736:
	.byte	0x1
	.uleb128 .LLSDACSE11736-.LLSDACSB11736
.LLSDACSB11736:
	.uleb128 .LEHB54-.LFB11736
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB11736
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L592-.LFB11736
	.uleb128 0x1
	.uleb128 .LEHB56-.LFB11736
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L593-.LFB11736
	.uleb128 0
	.uleb128 .LEHB57-.LFB11736
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE11736:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11736:
	.section	.text._ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_,"axG",@progbits,_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_,comdat
	.size	_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_, .-_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, %function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB11737:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11737:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_,comdat
	.align	2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, %function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_:
.LFB11738:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11738:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, %function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB11739:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11739:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, %function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E:
.LFB11740:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11740:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E
	.section	.text._ZSt4copyIPiS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPiS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt4copyIPiS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPiS0_ET0_T_S2_S1_, %function
_ZSt4copyIPiS0_ET0_T_S2_S1_:
.LFB11741:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPiET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11741:
	.size	_ZSt4copyIPiS0_ET0_T_S2_S1_, .-_ZSt4copyIPiS0_ET0_T_S2_S1_
	.section	.text._ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E:
.LFB11742:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11742:
	.size	_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv:
.LFB11743:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11743:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_, %function
_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_:
.LFB11744:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	mov	x8, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11744:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaImEmE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv,"axG",@progbits,_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	.type	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv, %function
_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv:
.LFB11745:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11745:
	.size	_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv, .-_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	.section	.text._ZNSaIbEC2ImEERKSaIT_E,"axG",@progbits,_ZNSaIbEC5ImEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaIbEC2ImEERKSaIT_E
	.type	_ZNSaIbEC2ImEERKSaIT_E, %function
_ZNSaIbEC2ImEERKSaIT_E:
.LFB11747:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIbEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11747:
	.size	_ZNSaIbEC2ImEERKSaIT_E, .-_ZNSaIbEC2ImEERKSaIT_E
	.weak	_ZNSaIbEC1ImEERKSaIT_E
	.set	_ZNSaIbEC1ImEERKSaIT_E,_ZNSaIbEC2ImEERKSaIT_E
	.section	.text._ZNKSt6vectorIbSaIbEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIbSaIbEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIbSaIbEE4sizeEv
	.type	_ZNKSt6vectorIbSaIbEE4sizeEv, %function
_ZNKSt6vectorIbSaIbEE4sizeEv:
.LFB11749:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 32]
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 32
	bl	_ZStmiRKSt18_Bit_iterator_baseS1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11749:
	.size	_ZNKSt6vectorIbSaIbEE4sizeEv, .-_ZNKSt6vectorIbSaIbEE4sizeEv
	.section	.text._ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator,"axG",@progbits,_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator
	.type	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, %function
_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator:
.LFB11750:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -144
	.cfi_offset 21, -136
	str	x0, [sp, 88]
	mov	x8, x1
	mov	x7, x2
	mov	x2, x4
	mov	x1, x5
	mov	x0, x6
	str	x8, [sp, 72]
	str	x7, [sp, 80]
	str	x3, [sp, 56]
	str	x2, [sp, 64]
	str	x1, [sp, 40]
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	ldr	x1, [sp, 56]
	ldr	x2, [sp, 40]
	bl	_ZSt4copyIPmS0_ET0_T_S2_S1_
	str	x0, [sp, 152]
	ldr	x1, [sp, 56]
	add	x0, sp, 120
	mov	w2, 0
	bl	_ZNSt19_Bit_const_iteratorC1EPmj
	add	x0, sp, 136
	mov	w2, 0
	ldr	x1, [sp, 152]
	bl	_ZNSt13_Bit_iteratorC1EPmj
	ldr	x4, [sp, 136]
	ldr	x5, [sp, 144]
	ldr	x2, [sp, 56]
	ldr	x3, [sp, 64]
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 128]
	bl	_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_
	stp	x0, x1, [sp, 104]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 112]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11750:
	.size	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, .-_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator
	.section	.text._ZNKSt6vectorIbSaIbEE5beginEv,"axG",@progbits,_ZNKSt6vectorIbSaIbEE5beginEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIbSaIbEE5beginEv
	.type	_ZNKSt6vectorIbSaIbEE5beginEv, %function
_ZNKSt6vectorIbSaIbEE5beginEv:
.LFB11751:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -64
	.cfi_offset 21, -56
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	add	x0, sp, 64
	mov	w2, 0
	bl	_ZNSt19_Bit_const_iteratorC1EPmj
	ldp	x0, x1, [sp, 64]
	stp	x0, x1, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11751:
	.size	_ZNKSt6vectorIbSaIbEE5beginEv, .-_ZNKSt6vectorIbSaIbEE5beginEv
	.section	.text._ZNKSt6vectorIbSaIbEE3endEv,"axG",@progbits,_ZNKSt6vectorIbSaIbEE3endEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIbSaIbEE3endEv
	.type	_ZNKSt6vectorIbSaIbEE3endEv, %function
_ZNKSt6vectorIbSaIbEE3endEv:
.LFB11752:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -64
	.cfi_offset 21, -56
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x1, x0, 16
	add	x0, sp, 64
	bl	_ZNSt19_Bit_const_iteratorC1ERKSt13_Bit_iterator
	ldp	x0, x1, [sp, 64]
	stp	x0, x1, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11752:
	.size	_ZNKSt6vectorIbSaIbEE3endEv, .-_ZNKSt6vectorIbSaIbEE3endEv
	.section	.text._ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_,comdat
	.align	2
	.weak	_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_, %function
_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_:
.LFB11753:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11753:
	.size	_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_, .-_ZStneIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv,comdat
	.align	2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv, %function
_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv:
.LFB11754:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11754:
	.size	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv, .-_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEEdeEv
	.section	.text._ZNSt13_Bvector_baseISaIbEEC2EOS1_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEEC5EOS1_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEEC2EOS1_
	.type	_ZNSt13_Bvector_baseISaIbEEC2EOS1_, %function
_ZNSt13_Bvector_baseISaIbEEC2EOS1_:
.LFB11758:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1EOS2_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11758:
	.size	_ZNSt13_Bvector_baseISaIbEEC2EOS1_, .-_ZNSt13_Bvector_baseISaIbEEC2EOS1_
	.weak	_ZNSt13_Bvector_baseISaIbEEC1EOS1_
	.set	_ZNSt13_Bvector_baseISaIbEEC1EOS1_,_ZNSt13_Bvector_baseISaIbEEC2EOS1_
	.section	.text._ZNSt6vectorIbSaIbEEC2EOS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEC5EOS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEC2EOS1_
	.type	_ZNSt6vectorIbSaIbEEC2EOS1_, %function
_ZNSt6vectorIbSaIbEEC2EOS1_:
.LFB11760:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEEC2EOS1_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11760:
	.size	_ZNSt6vectorIbSaIbEEC2EOS1_, .-_ZNSt6vectorIbSaIbEEC2EOS1_
	.weak	_ZNSt6vectorIbSaIbEEC1EOS1_
	.set	_ZNSt6vectorIbSaIbEEC1EOS1_,_ZNSt6vectorIbSaIbEEC2EOS1_
	.section	.text._ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_, %function
_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_:
.LFB11755:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	x19, x0
	ldr	x0, [sp, 40]
	mov	x1, x0
	mov	x0, 40
	bl	_ZnwmPv
	mov	x1, x19
	bl	_ZNSt6vectorIbSaIbEEC1EOS1_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11755:
	.size	_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIbSaIbEEJS2_EEvPT_DpOT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_, %function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_:
.LFB11762:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -3689348814741910324
	movk	x0, 0xcccd, lsl 0
	mul	x0, x1, x0
	str	x0, [sp, 56]
	b	.L629
.L630:
	ldr	x0, [sp, 32]
	sub	x0, x0, #40
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #40
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIbSaIbEEaSEOS1_
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
.L629:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bgt	.L630
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11762:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIbSaIbEES6_EET0_T_S8_S7_
	.section	.text._ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	.type	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv, %function
_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv:
.LFB11763:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11763:
	.size	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv, .-_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	.section	.text._ZStneRKSaImES1_,"axG",@progbits,_ZStneRKSaImES1_,comdat
	.align	2
	.weak	_ZStneRKSaImES1_
	.type	_ZStneRKSaImES1_, %function
_ZStneRKSaImES1_:
.LFB11764:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11764:
	.size	_ZStneRKSaImES1_, .-_ZStneRKSaImES1_
	.section	.text._ZSt15__alloc_on_copyISaImEEvRT_RKS1_,"axG",@progbits,_ZSt15__alloc_on_copyISaImEEvRT_RKS1_,comdat
	.align	2
	.weak	_ZSt15__alloc_on_copyISaImEEvRT_RKS1_
	.type	_ZSt15__alloc_on_copyISaImEEvRT_RKS1_, %function
_ZSt15__alloc_on_copyISaImEEvRT_RKS1_:
.LFB11765:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11765:
	.size	_ZSt15__alloc_on_copyISaImEEvRT_RKS1_, .-_ZSt15__alloc_on_copyISaImEEvRT_RKS1_
	.section	.text._ZNKSt6vectorIbSaIbEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIbSaIbEE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIbSaIbEE8capacityEv
	.type	_ZNKSt6vectorIbSaIbEE8capacityEv, %function
_ZNKSt6vectorIbSaIbEE8capacityEv:
.LFB11766:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	mov	x1, x0
	add	x0, sp, 32
	mov	w2, 0
	bl	_ZNSt19_Bit_const_iteratorC1EPmj
	ldr	x0, [sp, 24]
	bl	_ZNKSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 48]
	add	x1, sp, 48
	add	x0, sp, 32
	bl	_ZStmiRKSt18_Bit_iterator_baseS1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11766:
	.size	_ZNKSt6vectorIbSaIbEE8capacityEv, .-_ZNKSt6vectorIbSaIbEE8capacityEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv:
.LFB11767:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11767:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIbSaIbEEE8max_sizeEv
	.section	.text._ZSt8__fill_aIPiiEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPiiEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPiiEvT_S1_RKT0_, %function
_ZSt8__fill_aIPiiEvT_S1_RKT0_:
.LFB11797:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11797:
	.size	_ZSt8__fill_aIPiiEvT_S1_RKT0_, .-_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.section	.text._ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, %function
_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_:
.LFB11798:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSaIiEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11798:
	.size	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, %function
_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_:
.LFB11800:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11800:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, %function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB11802:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11802:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv,comdat
	.align	2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv, %function
_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv:
.LFB11805:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11805:
	.size	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv, .-_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_,comdat
	.align	2
	.weak	_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_, %function
_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_:
.LFB11804:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt13move_iteratorIPSt6vectorIiSaIiEEE4baseEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11804:
	.size	_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_, .-_ZSteqIPSt6vectorIiSaIiEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE, %function
_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11806:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11806:
	.size	_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5EOS2_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_:
.LFB11808:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSaIiEC2ERKS_
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11808:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.section	.text._ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB11810:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11810:
	.size	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIiSaIiEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEaSEOS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEaSEOS1_
	.type	_ZNSt6vectorIiSaIiEEaSEOS1_, %function
_ZNSt6vectorIiSaIiEEaSEOS1_:
.LFB11811:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRSt6vectorIiSaIiEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	w2, w19
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11811:
	.size	_ZNSt6vectorIiSaIiEEaSEOS1_, .-_ZNSt6vectorIiSaIiEEaSEOS1_
	.section	.text._ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi,"axG",@progbits,_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi
	.type	_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, %function
_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi:
.LFB11812:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11812
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L660
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 32]
	bl	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 8]
.L660:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11812:
	.section	.gcc_except_table
.LLSDA11812:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11812-.LLSDACSB11812
.LLSDACSB11812:
.LLSDACSE11812:
	.section	.text._ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi,"axG",@progbits,_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi,comdat
	.size	_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, .-_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB11814:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11814:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, %function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_:
.LFB11816:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11816:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, %function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_:
.LFB11817:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11817:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_,comdat
	.align	2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, %function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_:
.LFB11820:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11820:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_
	.section	.text._ZSt12__miter_baseIPiET_S1_,"axG",@progbits,_ZSt12__miter_baseIPiET_S1_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPiET_S1_
	.type	_ZSt12__miter_baseIPiET_S1_, %function
_ZSt12__miter_baseIPiET_S1_:
.LFB11821:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11821:
	.size	_ZSt12__miter_baseIPiET_S1_, .-_ZSt12__miter_baseIPiET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, %function
_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_:
.LFB11822:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPiET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11822:
	.size	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_
	.type	_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_, %function
_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_:
.LFB11823:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11823:
	.size	_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_, .-_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_
	.section	.text._ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_, %function
_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_:
.LFB11824:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSaImEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11824:
	.size	_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaImEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZSt4copyIPmS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPmS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt4copyIPmS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPmS0_ET0_T_S2_S1_, %function
_ZSt4copyIPmS0_ET0_T_S2_S1_:
.LFB11825:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPmET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPmET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11825:
	.size	_ZSt4copyIPmS0_ET0_T_S2_S1_, .-_ZSt4copyIPmS0_ET0_T_S2_S1_
	.section	.text._ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_,"axG",@progbits,_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_
	.type	_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_, %function
_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_:
.LFB11826:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -112
	.cfi_offset 21, -104
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	bl	_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	bl	_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_
	stp	x0, x1, [sp, 112]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	bl	_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11826:
	.size	_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_, .-_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_
	.section	.text._ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv,comdat
	.align	2
	.weak	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv
	.type	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv, %function
_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv:
.LFB11828:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11828:
	.size	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv, .-_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv
	.section	.text._ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_,"axG",@progbits,_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_,comdat
	.align	2
	.weak	_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
	.type	_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_, %function
_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_:
.LFB11827:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt13move_iteratorIPSt6vectorIbSaIbEEE4baseEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11827:
	.size	_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_, .-_ZSteqIPSt6vectorIbSaIbEEEbRKSt13move_iteratorIT_ES8_
	.section	.text._ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE, %function
_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11829:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11829:
	.size	_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt6vectorIbSaIbEEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC5EOS2_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_
	.type	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_, %function
_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_:
.LFB11831:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSaImEC2ERKS_
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11831:
	.size	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_, .-_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_
	.weak	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1EOS2_
	.set	_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1EOS2_,_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2EOS2_
	.section	.text._ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB11833:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11833:
	.size	_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIbSaIbEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEaSEOS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEEaSEOS1_
	.type	_ZNSt6vectorIbSaIbEEaSEOS1_, %function
_ZNSt6vectorIbSaIbEEaSEOS1_:
.LFB11834:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11834
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -128
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	bl	_ZN9__gnu_cxx14__alloc_traitsISaImEmE27_S_propagate_on_move_assignEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L689
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSteqRKSaImES1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L690
.L689:
	mov	w0, 1
	b	.L691
.L690:
	mov	w0, 0
.L691:
	cmp	w0, 0
	beq	.L692
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRSt6vectorIbSaIbEEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt15__alloc_on_moveISaImEEvRT_S2_
	b	.L693
.L692:
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt6vectorIbSaIbEE8capacityEv
	cmp	x19, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L694
	ldr	x0, [sp, 40]
	bl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	ldr	x0, [sp, 32]
	bl	_ZNKSt6vectorIbSaIbEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE13_M_initializeEm
.L694:
	ldr	x0, [sp, 32]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 80]
	add	x1, sp, 80
	add	x0, sp, 64
	bl	_ZNSt19_Bit_const_iteratorC1ERKSt13_Bit_iterator
	ldr	x0, [sp, 32]
	bl	_ZNSt6vectorIbSaIbEE3endEv
	stp	x0, x1, [sp, 112]
	add	x1, sp, 112
	add	x0, sp, 96
	bl	_ZNSt19_Bit_const_iteratorC1ERKSt13_Bit_iterator
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 128]
	ldr	x5, [sp, 128]
	ldr	x4, [sp, 136]
	ldr	x3, [sp, 96]
	ldr	x2, [sp, 104]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	mov	x6, x4
	mov	x4, x2
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator
	stp	x0, x1, [sp, 48]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 48
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	ldr	x0, [sp, 32]
	bl	_ZNSt6vectorIbSaIbEE5clearEv
.L693:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11834:
	.section	.gcc_except_table
.LLSDA11834:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11834-.LLSDACSB11834
.LLSDACSB11834:
.LLSDACSE11834:
	.section	.text._ZNSt6vectorIbSaIbEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIbSaIbEEaSEOS1_,comdat
	.size	_ZNSt6vectorIbSaIbEEaSEOS1_, .-_ZNSt6vectorIbSaIbEEaSEOS1_
	.section	.text._ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, %function
_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB11838:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	b	.L697
.L698:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	str	x0, [sp, 24]
.L697:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L698
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11838:
	.size	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_:
.LFB11839:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11839:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.section	.text._ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.align	2
	.weak	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, %function
_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11840:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11840:
	.size	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5EOS2_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, %function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_:
.LFB11842:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	str	xzr, [x0, 16]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11842:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.section	.text._ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, %function
_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB11844:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	add	x1, sp, 88
	mov	x8, x1
	bl	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	add	x1, sp, 88
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEEC1ERKS0_
	add	x0, sp, 88
	bl	_ZNSaIiED1Ev
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_
	ldr	x1, [sp, 48]
	add	x0, sp, 64
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt15__alloc_on_moveISaIiEEvRT_S2_
	add	x0, sp, 64
	bl	_ZNSt6vectorIiSaIiEED1Ev
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11844:
	.size	_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.section	.text._ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, %function
_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11845:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11845:
	.size	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.type	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, %function
_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
.LFB11846:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11846:
	.size	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, .-_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, %function
_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_:
.LFB11847:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11847:
	.size	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, %function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_:
.LFB11848:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	asr	x0, x0, 2
	mov	x1, x0
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11848:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_:
.LFB11849:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11849:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, %function
_ZSt12__niter_baseIPiET_S1_:
.LFB11850:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11850:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, %function
_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_:
.LFB11851:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11851:
	.size	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, %function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB11852:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11852:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_:
.LFB11853:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt4copyIPiS0_ET0_T_S2_S1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11853:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_
	.section	.text._ZSt12__miter_baseIPmET_S1_,"axG",@progbits,_ZSt12__miter_baseIPmET_S1_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPmET_S1_
	.type	_ZSt12__miter_baseIPmET_S1_, %function
_ZSt12__miter_baseIPmET_S1_:
.LFB11854:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11854:
	.size	_ZSt12__miter_baseIPmET_S1_, .-_ZSt12__miter_baseIPmET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, %function
_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_:
.LFB11855:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPmET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPmET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11855:
	.size	_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_,"axG",@progbits,_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_,comdat
	.align	2
	.weak	_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_
	.type	_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_, %function
_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_:
.LFB11857:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11857:
	.size	_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_, .-_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_
	.section	.text._ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, %function
_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_:
.LFB11858:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -144
	.cfi_offset 21, -136
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	bl	_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_
	stp	x0, x1, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	bl	_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_
	stp	x0, x1, [sp, 112]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	bl	_ZSt12__niter_baseISt13_Bit_iteratorET_S1_
	stp	x0, x1, [sp, 128]
	ldr	x4, [sp, 128]
	ldr	x5, [sp, 136]
	ldr	x2, [sp, 112]
	ldr	x3, [sp, 120]
	ldr	x0, [sp, 96]
	ldr	x1, [sp, 104]
	bl	_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	stp	x0, x1, [sp, 144]
	ldr	x1, [sp, 144]
	ldr	x2, [sp, 152]
	add	x0, sp, 32
	bl	_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11858:
	.size	_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.section	.text._ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.align	2
	.weak	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_, %function
_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11861:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11861:
	.size	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC5EOS2_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_, %function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_:
.LFB11863:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	ldr	x0, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11863:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1EOS2_
	.set	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC1EOS2_,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2EOS2_
	.section	.text._ZSteqRKSaImES1_,"axG",@progbits,_ZSteqRKSaImES1_,comdat
	.align	2
	.weak	_ZSteqRKSaImES1_
	.type	_ZSteqRKSaImES1_, %function
_ZSteqRKSaImES1_:
.LFB11865:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11865:
	.size	_ZSteqRKSaImES1_, .-_ZSteqRKSaImES1_
	.section	.text._ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_
	.type	_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_, %function
_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_:
.LFB11866:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIRNSt13_Bvector_baseISaIbEE13_Bvector_implEEONSt16remove_referenceIT_E4typeEOS6_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11866:
	.size	_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_, .-_ZNSt13_Bvector_baseISaIbEE12_M_move_dataEOS1_
	.section	.text._ZSt15__alloc_on_moveISaImEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaImEEvRT_S2_,comdat
	.align	2
	.weak	_ZSt15__alloc_on_moveISaImEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaImEEvRT_S2_, %function
_ZSt15__alloc_on_moveISaImEEvRT_S2_:
.LFB11867:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11867:
	.size	_ZSt15__alloc_on_moveISaImEEvRT_S2_, .-_ZSt15__alloc_on_moveISaImEEvRT_S2_
	.section	.text._ZNSt6vectorIbSaIbEE3endEv,"axG",@progbits,_ZNSt6vectorIbSaIbEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE3endEv
	.type	_ZNSt6vectorIbSaIbEE3endEv, %function
_ZNSt6vectorIbSaIbEE3endEv:
.LFB11868:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldp	x0, x1, [x0]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x2, x1
	mov	x3, x0
	mov	x0, x2
	mov	x1, x3
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11868:
	.size	_ZNSt6vectorIbSaIbEE3endEv, .-_ZNSt6vectorIbSaIbEE3endEv
	.section	.text._ZNSt6vectorIbSaIbEE5clearEv,"axG",@progbits,_ZNSt6vectorIbSaIbEE5clearEv,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE5clearEv
	.type	_ZNSt6vectorIbSaIbEE5clearEv, %function
_ZNSt6vectorIbSaIbEE5clearEv:
.LFB11869:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIbSaIbEE5beginEv
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11869:
	.size	_ZNSt6vectorIbSaIbEE5clearEv, .-_ZNSt6vectorIbSaIbEE5clearEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, %function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB11881:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11881:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, %function
_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv:
.LFB11882:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSaIiEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11882:
	.size	_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS0_
	.type	_ZNSt6vectorIiSaIiEEC2ERKS0_, %function
_ZNSt6vectorIiSaIiEEC2ERKS0_:
.LFB11884:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11884:
	.size	_ZNSt6vectorIiSaIiEEC2ERKS0_, .-_ZNSt6vectorIiSaIiEEC2ERKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1ERKS0_
	.set	_ZNSt6vectorIiSaIiEEC1ERKS0_,_ZNSt6vectorIiSaIiEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, %function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB11886:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 40
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	add	x0, sp, 40
	ldr	x1, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_
	add	x0, sp, 40
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11886:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_
	.section	.text._ZSt15__alloc_on_moveISaIiEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIiEEvRT_S2_,comdat
	.align	2
	.weak	_ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaIiEEvRT_S2_, %function
_ZSt15__alloc_on_moveISaIiEEvRT_S2_:
.LFB11887:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11887:
	.size	_ZSt15__alloc_on_moveISaIiEEvRT_S2_, .-_ZSt15__alloc_on_moveISaIiEEvRT_S2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv:
.LFB11888:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11888:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB11889:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11889:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, %function
_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_:
.LFB11890:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11890:
	.size	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl:
.LFB11891:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11891:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl
	.section	.text._ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, %function
_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_:
.LFB11892:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11892:
	.size	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_baseIPmET_S1_,"axG",@progbits,_ZSt12__niter_baseIPmET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPmET_S1_
	.type	_ZSt12__niter_baseIPmET_S1_, %function
_ZSt12__niter_baseIPmET_S1_:
.LFB11893:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11893:
	.size	_ZSt12__niter_baseIPmET_S1_, .-_ZSt12__niter_baseIPmET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_, %function
_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_:
.LFB11894:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11894:
	.size	_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPmET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPmET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPmET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPmET_RKS1_S1_, %function
_ZSt12__niter_wrapIPmET_RKS1_S1_:
.LFB11895:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11895:
	.size	_ZSt12__niter_wrapIPmET_RKS1_S1_, .-_ZSt12__niter_wrapIPmET_RKS1_S1_
	.section	.text._ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_,"axG",@progbits,_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_
	.type	_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_, %function
_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_:
.LFB11896:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11896:
	.size	_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_, .-_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_
	.section	.text._ZSt12__niter_baseISt13_Bit_iteratorET_S1_,"axG",@progbits,_ZSt12__niter_baseISt13_Bit_iteratorET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseISt13_Bit_iteratorET_S1_
	.type	_ZSt12__niter_baseISt13_Bit_iteratorET_S1_, %function
_ZSt12__niter_baseISt13_Bit_iteratorET_S1_:
.LFB11897:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	x2, x0
	mov	x0, x1
	str	x2, [sp]
	str	x0, [sp, 8]
	ldp	x0, x1, [sp]
	stp	x0, x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11897:
	.size	_ZSt12__niter_baseISt13_Bit_iteratorET_S1_, .-_ZSt12__niter_baseISt13_Bit_iteratorET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, %function
_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_:
.LFB11898:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -80
	.cfi_offset 21, -72
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	bl	_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11898:
	.size	_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_
	.type	_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_, %function
_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_:
.LFB11899:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	mov	x0, x2
	str	x1, [sp, 8]
	str	x0, [sp, 16]
	ldp	x0, x1, [sp, 8]
	stp	x0, x1, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	mov	x4, x1
	mov	x5, x0
	mov	x0, x4
	mov	x1, x5
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11899:
	.size	_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_, .-_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_
	.section	.text._ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_,"axG",@progbits,_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_,comdat
	.align	2
	.weak	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_
	.type	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_, %function
_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_:
.LFB11900:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	ldr	x0, [sp, 16]
	bl	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11900:
	.size	_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_, .-_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data12_M_move_dataEOS2_
	.section	.text._ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB11901:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11901:
	.size	_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaImEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator,"axG",@progbits,_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator,comdat
	.align	2
	.weak	_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator
	.type	_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator, %function
_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator:
.LFB11902:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	mov	x0, x2
	str	x1, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	add	x0, sp, 8
	ldr	x2, [x0]
	str	x2, [x1]
	ldr	w0, [x0, 8]
	str	w0, [x1, 8]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11902:
	.size	_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator, .-_ZNSt6vectorIbSaIbEE15_M_erase_at_endESt13_Bit_iterator
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, %function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_:
.LFB11904:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPiET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPiET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11904:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, %function
_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_:
.LFB11906:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11906:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_, %function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB11908:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11908:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_
	.section	.text._ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB11909:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11909:
	.size	_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaIiEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_:
.LFB11910:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 2
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L782
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L782:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11910:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.section	.text._ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_, %function
_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_:
.LFB11911:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11911:
	.size	_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_
	.section	.text._ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, %function
_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_:
.LFB11912:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x20, x21, [sp, 16]
	.cfi_offset 20, -80
	.cfi_offset 21, -72
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 64]
	str	x7, [sp, 72]
	str	x6, [sp, 48]
	str	x2, [sp, 56]
	str	x1, [sp, 32]
	str	x0, [sp, 40]
	ldr	x4, [sp, 32]
	ldr	x5, [sp, 40]
	ldr	x2, [sp, 48]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 72]
	bl	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_
	stp	x0, x1, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x20, x21, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 20
	.cfi_restore 21
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11912:
	.size	_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_:
.LFB11914:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L789
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L789:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11914:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, %function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_:
.LFB11915:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -128
	.cfi_offset 20, -120
	.cfi_offset 21, -112
	mov	x8, x0
	mov	x7, x1
	mov	x6, x2
	mov	x2, x3
	mov	x1, x4
	mov	x0, x5
	str	x8, [sp, 80]
	str	x7, [sp, 88]
	str	x6, [sp, 64]
	str	x2, [sp, 72]
	str	x1, [sp, 48]
	str	x0, [sp, 56]
	add	x1, sp, 80
	add	x0, sp, 64
	bl	_ZStmiRKSt18_Bit_iterator_baseS1_
	str	x0, [sp, 136]
	b	.L792
.L793:
	add	x0, sp, 80
	bl	_ZNKSt19_Bit_const_iteratordeEv
	and	w19, w0, 255
	add	x0, sp, 48
	bl	_ZNKSt13_Bit_iteratordeEv
	stp	x0, x1, [sp, 104]
	add	x0, sp, 104
	mov	w1, w19
	bl	_ZNSt14_Bit_referenceaSEb
	add	x0, sp, 80
	bl	_ZNSt19_Bit_const_iteratorppEv
	add	x0, sp, 48
	bl	_ZNSt13_Bit_iteratorppEv
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
.L792:
	ldr	x0, [sp, 136]
	cmp	x0, 0
	bgt	.L793
	ldp	x0, x1, [sp, 48]
	stp	x0, x1, [sp, 120]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 128]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x20
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11915:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11952:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L797
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L797
	adrp	x0, _ZStL8__ioinit
	add	x0, x0, :lo12:_ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _ZStL8__ioinit
	add	x1, x0, :lo12:_ZStL8__ioinit
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
	adrp	x0, arr
	add	x0, x0, :lo12:arr
	bl	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, arr
	add	x1, x0, :lo12:arr
	adrp	x0, _ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	add	x0, x0, :lo12:_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	bl	__cxa_atexit
	adrp	x0, vis
	add	x0, x0, :lo12:vis
	bl	_ZNSt6vectorIS_IbSaIbEESaIS1_EEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, vis
	add	x1, x0, :lo12:vis
	adrp	x0, _ZNSt6vectorIS_IbSaIbEESaIS1_EED1Ev
	add	x0, x0, :lo12:_ZNSt6vectorIS_IbSaIbEESaIS1_EED1Ev
	bl	__cxa_atexit
.L797:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11952:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, %function
_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:
.LFB11968:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11968
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11968:
	.section	.gcc_except_table
.LLSDA11968:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11968-.LLSDACSB11968
.LLSDACSB11968:
.LLSDACSE11968:
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev, %function
_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev:
.LFB11971:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11971
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EED2Ev
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11971:
	.section	.gcc_except_table
.LLSDA11971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11971-.LLSDACSB11971
.LLSDACSB11971:
.LLSDACSE11971:
	.section	.text._ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IbSaIbEESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IbSaIbEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IbSaIbEESaIS1_EED1Ev,_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev
	.text
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11981:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11981:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
