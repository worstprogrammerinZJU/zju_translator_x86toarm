	.arch armv8-a
	.file	"E_Joty_and_Chocolate.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
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
	.align	2
	.global	_Z3gcdii
	.type	_Z3gcdii, %function
_Z3gcdii:
.LFB9697:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 28]
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	ldr	w0, [sp, 24]
	bl	_Z3gcdii
	nop
.L4:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9697:
	.size	_Z3gcdii, .-_Z3gcdii
	.align	2
	.global	_Z3lcmii
	.type	_Z3lcmii, %function
_Z3lcmii:
.LFB9698:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3gcdii
	mov	w1, w0
	ldr	w0, [sp, 28]
	sdiv	w1, w0, w1
	ldr	w0, [sp, 24]
	mul	w0, w1, w0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9698:
	.size	_Z3lcmii, .-_Z3lcmii
	.section	.text._ZSt3maxIxERKT_S2_S2_,"axG",@progbits,_ZSt3maxIxERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIxERKT_S2_S2_
	.type	_ZSt3maxIxERKT_S2_S2_, %function
_ZSt3maxIxERKT_S2_S2_:
.LFB9700:
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
	bge	.L8
	ldr	x0, [sp]
	b	.L9
.L8:
	ldr	x0, [sp, 8]
.L9:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9700:
	.size	_ZSt3maxIxERKT_S2_S2_, .-_ZSt3maxIxERKT_S2_S2_
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9699:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	bl	_Z5setupv
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	sdiv	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	sdiv	x0, x1, x0
	str	x0, [sp, 96]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	ldr	x1, [sp, 56]
	bl	_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	sdiv	x0, x19, x0
	str	x0, [sp, 88]
	ldr	x1, [sp, 104]
	ldr	x0, [sp, 88]
	sub	x1, x1, x0
	ldr	x0, [sp, 48]
	mul	x1, x1, x0
	ldr	x2, [sp, 96]
	ldr	x0, [sp, 88]
	sub	x2, x2, x0
	ldr	x0, [sp, 40]
	mul	x0, x2, x0
	add	x19, x1, x0
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x1, [x0]
	ldr	x0, [sp, 88]
	mul	x0, x1, x0
	add	x0, x19, x0
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9699:
	.size	main, .-main
	.section	.text._ZNSt8__detail7__abs_rIxxEET_T0_,"axG",@progbits,_ZNSt8__detail7__abs_rIxxEET_T0_,comdat
	.align	2
	.weak	_ZNSt8__detail7__abs_rIxxEET_T0_
	.type	_ZNSt8__detail7__abs_rIxxEET_T0_, %function
_ZNSt8__detail7__abs_rIxxEET_T0_:
.LFB10391:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	blt	.L13
	ldr	x0, [sp, 8]
	b	.L14
.L13:
	ldr	x0, [sp, 8]
	neg	x0, x0
.L14:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10391:
	.size	_ZNSt8__detail7__abs_rIxxEET_T0_, .-_ZNSt8__detail7__abs_rIxxEET_T0_
	.section	.text._ZSt13__countr_zeroIyEiT_,"axG",@progbits,_ZSt13__countr_zeroIyEiT_,comdat
	.align	2
	.weak	_ZSt13__countr_zeroIyEiT_
	.type	_ZSt13__countr_zeroIyEiT_, %function
_ZSt13__countr_zeroIyEiT_:
.LFB10393:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	mov	w0, 64
	str	w0, [sp, 28]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	bne	.L16
	mov	w0, 64
	b	.L17
.L16:
	mov	w0, 64
	str	w0, [sp, 24]
	mov	w0, 64
	str	w0, [sp, 20]
	mov	w0, 32
	str	w0, [sp, 16]
	ldr	x0, [sp, 8]
	rbit	x0, x0
	clz	x0, x0
	nop
.L17:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10393:
	.size	_ZSt13__countr_zeroIyEiT_, .-_ZSt13__countr_zeroIyEiT_
	.section	.text._ZNSt8__detail5__gcdIyEET_S1_S1_,"axG",@progbits,_ZNSt8__detail5__gcdIyEET_S1_S1_,comdat
	.align	2
	.weak	_ZNSt8__detail5__gcdIyEET_S1_S1_
	.type	_ZNSt8__detail5__gcdIyEET_S1_S1_, %function
_ZNSt8__detail5__gcdIyEET_S1_S1_:
.LFB10392:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L19
	ldr	x0, [sp, 16]
	b	.L20
.L19:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L21
	ldr	x0, [sp, 24]
	b	.L20
.L21:
	ldr	x0, [sp, 24]
	bl	_ZSt13__countr_zeroIyEiT_
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	ldr	x1, [sp, 24]
	lsr	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	bl	_ZSt13__countr_zeroIyEiT_
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	ldr	x1, [sp, 16]
	lsr	x0, x1, x0
	str	x0, [sp, 16]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L22
	ldr	w0, [sp, 60]
	b	.L23
.L22:
	ldr	w0, [sp, 56]
.L23:
	str	w0, [sp, 52]
.L26:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bls	.L24
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 16]
.L24:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L25
	ldr	w0, [sp, 52]
	ldr	x1, [sp, 24]
	lsl	x0, x1, x0
	b	.L20
.L25:
	ldr	x0, [sp, 16]
	bl	_ZSt13__countr_zeroIyEiT_
	mov	w1, w0
	ldr	x0, [sp, 16]
	lsr	x0, x0, x1
	str	x0, [sp, 16]
	b	.L26
.L20:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10392:
	.size	_ZNSt8__detail5__gcdIyEET_S1_S1_, .-_ZNSt8__detail5__gcdIyEET_S1_S1_
	.section	.text._ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_,"axG",@progbits,_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_,comdat
	.align	2
	.weak	_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	.type	_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_, %function
_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_:
.LFB10390:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZNSt8__detail7__abs_rIxxEET_T0_
	str	x0, [sp, 104]
	ldr	x0, [sp, 64]
	bl	_ZNSt8__detail7__abs_rIxxEET_T0_
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	cmp	x0, 0
	beq	.L28
	ldr	x0, [sp, 96]
	cmp	x0, 0
	bne	.L29
.L28:
	mov	x0, 0
	b	.L33
.L29:
	ldr	x19, [sp, 104]
	ldr	x0, [sp, 104]
	ldr	x1, [sp, 96]
	bl	_ZNSt8__detail5__gcdIyEET_S1_S1_
	udiv	x0, x19, x0
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	mov	x2, 0
	ldr	x0, [sp, 96]
	mul	x3, x1, x0
	smulh	x0, x1, x0
	mov	x20, x3
	mov	x21, x0
	mov	x22, x21
	asr	x23, x21, 63
	mov	x1, x20
	asr	x0, x1, 63
	cmp	x0, x22
	beq	.L31
	mov	x2, 1
.L31:
	mov	x0, x1
	str	x0, [sp, 80]
	mov	x0, x2
	strb	w0, [sp, 95]
	ldrb	w0, [sp, 95]
	and	w0, w0, 1
	strb	w0, [sp, 95]
	ldr	x0, [sp, 80]
.L33:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10390:
	.size	_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_, .-_ZSt3lcmIxxENSt11common_typeIJT_T0_EE4typeES1_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11455:
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
	bne	.L36
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L36
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
.L36:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11455:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11478:
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
.LFE11478:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
