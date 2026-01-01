	.arch armv8-a
	.file	"The Grades.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB38:
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
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.align	2
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, %function
_ZSt4__lgl:
.LFB404:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	clz	x0, x0
	mov	w1, w0
	mov	w0, 63
	sub	w0, w0, w1
	sxtw	x0, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE404:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
	.section	.text._ZNSt11char_traitsIcE2ltERKcS2_,"axG",@progbits,_ZNSt11char_traitsIcE2ltERKcS2_,comdat
	.align	2
	.weak	_ZNSt11char_traitsIcE2ltERKcS2_
	.type	_ZNSt11char_traitsIcE2ltERKcS2_, %function
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB446:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE446:
	.size	_ZNSt11char_traitsIcE2ltERKcS2_, .-_ZNSt11char_traitsIcE2ltERKcS2_
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.align	2
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, %function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB447:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L8
	mov	w0, 0
	b	.L9
.L8:
	mov	w0, 0
	cmp	w0, 0
	beq	.L10
	str	xzr, [sp, 56]
	b	.L11
.L14:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt11char_traitsIcE2ltERKcS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	w0, -1
	b	.L9
.L12:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	add	x2, x1, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt11char_traitsIcE2ltERKcS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L13
	mov	w0, 1
	b	.L9
.L13:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L11:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L14
	mov	w0, 0
	b	.L9
.L10:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	memcmp
	nop
.L9:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE447:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
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
	bcs	.L16
	ldr	x0, [sp]
	b	.L17
.L16:
	ldr	x0, [sp, 8]
.L17:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
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
	.align	2
	.type	_ZL2sz, %object
	.size	_ZL2sz, 4
_ZL2sz:
	.word	1000010
	.global	composite
	.bss
	.align	3
	.type	composite, %object
	.size	composite, 1000010
composite:
	.zero	1000010
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev:
.LFB9700:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9700:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEEC2Ev, %function
_ZNSt12_Vector_baseIxSaIxEEC2Ev:
.LFB9702:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9702:
	.size	_ZNSt12_Vector_baseIxSaIxEEC2Ev, .-_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEEC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEEC1Ev,_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.section	.text._ZNSt6vectorIxSaIxEEC2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEEC2Ev
	.type	_ZNSt6vectorIxSaIxEEC2Ev, %function
_ZNSt6vectorIxSaIxEEC2Ev:
.LFB9704:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9704:
	.size	_ZNSt6vectorIxSaIxEEC2Ev, .-_ZNSt6vectorIxSaIxEEC2Ev
	.weak	_ZNSt6vectorIxSaIxEEC1Ev
	.set	_ZNSt6vectorIxSaIxEEC1Ev,_ZNSt6vectorIxSaIxEEC2Ev
	.global	primes
	.bss
	.align	3
	.type	primes, %object
	.size	primes, 24
primes:
	.zero	24
	.text
	.align	2
	.global	_Z5sievev
	.type	_Z5sievev, %function
_Z5sievev:
.LFB9706:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	mov	w1, 1
	strb	w1, [x0, 1]
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	ldrb	w1, [x0, 1]
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	strb	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 12]
	b	.L22
.L26:
	adrp	x0, composite
	add	x1, x0, :lo12:composite
	ldrsw	x0, [sp, 12]
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 12]
	mul	w0, w0, w0
	str	w0, [sp, 8]
	b	.L24
.L25:
	adrp	x0, composite
	add	x1, x0, :lo12:composite
	ldrsw	x0, [sp, 8]
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 8]
.L24:
	ldr	w1, [sp, 8]
	mov	w0, 16970
	movk	w0, 0xf, lsl 16
	cmp	w1, w0
	ble	.L25
.L23:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L22:
	ldr	w0, [sp, 12]
	mul	w1, w0, w0
	mov	w0, 16970
	movk	w0, 0xf, lsl 16
	cmp	w1, w0
	ble	.L26
	nop
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9706:
	.size	_Z5sievev, .-_Z5sievev
	.align	2
	.global	_Z11linearSievei
	.type	_Z11linearSievei, %function
_Z11linearSievei:
.LFB9707:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	w0, [sp, 44]
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	mov	w1, 1
	strb	w1, [x0, 1]
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	ldrb	w1, [x0, 1]
	adrp	x0, composite
	add	x0, x0, :lo12:composite
	strb	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L28
.L35:
	adrp	x0, composite
	add	x1, x0, :lo12:composite
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	ldrsw	x0, [sp, 60]
	str	x0, [sp, 48]
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNSt6vectorIxSaIxEE9push_backEOx
.L29:
	str	wzr, [sp, 56]
	b	.L30
.L34:
	ldrsw	x19, [sp, 60]
	ldrsw	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mul	x1, x19, x0
	ldrsw	x0, [sp, 44]
	cmp	x1, x0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	ldrsw	x19, [sp, 60]
	ldrsw	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	mul	x0, x19, x0
	adrp	x1, composite
	add	x1, x1, :lo12:composite
	mov	w2, 1
	strb	w2, [x1, x0]
	ldrsw	x19, [sp, 60]
	ldrsw	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNSt6vectorIxSaIxEEixEm
	ldr	x0, [x0]
	sdiv	x1, x19, x0
	mul	x0, x1, x0
	sub	x0, x19, x0
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L37
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L30:
	ldrsw	x19, [sp, 56]
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L34
	b	.L32
.L36:
	nop
	b	.L32
.L37:
	nop
.L32:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L28:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L35
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9707:
	.size	_Z11linearSievei, .-_Z11linearSievei
	.align	2
	.global	_Z3gcdii
	.type	_Z3gcdii, %function
_Z3gcdii:
.LFB9708:
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
	bne	.L39
	ldr	w0, [sp, 28]
	b	.L40
.L39:
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
.L40:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9708:
	.size	_Z3gcdii, .-_Z3gcdii
	.align	2
	.global	_Z7isPrimei
	.type	_Z7isPrimei, %function
_Z7isPrimei:
.LFB9709:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	d8, [sp, 16]
	.cfi_offset 72, -48
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bgt	.L42
	mov	w0, 0
	b	.L43
.L42:
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L44
.L46:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 60]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L45
	mov	w0, 0
	b	.L43
.L45:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L44:
	ldr	w0, [sp, 60]
	scvtf	d8, w0
	ldr	w0, [sp, 44]
	bl	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	fcmpe	d8, d0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L46
	mov	w0, 1
.L43:
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9709:
	.size	_Z7isPrimei, .-_Z7isPrimei
	.align	2
	.global	_Z3lcmii
	.type	_Z3lcmii, %function
_Z3lcmii:
.LFB9710:
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
.LFE9710:
	.size	_Z3lcmii, .-_Z3lcmii
	.align	2
	.global	_Z5luckyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z5luckyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z5luckyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB9711:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	wzr, [sp, 60]
	b	.L50
.L55:
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 52
	beq	.L51
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 55
	beq	.L51
	mov	w0, 1
	b	.L52
.L51:
	mov	w0, 0
.L52:
	cmp	w0, 0
	beq	.L53
	mov	w0, 0
	b	.L54
.L53:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L50:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L55
	mov	w0, 1
.L54:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9711:
	.size	_Z5luckyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z5luckyNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z12isPalindromeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z12isPalindromeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_Z12isPalindromeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB9712:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9712
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE0:
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	mov	x19, x0
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	mov	x1, x0
	mov	x0, x19
.LEHB1:
	bl	_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_
.LEHE1:
	add	x0, sp, 48
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L57
	mov	w19, 1
	b	.L58
.L57:
	mov	w19, 0
.L58:
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	w0, w19
	b	.L62
.L61:
	mov	x19, x0
	add	x0, sp, 48
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L62:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9712:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9712-.LLSDACSB9712
.LLSDACSB9712:
	.uleb128 .LEHB0-.LFB9712
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9712
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L61-.LFB9712
	.uleb128 0
	.uleb128 .LEHB2-.LFB9712
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9712:
	.text
	.size	_Z12isPalindromeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z12isPalindromeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.align	2
	.global	_Z12binarySearchSt6vectorIiSaIiEEiii
	.type	_Z12binarySearchSt6vectorIiSaIiEEiii, %function
_Z12binarySearchSt6vectorIiSaIiEEiii:
.LFB9713:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	b	.L64
.L68:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, w1
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L65
	ldr	w0, [sp, 60]
	b	.L66
.L65:
	ldrsw	x0, [sp, 60]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIiSaIiEEixEm
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L67
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L64
.L67:
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 32]
.L64:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	ble	.L68
	mov	w0, -1
.L66:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9713:
	.size	_Z12binarySearchSt6vectorIiSaIiEEiii, .-_Z12binarySearchSt6vectorIiSaIiEEiii
	.align	2
	.global	_Z11printBinaryi
	.type	_Z11printBinaryi, %function
_Z11printBinaryi:
.LFB9714:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bgt	.L70
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	b	.L69
.L70:
	ldr	w0, [sp, 28]
	asr	w0, w0, 1
	bl	_Z11printBinaryi
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
.L69:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9714:
	.size	_Z11printBinaryi, .-_Z11printBinaryi
	.align	2
	.global	_Z10countBits1i
	.type	_Z10countBits1i, %function
_Z10countBits1i:
.LFB9715:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L73
.L74:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	ldr	w1, [sp, 12]
	and	w0, w1, w0
	str	w0, [sp, 12]
.L73:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L74
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9715:
	.size	_Z10countBits1i, .-_Z10countBits1i
	.align	2
	.global	_Z10countBits0i
	.type	_Z10countBits0i, %function
_Z10countBits0i:
.LFB9716:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	mov	w0, 32
	str	w0, [sp, 24]
	b	.L77
.L78:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	ldr	w1, [sp, 12]
	and	w0, w1, w0
	str	w0, [sp, 12]
.L77:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L78
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9716:
	.size	_Z10countBits0i, .-_Z10countBits0i
	.align	2
	.global	_Z6getBitii
	.type	_Z6getBitii, %function
_Z6getBitii:
.LFB9717:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	ldr	w1, [sp, 12]
	asr	w0, w1, w0
	and	w0, w0, 1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9717:
	.size	_Z6getBitii, .-_Z6getBitii
	.align	2
	.global	_Z7setBit1ii
	.type	_Z7setBit1ii, %function
_Z7setBit1ii:
.LFB9718:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 12]
	orr	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9718:
	.size	_Z7setBit1ii, .-_Z7setBit1ii
	.align	2
	.global	_Z7setBit0ii
	.type	_Z7setBit0ii, %function
_Z7setBit0ii:
.LFB9719:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w0, w1, w0
	mvn	w1, w0
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9719:
	.size	_Z7setBit0ii, .-_Z7setBit0ii
	.align	2
	.global	_Z7flipBitii
	.type	_Z7flipBitii, %function
_Z7flipBitii:
.LFB9720:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	mov	w1, 1
	lsl	w1, w1, w0
	ldr	w0, [sp, 12]
	eor	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9720:
	.size	_Z7flipBitii, .-_Z7flipBitii
	.align	2
	.global	_Z8powerOf2i
	.type	_Z8powerOf2i, %function
_Z8powerOf2i:
.LFB9721:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9721:
	.size	_Z8powerOf2i, .-_Z8powerOf2i
	.align	2
	.global	_Z12lastBitValuei
	.type	_Z12lastBitValuei, %function
_Z12lastBitValuei:
.LFB9722:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	neg	w1, w0
	ldr	w0, [sp, 12]
	and	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9722:
	.size	_Z12lastBitValuei, .-_Z12lastBitValuei
	.align	2
	.global	_Z16setBitsTo1Until0i
	.type	_Z16setBitsTo1Until0i, %function
_Z16setBitsTo1Until0i:
.LFB9723:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L93
	mov	w0, -1
	b	.L94
.L93:
	str	wzr, [sp, 44]
	b	.L95
.L96:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z7setBit1ii
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L95:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L96
	ldr	w0, [sp, 28]
.L94:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9723:
	.size	_Z16setBitsTo1Until0i, .-_Z16setBitsTo1Until0i
	.align	2
	.global	_Z16setBitsTo0Until1i
	.type	_Z16setBitsTo0Until1i, %function
_Z16setBitsTo0Until1i:
.LFB9724:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L98
.L99:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z7setBit0ii
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L98:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 28]
	asr	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L99
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9724:
	.size	_Z16setBitsTo0Until1i, .-_Z16setBitsTo0Until1i
	.align	2
	.global	_Z13findFirstBit0i
	.type	_Z13findFirstBit0i, %function
_Z13findFirstBit0i:
.LFB9725:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L102
.L103:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L102:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z6getBitii
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L103
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9725:
	.size	_Z13findFirstBit0i, .-_Z13findFirstBit0i
	.align	2
	.global	_Z13findFirstBit1i
	.type	_Z13findFirstBit1i, %function
_Z13findFirstBit1i:
.LFB9726:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	b	.L106
.L107:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L106:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	bl	_Z6getBitii
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L107
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9726:
	.size	_Z13findFirstBit1i, .-_Z13findFirstBit1i
	.align	2
	.global	_Z3odr4inptS_
	.type	_Z3odr4inptS_, %function
_Z3odr4inptS_:
.LFB9727:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 64]
	cmp	x1, x0
	beq	.L110
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 64]
	cmp	x1, x0
	cset	w0, gt
	and	w0, w0, 255
	b	.L111
.L110:
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	and	w0, w0, 255
	nop
.L111:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9727:
	.size	_Z3odr4inptS_, .-_Z3odr4inptS_
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.align	3
.LC1:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9728:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9728
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	mov	w0, 0
.LEHB3:
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
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
.LEHE3:
	ldr	w0, [sp, 60]
	sxtw	x19, w0
	add	x0, sp, 64
	bl	_ZNSaI4inptEC1Ev
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x19
.LEHB4:
	bl	_ZNSt6vectorI4inptSaIS0_EEC1EmRKS1_
.LEHE4:
	add	x0, sp, 64
	bl	_ZNSaI4inptED1Ev
	str	wzr, [sp, 76]
	b	.L113
.L114:
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB5:
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	add	x0, x0, 32
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	add	x0, x0, 40
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	add	x0, x0, 48
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	mov	x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	add	x0, x0, 56
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSirsERx
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x19, [x0, 32]
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 40]
	add	x19, x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 48]
	add	x19, x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 56]
	add	x19, x19, x0
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	str	x19, [x0, 64]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L113:
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L114
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EE5beginEv
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EE3endEv
	mov	x1, x0
	adrp	x0, _Z3odr4inptS_
	add	x2, x0, :lo12:_Z3odr4inptS_
	mov	x0, x19
	bl	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_
	str	wzr, [sp, 72]
	b	.L115
.L116:
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x19, x0
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 64]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x19, x0
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x19, x0
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x19, x0
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x19, x0
	ldrsw	x1, [sp, 72]
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EEixEm
	ldr	x0, [x0, 56]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE5:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L115:
	ldr	w0, [sp, 60]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L116
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EED1Ev
	mov	w0, 0
	b	.L122
.L120:
	mov	x19, x0
	add	x0, sp, 64
	bl	_ZNSaI4inptED1Ev
	mov	x0, x19
.LEHB6:
	bl	_Unwind_Resume
.L121:
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNSt6vectorI4inptSaIS0_EED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE6:
.L122:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9728:
	.section	.gcc_except_table
.LLSDA9728:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9728-.LLSDACSB9728
.LLSDACSB9728:
	.uleb128 .LEHB3-.LFB9728
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB9728
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L120-.LFB9728
	.uleb128 0
	.uleb128 .LEHB5-.LFB9728
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L121-.LFB9728
	.uleb128 0
	.uleb128 .LEHB6-.LFB9728
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE9728:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB10040:
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
	bcs	.L124
	ldr	x0, [sp]
	b	.L125
.L124:
	ldr	x0, [sp, 8]
.L125:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10040:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev:
.LFB10417:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10417:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align	2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, %function
_ZNSaIxED2Ev:
.LFB10420:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10420:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEED2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEED2Ev, %function
_ZNSt12_Vector_baseIxSaIxEED2Ev:
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
	asr	x0, x0, 3
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
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
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIxSaIxEED2Ev, .-_ZNSt12_Vector_baseIxSaIxEED2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEED1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEED1Ev,_ZNSt12_Vector_baseIxSaIxEED2Ev
	.section	.text._ZNSt6vectorIxSaIxEE9push_backEOx,"axG",@progbits,_ZNSt6vectorIxSaIxEE9push_backEOx,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE9push_backEOx
	.type	_ZNSt6vectorIxSaIxEE9push_backEOx, %function
_ZNSt6vectorIxSaIxEE9push_backEOx:
.LFB10425:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10425:
	.size	_ZNSt6vectorIxSaIxEE9push_backEOx, .-_ZNSt6vectorIxSaIxEE9push_backEOx
	.section	.text._ZNKSt6vectorIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIxSaIxEE4sizeEv
	.type	_ZNKSt6vectorIxSaIxEE4sizeEv, %function
_ZNKSt6vectorIxSaIxEE4sizeEv:
.LFB10426:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10426:
	.size	_ZNKSt6vectorIxSaIxEE4sizeEv, .-_ZNKSt6vectorIxSaIxEE4sizeEv
	.section	.text._ZNSt6vectorIxSaIxEEixEm,"axG",@progbits,_ZNSt6vectorIxSaIxEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEEixEm
	.type	_ZNSt6vectorIxSaIxEEixEm, %function
_ZNSt6vectorIxSaIxEEixEm:
.LFB10427:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	lsl	x0, x0, 3
	add	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10427:
	.size	_ZNSt6vectorIxSaIxEEixEm, .-_ZNSt6vectorIxSaIxEEixEm
	.section	.text._ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,"axG",@progbits,_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,comdat
	.align	2
	.weak	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.type	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, %function
_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
.LFB10428:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10428:
	.size	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, .-_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.section	.text._ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_,"axG",@progbits,_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_,comdat
	.align	2
	.weak	_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_
	.type	_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_, %function
_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_:
.LFB10431:
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
	add	x0, sp, 40
	bl	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10431:
	.size	_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_, .-_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_
	.section	.text._ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,"axG",@progbits,_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,comdat
	.align	2
	.weak	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.type	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, %function
_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_:
.LFB10432:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	cmp	x19, x0
	bne	.L138
	ldr	x0, [sp, 40]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt11char_traitsIcE7compareEPKcS2_m
	cmp	w0, 0
	bne	.L138
	mov	w0, 1
	b	.L139
.L138:
	mov	w0, 0
.L139:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10432:
	.size	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, .-_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, %function
_ZNSt6vectorIiSaIiEEixEm:
.LFB10433:
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
.LFE10433:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"axG",@progbits,_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,comdat
	.align	2
	.weak	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.type	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, %function
_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_:
.LFB10434:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10434
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_
	lsr	w0, w0, 31
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10434:
	.section	.gcc_except_table
.LLSDA10434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10434-.LLSDACSB10434
.LLSDACSB10434:
.LLSDACSE10434:
	.section	.text._ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"axG",@progbits,_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,comdat
	.size	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, .-_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.section	.text._ZNSaI4inptEC2Ev,"axG",@progbits,_ZNSaI4inptEC5Ev,comdat
	.align	2
	.weak	_ZNSaI4inptEC2Ev
	.type	_ZNSaI4inptEC2Ev, %function
_ZNSaI4inptEC2Ev:
.LFB10437:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10437:
	.size	_ZNSaI4inptEC2Ev, .-_ZNSaI4inptEC2Ev
	.weak	_ZNSaI4inptEC1Ev
	.set	_ZNSaI4inptEC1Ev,_ZNSaI4inptEC2Ev
	.section	.text._ZNSaI4inptED2Ev,"axG",@progbits,_ZNSaI4inptED5Ev,comdat
	.align	2
	.weak	_ZNSaI4inptED2Ev
	.type	_ZNSaI4inptED2Ev, %function
_ZNSaI4inptED2Ev:
.LFB10440:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorI4inptED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10440:
	.size	_ZNSaI4inptED2Ev, .-_ZNSaI4inptED2Ev
	.weak	_ZNSaI4inptED1Ev
	.set	_ZNSaI4inptED1Ev,_ZNSaI4inptED2Ev
	.section	.text._ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EEC5EmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_
	.type	_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_, %function
_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_:
.LFB10443:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10443
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
.LEHB7:
	bl	_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_
.LEHE7:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB8:
	bl	_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm
.LEHE8:
	b	.L150
.L149:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev
	mov	x0, x19
.LEHB9:
	bl	_Unwind_Resume
.LEHE9:
.L150:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10443:
	.section	.gcc_except_table
.LLSDA10443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10443-.LLSDACSB10443
.LLSDACSB10443:
	.uleb128 .LEHB7-.LFB10443
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB10443
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L149-.LFB10443
	.uleb128 0
	.uleb128 .LEHB9-.LFB10443
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE10443:
	.section	.text._ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_, .-_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_
	.weak	_ZNSt6vectorI4inptSaIS0_EEC1EmRKS1_
	.set	_ZNSt6vectorI4inptSaIS0_EEC1EmRKS1_,_ZNSt6vectorI4inptSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt6vectorI4inptSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EED2Ev
	.type	_ZNSt6vectorI4inptSaIS0_EED2Ev, %function
_ZNSt6vectorI4inptSaIS0_EED2Ev:
.LFB10446:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10446
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
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev
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
.LFE10446:
	.section	.gcc_except_table
.LLSDA10446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10446-.LLSDACSB10446
.LLSDACSB10446:
.LLSDACSE10446:
	.section	.text._ZNSt6vectorI4inptSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI4inptSaIS0_EED2Ev, .-_ZNSt6vectorI4inptSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4inptSaIS0_EED1Ev
	.set	_ZNSt6vectorI4inptSaIS0_EED1Ev,_ZNSt6vectorI4inptSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4inptSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EEixEm
	.type	_ZNSt6vectorI4inptSaIS0_EEixEm, %function
_ZNSt6vectorI4inptSaIS0_EEixEm:
.LFB10448:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [x0]
	ldr	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10448:
	.size	_ZNSt6vectorI4inptSaIS0_EEixEm, .-_ZNSt6vectorI4inptSaIS0_EEixEm
	.section	.text._ZNSt6vectorI4inptSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EE5beginEv
	.type	_ZNSt6vectorI4inptSaIS0_EE5beginEv, %function
_ZNSt6vectorI4inptSaIS0_EE5beginEv:
.LFB10450:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10450:
	.size	_ZNSt6vectorI4inptSaIS0_EE5beginEv, .-_ZNSt6vectorI4inptSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI4inptSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EE3endEv
	.type	_ZNSt6vectorI4inptSaIS0_EE3endEv, %function
_ZNSt6vectorI4inptSaIS0_EE3endEv:
.LFB10451:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10451:
	.size	_ZNSt6vectorI4inptSaIS0_EE3endEv, .-_ZNSt6vectorI4inptSaIS0_EE3endEv
	.section	.text._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_,"axG",@progbits,_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_,comdat
	.align	2
	.weak	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_
	.type	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_, %function
_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_:
.LFB10452:
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
	bl	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10452:
	.size	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_, .-_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEPFbS2_S2_EEvT_SA_T0_
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align	2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, %function
_ZNSaIxEC2Ev:
.LFB10848:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10848:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev:
.LFB10851:
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
.LFE10851:
	.size	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB10854:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10854:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.type	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, %function
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm:
.LFB10856:
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
	beq	.L164
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.L164:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10856:
	.size	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, .-_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB10857:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10857:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
	.type	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_, %function
_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_:
.LFB10858:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	beq	.L168
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x1, x0, 8
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	b	.L169
.L168:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
.L169:
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE4backEv
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10858:
	.size	_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_, .-_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_
	.section	.text._ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_,"axG",@progbits,_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
	.type	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_, %function
_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_:
.LFB10863:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10863:
	.size	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_, .-_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_
	.section	.text._ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag
	.type	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag, %function
_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag:
.LFB10864:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L178
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	b	.L176
.L177:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
.L176:
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L177
	b	.L173
.L178:
	nop
.L173:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10864:
	.size	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag, .-_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_St26random_access_iterator_tag
	.section	.text._ZN9__gnu_cxx13new_allocatorI4inptEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4inptEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev:
.LFB10867:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10867:
	.size	_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4inptEC1Ev,_ZN9__gnu_cxx13new_allocatorI4inptEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4inptED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4inptED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4inptED2Ev, %function
_ZN9__gnu_cxx13new_allocatorI4inptED2Ev:
.LFB10870:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10870:
	.size	_ZN9__gnu_cxx13new_allocatorI4inptED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4inptED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4inptED1Ev,_ZN9__gnu_cxx13new_allocatorI4inptED2Ev
	.section	.rodata
	.align	3
.LC2:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_
	.type	_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_, %function
_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_:
.LFB10872:
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
	bl	_ZNSaI4inptEC1ERKS0_
	add	x0, sp, 56
	bl	_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaI4inptED1Ev
	cmp	w19, 0
	beq	.L182
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	_ZSt20__throw_length_errorPKc
.L182:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10872:
	.size	_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_, .-_ZNSt6vectorI4inptSaIS0_EE17_S_check_init_lenEmRKS1_
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev:
.LFB10875:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaI4inptED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10875:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EEC5EmRKS1_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_, %function
_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_:
.LFB10877:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10877
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
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC1ERKS1_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB10:
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm
.LEHE10:
	b	.L188
.L187:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD1Ev
	mov	x0, x19
.LEHB11:
	bl	_Unwind_Resume
.LEHE11:
.L188:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10877:
	.section	.gcc_except_table
.LLSDA10877:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10877-.LLSDACSB10877
.LLSDACSB10877:
	.uleb128 .LEHB10-.LFB10877
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L187-.LFB10877
	.uleb128 0
	.uleb128 .LEHB11-.LFB10877
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE10877:
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_, .-_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EEC1EmRKS1_
	.set	_ZNSt12_Vector_baseI4inptSaIS0_EEC1EmRKS1_,_ZNSt12_Vector_baseI4inptSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev, %function
_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev:
.LFB10880:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10880
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
	mov	x0, 36409
	movk	x0, 0x38e3, lsl 16
	movk	x0, 0xe38e, lsl 32
	movk	x0, 0x8e38, lsl 48
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10880:
	.section	.gcc_except_table
.LLSDA10880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10880-.LLSDACSB10880
.LLSDACSB10880:
.LLSDACSE10880:
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI4inptSaIS0_EED1Ev,_ZNSt12_Vector_baseI4inptSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm
	.type	_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm, %function
_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm:
.LFB10882:
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
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E
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
.LFE10882:
	.size	_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm, .-_ZNSt6vectorI4inptSaIS0_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB10883:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10883:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI4inptSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E, %function
_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E:
.LFB10884:
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
	bl	_ZSt8_DestroyIP4inptEvT_S2_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10884:
	.size	_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP4inptS0_EvT_S2_RSaIT0_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_, %function
_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB10886:
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
.LFE10886:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_, %function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_:
.LFB10888:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
	ldr	x1, [x0]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC1ES4_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10888:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb4inptS2_EEENS0_15_Iter_comp_iterIT_EES6_
	.section	.text._ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,"axG",@progbits,_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,comdat
	.align	2
	.weak	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.type	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, %function
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_:
.LFB10889:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L199
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	bl	_ZSt4__lgl
	lsl	x0, x0, 1
	ldr	x3, [sp, 24]
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
.L199:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10889:
	.size	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, .-_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB11088:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11088:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, %function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11090:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11090:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB11091:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11091:
	.size	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_:
.LFB11092:
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
	bl	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11092:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE3endEv
	.type	_ZNSt6vectorIxSaIxEE3endEv, %function
_ZNSt6vectorIxSaIxEE3endEv:
.LFB11093:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11093:
	.size	_ZNSt6vectorIxSaIxEE3endEv, .-_ZNSt6vectorIxSaIxEE3endEv
	.section	.rodata
	.align	3
.LC3:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.type	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, %function
_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_:
.LFB11094:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	mov	x1, 1
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	str	x0, [sp, 120]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	str	x0, [sp, 112]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	bl	_ZNSt6vectorIxSaIxEE5beginEv
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	bl	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	str	x0, [sp, 96]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 120]
	bl	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x20, x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	str	xzr, [sp, 80]
	add	x0, sp, 48
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 88]
	mov	x1, x19
	ldr	x0, [sp, 112]
	bl	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	add	x0, x0, 8
	str	x0, [sp, 80]
	add	x0, sp, 48
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 104]
	mov	x0, x19
	bl	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	str	x0, [sp, 80]
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 112]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 112]
	mov	x0, x3
	bl	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 88]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
	ldr	x0, [sp, 120]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11094:
	.size	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, .-_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.section	.text._ZNSt6vectorIxSaIxEE4backEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE4backEv,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE4backEv
	.type	_ZNSt6vectorIxSaIxEE4backEv, %function
_ZNSt6vectorIxSaIxEE4backEv:
.LFB11098:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIxSaIxEE3endEv
	str	x0, [sp, 40]
	add	x0, sp, 40
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl
	str	x0, [sp, 32]
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11098:
	.size	_ZNSt6vectorIxSaIxEE4backEv, .-_ZNSt6vectorIxSaIxEE4backEv
	.section	.text._ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"axG",@progbits,_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.type	_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_, %function
_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB11099:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	ldr	x0, [x0]
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
.LFE11099:
	.size	_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_, .-_ZN9__gnu_cxxeqIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv:
.LFB11100:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11100:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv
	.section	.text._ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"axG",@progbits,_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.type	_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_, %function
_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB11101:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11101:
	.size	_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_, .-_ZN9__gnu_cxxltIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_, %function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_:
.LFB11102:
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
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11102:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_EvT_T0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB11103:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11103:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_, %function
_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_:
.LFB11105:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 29127
	movk	x0, 0xc71c, lsl 16
	movk	x0, 0x1c71, lsl 32
	movk	x0, 0x1c7, lsl 48
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_
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
.LFE11105:
	.size	_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI4inptSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNSaI4inptEC2ERKS0_,"axG",@progbits,_ZNSaI4inptEC5ERKS0_,comdat
	.align	2
	.weak	_ZNSaI4inptEC2ERKS0_
	.type	_ZNSaI4inptEC2ERKS0_, %function
_ZNSaI4inptEC2ERKS0_:
.LFB11107:
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
	bl	_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11107:
	.size	_ZNSaI4inptEC2ERKS0_, .-_ZNSaI4inptEC2ERKS0_
	.weak	_ZNSaI4inptEC1ERKS0_
	.set	_ZNSaI4inptEC1ERKS0_,_ZNSaI4inptEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_:
.LFB11110:
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
	bl	_ZNSaI4inptEC2ERKS0_
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11110:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI4inptSaIS0_EE12_Vector_implC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm:
.LFB11112:
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
	bl	_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11112:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseI4inptSaIS0_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m:
.LFB11113:
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
	beq	.L226
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m
.L226:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11113:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI4inptSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E:
.LFB11114:
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
	bl	_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11114:
	.size	_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIP4inptmS0_ET_S2_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIP4inptEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP4inptEvT_S2_,comdat
	.align	2
	.weak	_ZSt8_DestroyIP4inptEvT_S2_
	.type	_ZSt8_DestroyIP4inptEvT_S2_, %function
_ZSt8_DestroyIP4inptEvT_S2_:
.LFB11115:
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
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11115:
	.size	_ZSt8_DestroyIP4inptEvT_S2_, .-_ZSt8_DestroyIP4inptEvT_S2_
	.section	.text._ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_:
.LFB11117:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11117:
	.size	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC5ES4_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_, %function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_:
.LFB11119:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 16
	bl	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
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
.LFE11119:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC1ES4_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC1ES4_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEC2ES4_
	.section	.text._ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, %function
_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11121:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, ne
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11121:
	.size	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, %function
_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB11122:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x1, x0, 3
	mov	x0, 36409
	movk	x0, 0x38e3, lsl 16
	movk	x0, 0xe38e, lsl 32
	movk	x0, 0x8e38, lsl 48
	mul	x0, x1, x0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11122:
	.size	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_,comdat
	.align	2
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_, %function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_:
.LFB11123:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	b	.L238
.L241:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L239
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	b	.L237
.L239:
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	ldr	x2, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_
	str	x0, [sp, 56]
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_
	ldr	x0, [sp, 56]
	str	x0, [sp, 32]
.L238:
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L241
.L237:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11123:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_T1_
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,comdat
	.align	2
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, %function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_:
.LFB11124:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L243
	add	x0, sp, 40
	mov	x1, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	add	x0, sp, 40
	mov	x1, 16
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	b	.L245
.L243:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
.L245:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11124:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, .-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, %function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11262:
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
.LFE11262:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_:
.LFB11263:
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
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11263:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_:
.LFB11265:
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
.LFE11265:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.section	.text._ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, %function
_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc:
.LFB11267:
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
	bl	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE4sizeEv
	sub	x1, x19, x0
	ldr	x0, [sp, 48]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L251
	ldr	x0, [sp, 40]
	bl	_ZSt20__throw_length_errorPKc
.L251:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE4sizeEv
	str	x0, [sp, 64]
	add	x1, sp, 48
	add	x0, sp, 64
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE4sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bcc	.L252
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 72]
	cmp	x0, x1
	bls	.L253
.L252:
	ldr	x0, [sp, 56]
	bl	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	b	.L254
.L253:
	ldr	x0, [sp, 72]
.L254:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11267:
	.size	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE5beginEv
	.type	_ZNSt6vectorIxSaIxEE5beginEv, %function
_ZNSt6vectorIxSaIxEE5beginEv:
.LFB11268:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11268:
	.size	_ZNSt6vectorIxSaIxEE5beginEv, .-_ZNSt6vectorIxSaIxEE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, %function
_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB11269:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	ldr	x0, [x0]
	sub	x0, x19, x0
	asr	x0, x0, 3
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11269:
	.size	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm:
.LFB11270:
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
	beq	.L261
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	b	.L263
.L261:
	mov	x0, 0
.L263:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11270:
	.size	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, .-_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.section	.text._ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.type	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_, %function
_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_:
.LFB11271:
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
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11271:
	.size	_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_, .-_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv:
.LFB11272:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11272:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.section	.text._ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11273:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11273:
	.size	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, %function
_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E:
.LFB11275:
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
	bl	_ZSt8_DestroyIPxEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11275:
	.size	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl:
.LFB11276:
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
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x1, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11276:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv:
.LFB11277:
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
.LFE11277:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEdeEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv:
.LFB11278:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11278:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB11279:
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
.LFE11279:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_:
.LFB11281:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11281:
	.size	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB11280:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	add	x0, sp, 47
	bl	_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_
	ldrb	w1, [x0]
	ldr	x0, [sp, 16]
	strb	w1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11280:
	.size	_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIcENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_, %function
_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_:
.LFB11282:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11282:
	.size	_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI4inptEE8max_sizeERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4inptEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_, %function
_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_:
.LFB11284:
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
.LFE11284:
	.size	_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI4inptEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI4inptEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB11287:
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
.LFE11287:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI4inptSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm:
.LFB11289:
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
	beq	.L287
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m
	b	.L289
.L287:
	mov	x0, 0
.L289:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11289:
	.size	_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI4inptSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m:
.LFB11290:
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
	bl	_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11290:
	.size	_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI4inptEE10deallocateERS1_PS0_m
	.section	.text._ZSt25__uninitialized_default_nIP4inptmET_S2_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_
	.type	_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_, %function
_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_:
.LFB11291:
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
	bl	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11291:
	.size	_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_, .-_ZSt25__uninitialized_default_nIP4inptmET_S2_T0_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_, %function
_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_:
.LFB11292:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L294
.L295:
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofI4inptEPT_RS1_
	bl	_ZSt8_DestroyI4inptEvPT_
	ldr	x0, [sp, 24]
	add	x0, x0, 72
	str	x0, [sp, 24]
.L294:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L295
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11292:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP4inptEEvT_S4_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB11293:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11293:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_,"axG",@progbits,_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_,comdat
	.align	2
	.weak	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	.type	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_, %function
_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_:
.LFB11294:
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
	ldr	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11294:
	.size	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_, .-_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	.section	.text._ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_,comdat
	.align	2
	.weak	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_, %function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_:
.LFB11295:
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
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 56
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 72]
	add	x0, sp, 56
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	mov	x19, x0
	add	x0, sp, 48
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl
	ldr	x4, [sp, 40]
	mov	x3, x0
	ldr	x2, [sp, 72]
	mov	x1, x19
	ldr	x0, [sp, 56]
	bl	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_
	add	x0, sp, 56
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	ldr	x3, [sp, 40]
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 48]
	bl	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11295:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_, .-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_T0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl:
.LFB11296:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11296:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	.section	.text._ZN4inptC2EOS_,"axG",@progbits,_ZN4inptC5EOS_,comdat
	.align	2
	.weak	_ZN4inptC2EOS_
	.type	_ZN4inptC2EOS_, %function
_ZN4inptC2EOS_:
.LFB11299:
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
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 24]
	str	x1, [x0, 32]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	str	x1, [x0, 40]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	str	x1, [x0, 56]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 24]
	str	x1, [x0, 64]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11299:
	.size	_ZN4inptC2EOS_, .-_ZN4inptC2EOS_
	.weak	_ZN4inptC1EOS_
	.set	_ZN4inptC1EOS_,_ZN4inptC2EOS_
	.section	.text._ZN4inptD2Ev,"axG",@progbits,_ZN4inptD5Ev,comdat
	.align	2
	.weak	_ZN4inptD2Ev
	.type	_ZN4inptD2Ev, %function
_ZN4inptD2Ev:
.LFB11302:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZN4inptD2Ev, .-_ZN4inptD2Ev
	.weak	_ZN4inptD1Ev
	.set	_ZN4inptD1Ev,_ZN4inptD2Ev
	.section	.text._ZN4inptaSEOS_,"axG",@progbits,_ZN4inptaSEOS_,comdat
	.align	2
	.weak	_ZN4inptaSEOS_
	.type	_ZN4inptaSEOS_, %function
_ZN4inptaSEOS_:
.LFB11304:
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
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 24]
	str	x1, [x0, 32]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	str	x1, [x0, 40]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	str	x1, [x0, 56]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 24]
	str	x1, [x0, 64]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11304:
	.size	_ZN4inptaSEOS_, .-_ZN4inptaSEOS_
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,comdat
	.align	2
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, %function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_:
.LFB11297:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11297
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -128
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x1, sp, 48
	add	x0, sp, 56
	bl	_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L316
	add	x0, sp, 56
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 136]
	b	.L310
.L313:
	add	x0, sp, 40
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 136]
.LEHB12:
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
.LEHE12:
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L311
	add	x0, sp, 136
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 64
	bl	_ZN4inptC1EOS_
	add	x0, sp, 136
	mov	x1, 1
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	mov	x2, x0
	ldr	x1, [sp, 136]
	ldr	x0, [sp, 56]
.LEHB13:
	bl	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
.LEHE13:
	add	x0, sp, 64
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	b	.L312
.L311:
	ldr	x0, [sp, 40]
.LEHB14:
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	mov	x1, x0
	ldr	x0, [sp, 136]
	bl	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_
.L312:
	add	x0, sp, 136
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
.L310:
	add	x1, sp, 48
	add	x0, sp, 136
	bl	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L313
	b	.L307
.L315:
	mov	x19, x0
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE14:
.L316:
	nop
.L307:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11297:
	.section	.gcc_except_table
.LLSDA11297:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11297-.LLSDACSB11297
.LLSDACSB11297:
	.uleb128 .LEHB12-.LFB11297
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB11297
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L315-.LFB11297
	.uleb128 0
	.uleb128 .LEHB14-.LFB11297
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE11297:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,comdat
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.section	.text._ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_,comdat
	.align	2
	.weak	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.type	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, %function
_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_:
.LFB11305:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	str	x0, [sp, 56]
	b	.L318
.L319:
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_
	add	x0, sp, 56
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
.L318:
	add	x1, sp, 32
	add	x0, sp, 56
	bl	_ZN9__gnu_cxxneIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L319
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_, .-_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_T0_
	.section	.text._ZNKSt6vectorIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.type	_ZNKSt6vectorIxSaIxEE8max_sizeEv, %function
_ZNKSt6vectorIxSaIxEE8max_sizeEv:
.LFB11390:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	bl	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11390:
	.size	_ZNKSt6vectorIxSaIxEE8max_sizeEv, .-_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11391:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11391:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE, %function
_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE:
.LFB11392:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11392:
	.size	_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE, .-_ZNSt6vectorIxSaIxEE14_S_do_relocateEPxS2_S2_RS0_St17integral_constantIbLb1EE
	.section	.text._ZSt8_DestroyIPxEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPxEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPxEvT_S1_
	.type	_ZSt8_DestroyIPxEvT_S1_, %function
_ZSt8_DestroyIPxEvT_S1_:
.LFB11394:
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
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11394:
	.size	_ZSt8_DestroyIPxEvT_S1_, .-_ZSt8_DestroyIPxEvT_S1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv:
.LFB11395:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11395:
	.size	_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4inptE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m:
.LFB11396:
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
	bl	_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11396:
	.size	_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI4inptEE8allocateERS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m:
.LFB11397:
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
	lsl	x0, x0, 3
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
.LFE11397:
	.size	_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI4inptE10deallocateEPS1_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_:
.LFB11398:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	b	.L334
.L335:
	ldr	x0, [sp, 40]
	bl	_ZSt11__addressofI4inptEPT_RS1_
	bl	_ZSt10_ConstructI4inptJEEvPT_DpOT0_
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 16]
	ldr	x0, [sp, 40]
	add	x0, x0, 72
	str	x0, [sp, 40]
.L334:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L335
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11398:
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4inptmEET_S4_T0_
	.section	.text._ZSt11__addressofI4inptEPT_RS1_,"axG",@progbits,_ZSt11__addressofI4inptEPT_RS1_,comdat
	.align	2
	.weak	_ZSt11__addressofI4inptEPT_RS1_
	.type	_ZSt11__addressofI4inptEPT_RS1_, %function
_ZSt11__addressofI4inptEPT_RS1_:
.LFB11399:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11399:
	.size	_ZSt11__addressofI4inptEPT_RS1_, .-_ZSt11__addressofI4inptEPT_RS1_
	.section	.text._ZSt8_DestroyI4inptEvPT_,"axG",@progbits,_ZSt8_DestroyI4inptEvPT_,comdat
	.align	2
	.weak	_ZSt8_DestroyI4inptEvPT_
	.type	_ZSt8_DestroyI4inptEvPT_, %function
_ZSt8_DestroyI4inptEvPT_:
.LFB11400:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN4inptD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11400:
	.size	_ZSt8_DestroyI4inptEvPT_, .-_ZSt8_DestroyI4inptEvPT_
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_,comdat
	.align	2
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_, %function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_:
.LFB11401:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L341
.L343:
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L342
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_
.L342:
	add	x0, sp, 56
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
.L341:
	add	x1, sp, 24
	add	x0, sp, 56
	bl	_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L343
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11401:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_, .-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_T0_
	.section	.text._ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,"axG",@progbits,_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,comdat
	.align	2
	.weak	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	.type	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_, %function
_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_:
.LFB11402:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L345
.L346:
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_
.L345:
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L346
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11402:
	.size	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_, .-_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl, %function
_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl:
.LFB11403:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	neg	x0, x0
	add	x0, x2, x0
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEC1ERKS2_
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11403:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZN4inptC2ERKS_,"axG",@progbits,_ZN4inptC5ERKS_,comdat
	.align	2
	.weak	_ZN4inptC2ERKS_
	.type	_ZN4inptC2ERKS_, %function
_ZN4inptC2ERKS_:
.LFB11407:
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
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 32]
	ldr	x0, [sp, 24]
	str	x1, [x0, 32]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	str	x1, [x0, 40]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 24]
	str	x1, [x0, 56]
	ldr	x0, [sp, 16]
	ldr	x1, [x0, 64]
	ldr	x0, [sp, 24]
	str	x1, [x0, 64]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11407:
	.size	_ZN4inptC2ERKS_, .-_ZN4inptC2ERKS_
	.weak	_ZN4inptC1ERKS_
	.set	_ZN4inptC1ERKS_,_ZN4inptC2ERKS_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_, %function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_:
.LFB11405:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11405
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -192
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	add	x0, sp, 48
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	add	x0, sp, 64
.LEHB15:
	bl	_ZN4inptC1ERKS_
.LEHE15:
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	add	x0, sp, 136
.LEHB16:
	bl	_ZN4inptC1ERKS_
.LEHE16:
	add	x1, sp, 136
	add	x0, sp, 64
.LEHB17:
	blr	x19
.LEHE17:
	and	w19, w0, 255
	nop
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	w0, w19
	b	.L356
.L355:
	mov	x19, x0
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	b	.L353
.L354:
	mov	x19, x0
.L353:
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB18:
	bl	_Unwind_Resume
.LEHE18:
.L356:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11405:
	.section	.gcc_except_table
.LLSDA11405:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11405-.LLSDACSB11405
.LLSDACSB11405:
	.uleb128 .LEHB15-.LFB11405
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB11405
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L354-.LFB11405
	.uleb128 0
	.uleb128 .LEHB17-.LFB11405
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L355-.LFB11405
	.uleb128 0
	.uleb128 .LEHB18-.LFB11405
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE11405:
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_,comdat
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_,comdat
	.align	2
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_, %function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_:
.LFB11404:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L358
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L359
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	b	.L364
.L359:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L361
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	b	.L364
.L361:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	b	.L364
.L358:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L362
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	b	.L364
.L362:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L363
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	b	.L364
.L363:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
.L364:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11404:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_SD_T0_
	.section	.text._ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_,"axG",@progbits,_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_,comdat
	.align	2
	.weak	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_
	.type	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_, %function
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_:
.LFB11409:
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
	b	.L366
.L367:
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
.L366:
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L367
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
	b	.L368
.L369:
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
.L368:
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L369
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L370
	ldr	x0, [sp, 40]
	b	.L373
.L370:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
	b	.L366
.L373:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11409:
	.size	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_, .-_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEET_SD_SD_SD_T0_
	.section	.text._ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, %function
_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11410:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
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
.LFE11410:
	.size	_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxeqIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv:
.LFB11411:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	x1, x0, 72
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11411:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv:
.LFB11412:
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
.LFE11412:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_:
.LFB11413:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11413:
	.size	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,"axG",@progbits,_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,comdat
	.align	2
	.weak	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.type	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, %function
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_:
.LFB11414:
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
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11414:
	.size	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, .-_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE, %function
_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE:
.LFB11415:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11415:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb4inptS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	.section	.text._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_,comdat
	.align	2
	.weak	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_, %function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_:
.LFB11416:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11416
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 56
	bl	_ZN4inptC1EOS_
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
	add	x0, sp, 48
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
	b	.L387
.L388:
	add	x0, sp, 48
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	add	x0, sp, 48
	bl	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
.L387:
	add	x1, sp, 56
	add	x0, sp, 32
	ldr	x2, [sp, 48]
.LEHB19:
	bl	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_
.LEHE19:
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L388
	add	x0, sp, 56
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	add	x0, sp, 56
	bl	_ZN4inptD1Ev
	b	.L391
.L390:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB20:
	bl	_Unwind_Resume
.LEHE20:
.L391:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11416:
	.section	.gcc_except_table
.LLSDA11416:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11416-.LLSDACSB11416
.LLSDACSB11416:
	.uleb128 .LEHB19-.LFB11416
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L390-.LFB11416
	.uleb128 0
	.uleb128 .LEHB20-.LFB11416
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11416:
	.section	.text._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_,comdat
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIPFbS2_S2_EEEEvT_T0_
	.section	.text._ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_:
.LFB11522:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 1152921504606846975
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
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
.LFE11522:
	.size	_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11523:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11523:
	.size	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11525:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11525:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11524:
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
	bl	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
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
	beq	.L399
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L400
	bl	_ZSt28__throw_bad_array_new_lengthv
.L400:
	bl	_ZSt17__throw_bad_allocv
.L399:
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
.LFE11524:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_, %function
_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_:
.LFB11526:
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
	str	x3, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPxET_S1_
	ldr	x3, [sp, 32]
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11526:
	.size	_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_:
.LFB11527:
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
.LFE11527:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv:
.LFB11528:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 29127
	movk	x0, 0xc71c, lsl 16
	movk	x0, 0x1c71, lsl 32
	movk	x0, 0x1c7, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11528:
	.size	_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv:
.LFB11529:
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
	bl	_ZNK9__gnu_cxx13new_allocatorI4inptE11_M_max_sizeEv
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
	beq	.L408
	ldr	x1, [sp, 32]
	mov	x0, 58254
	movk	x0, 0x8e38, lsl 16
	movk	x0, 0x38e3, lsl 32
	movk	x0, 0x38e, lsl 48
	cmp	x1, x0
	bls	.L409
	bl	_ZSt28__throw_bad_array_new_lengthv
.L409:
	bl	_ZSt17__throw_bad_allocv
.L408:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 3
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
.LFE11529:
	.size	_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI4inptE8allocateEmPKv
	.section	.text._ZN4inptC2Ev,"axG",@progbits,_ZN4inptC5Ev,comdat
	.align	2
	.weak	_ZN4inptC2Ev
	.type	_ZN4inptC2Ev, %function
_ZN4inptC2Ev:
.LFB11532:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11532:
	.size	_ZN4inptC2Ev, .-_ZN4inptC2Ev
	.weak	_ZN4inptC1Ev
	.set	_ZN4inptC1Ev,_ZN4inptC2Ev
	.section	.text._ZSt10_ConstructI4inptJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI4inptJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructI4inptJEEvPT_DpOT0_
	.type	_ZSt10_ConstructI4inptJEEvPT_DpOT0_, %function
_ZSt10_ConstructI4inptJEEvPT_DpOT0_:
.LFB11530:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 72
	bl	_ZnwmPv
	mov	x1, x0
	mov	x0, x1
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	fmov	x2, d0
	str	x2, [x0, 64]
	mov	x0, x1
	bl	_ZN4inptC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11530:
	.size	_ZSt10_ConstructI4inptJEEvPT_DpOT0_, .-_ZSt10_ConstructI4inptJEEvPT_DpOT0_
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,comdat
	.align	2
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_, %function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_:
.LFB11534:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11534
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -224
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L422
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	str	x0, [sp, 224]
	ldr	x0, [sp, 224]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 232]
.L419:
	add	x0, sp, 56
	ldr	x1, [sp, 232]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 144]
	add	x0, sp, 144
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 72
	bl	_ZN4inptC1EOS_
	add	x0, sp, 72
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 152
	bl	_ZN4inptC1EOS_
	ldr	x0, [sp, 40]
	add	x1, sp, 152
	ldr	x4, [x0]
	mov	x3, x1
	ldr	x2, [sp, 224]
	ldr	x1, [sp, 232]
	ldr	x0, [sp, 56]
.LEHB21:
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_
.LEHE21:
	add	x0, sp, 152
	bl	_ZN4inptD1Ev
	ldr	x0, [sp, 232]
	cmp	x0, 0
	bne	.L416
	mov	w19, 0
	b	.L417
.L416:
	ldr	x0, [sp, 232]
	sub	x0, x0, #1
	str	x0, [sp, 232]
	mov	w19, 1
.L417:
	add	x0, sp, 72
	bl	_ZN4inptD1Ev
	cmp	w19, 1
	bne	.L423
	b	.L419
.L421:
	mov	x19, x0
	add	x0, sp, 152
	bl	_ZN4inptD1Ev
	add	x0, sp, 72
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB22:
	bl	_Unwind_Resume
.LEHE22:
.L422:
	nop
	b	.L413
.L423:
	nop
.L413:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11534:
	.section	.gcc_except_table
.LLSDA11534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11534-.LLSDACSB11534
.LLSDACSB11534:
	.uleb128 .LEHB21-.LFB11534
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L421-.LFB11534
	.uleb128 0
	.uleb128 .LEHB22-.LFB11534
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE11534:
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_,comdat
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_, .-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_RT0_
	.section	.text._ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, %function
_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB11535:
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
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11535:
	.size	_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxltIP4inptSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_,comdat
	.align	2
	.weak	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_
	.type	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_, %function
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_:
.LFB11536:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11536
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -192
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 64
	bl	_ZN4inptC1EOS_
	add	x0, sp, 56
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	add	x1, sp, 56
	add	x0, sp, 48
	bl	_ZN9__gnu_cxxmiIP4inptSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	mov	x19, x0
	add	x0, sp, 64
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 136
	bl	_ZN4inptC1EOS_
	ldr	x0, [sp, 32]
	add	x1, sp, 136
	ldr	x4, [x0]
	mov	x3, x1
	mov	x2, x19
	mov	x1, 0
	ldr	x0, [sp, 56]
.LEHB23:
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_
.LEHE23:
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	b	.L429
.L428:
	mov	x19, x0
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB24:
	bl	_Unwind_Resume
.LEHE24:
.L429:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11536:
	.section	.gcc_except_table
.LLSDA11536:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11536-.LLSDACSB11536
.LLSDACSB11536:
	.uleb128 .LEHB23-.LFB11536
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L428-.LFB11536
	.uleb128 0
	.uleb128 .LEHB24-.LFB11536
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE11536:
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_,comdat
	.size	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_, .-_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SD_SD_RT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv, %function
_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv:
.LFB11537:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x1, x0, #72
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11537:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEmmEv
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, %function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_:
.LFB11538:
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
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11538:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_, %function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_:
.LFB11539:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11539:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEEET_S8_
	.section	.text._ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.type	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, %function
_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_:
.LFB11540:
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
	bl	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, .-_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_,comdat
	.align	2
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_, %function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_:
.LFB11542:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11542:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC5EONS0_15_Iter_comp_iterIS4_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, %function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE:
.LFB11544:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
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
.LFE11544:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_, %function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_:
.LFB11546:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11546
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -192
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	add	x0, sp, 64
	ldr	x1, [sp, 48]
.LEHB25:
	bl	_ZN4inptC1ERKS_
.LEHE25:
	add	x0, sp, 40
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	add	x0, sp, 136
.LEHB26:
	bl	_ZN4inptC1ERKS_
.LEHE26:
	add	x1, sp, 136
	add	x0, sp, 64
.LEHB27:
	blr	x19
.LEHE27:
	and	w19, w0, 255
	nop
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	w0, w19
	b	.L446
.L445:
	mov	x19, x0
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	b	.L443
.L444:
	mov	x19, x0
.L443:
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB28:
	bl	_Unwind_Resume
.LEHE28:
.L446:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11546:
	.section	.gcc_except_table
.LLSDA11546:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11546-.LLSDACSB11546
.LLSDACSB11546:
	.uleb128 .LEHB25-.LFB11546
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB11546
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L444-.LFB11546
	.uleb128 0
	.uleb128 .LEHB27-.LFB11546
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L445-.LFB11546
	.uleb128 0
	.uleb128 .LEHB28-.LFB11546
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE11546:
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_,comdat
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb4inptS2_EEclIS2_NS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbRT_T0_
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11614:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11614:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPxET_S1_
	.type	_ZSt12__niter_baseIPxET_S1_, %function
_ZSt12__niter_baseIPxET_S1_:
.LFB11615:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11615:
	.size	_ZSt12__niter_baseIPxET_S1_, .-_ZSt12__niter_baseIPxET_S1_
	.section	.text._ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, %function
_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB11616:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L452
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L452:
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
.LFE11616:
	.size	_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IxxENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_,comdat
	.align	2
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_, %function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_:
.LFB11617:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11617
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -192
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 192]
	ldr	x0, [sp, 64]
	str	x0, [sp, 200]
	b	.L455
.L457:
	ldr	x0, [sp, 200]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 200]
	add	x0, sp, 72
	ldr	x1, [sp, 200]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	mov	x19, x0
	ldr	x0, [sp, 200]
	sub	x1, x0, #1
	add	x0, sp, 72
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	mov	x1, x0
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x19
.LEHB29:
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEESC_EEbT_T0_
.LEHE29:
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L456
	ldr	x0, [sp, 200]
	sub	x0, x0, #1
	str	x0, [sp, 200]
.L456:
	add	x0, sp, 72
	ldr	x1, [sp, 200]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 88]
	add	x0, sp, 88
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 96]
	add	x0, sp, 96
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	ldr	x0, [sp, 200]
	str	x0, [sp, 64]
.L455:
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 200]
	cmp	x0, x1
	blt	.L457
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L458
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 200]
	cmp	x0, x1
	bne	.L458
	ldr	x0, [sp, 200]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 200]
	ldr	x0, [sp, 200]
	sub	x1, x0, #1
	add	x0, sp, 72
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 104]
	add	x0, sp, 104
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 112]
	add	x0, sp, 112
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	ldr	x0, [sp, 200]
	sub	x0, x0, #1
	str	x0, [sp, 64]
.L458:
	add	x0, sp, 40
	bl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb4inptS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	mov	x1, x0
	add	x0, sp, 80
	bl	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE
	ldr	x0, [sp, 48]
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 120
	bl	_ZN4inptC1EOS_
	add	x1, sp, 80
	add	x0, sp, 120
	mov	x4, x1
	mov	x3, x0
	ldr	x2, [sp, 192]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
.LEHB30:
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_
.LEHE30:
	add	x0, sp, 120
	bl	_ZN4inptD1Ev
	b	.L461
.L460:
	mov	x19, x0
	add	x0, sp, 120
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB31:
	bl	_Unwind_Resume
.LEHE31:
.L461:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11617:
	.section	.gcc_except_table
.LLSDA11617:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11617-.LLSDACSB11617
.LLSDACSB11617:
	.uleb128 .LEHB29-.LFB11617
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB11617
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L460-.LFB11617
	.uleb128 0
	.uleb128 .LEHB31-.LFB11617
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE11617:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_,comdat
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_T0_SE_T1_T2_
	.section	.text._ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"axG",@progbits,_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,comdat
	.align	2
	.weak	_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.type	_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, %function
_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB11618:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZN4inptC1EOS_
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZN4inptaSEOS_
	add	x0, sp, 40
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	_ZN4inptaSEOS_
	add	x0, sp, 40
	bl	_ZN4inptD1Ev
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11618:
	.size	_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, .-_ZSt4swapI4inptENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.section	.text._ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.align	2
	.weak	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, %function
_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11619:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEE4baseEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11619:
	.size	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_:
.LFB11620:
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
	bl	_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11620:
	.size	_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb1EP4inptS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, %function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_:
.LFB11621:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt12__niter_baseIP4inptSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x1, x0
	ldr	x0, [sp, 16]
	sub	x0, x0, x1
	asr	x1, x0, 3
	mov	x0, 36409
	movk	x0, 0x38e3, lsl 16
	movk	x0, 0xe38e, lsl 32
	movk	x0, 0x8e38, lsl 48
	mul	x0, x1, x0
	mov	x1, x0
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11621:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11651:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11651:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC5EONS0_15_Iter_comp_iterIS4_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, %function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE:
.LFB11653:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRPFb4inptS0_EEONSt16remove_referenceIT_E4typeEOS5_
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
.LFE11653:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC1EONS0_15_Iter_comp_iterIS4_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_,"axG",@progbits,_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_,comdat
	.align	2
	.weak	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_:
.LFB11655:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
	b	.L473
.L476:
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 80]
	add	x0, sp, 80
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 88]
	add	x0, sp, 88
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	ldr	x0, [sp, 104]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 104]
.L473:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L474
	add	x0, sp, 72
	ldr	x1, [sp, 104]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	ldr	x2, [sp, 48]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L474
	mov	w0, 1
	b	.L475
.L474:
	mov	w0, 0
.L475:
	cmp	w0, 0
	bne	.L476
	ldr	x0, [sp, 48]
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x19, x0
	add	x0, sp, 72
	ldr	x1, [sp, 64]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEplEl
	str	x0, [sp, 96]
	add	x0, sp, 96
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x19
	bl	_ZN4inptaSEOS_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11655:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIPFbS2_S2_EEEEvT_T0_SE_T1_RT2_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_:
.LFB11656:
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
	bl	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11656:
	.size	_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb1EP4inptS1_ET1_T0_S3_S2_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_, %function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_:
.LFB11660:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11660
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -192
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	add	x0, sp, 48
	bl	_ZNK9__gnu_cxx17__normal_iteratorIP4inptSt6vectorIS1_SaIS1_EEEdeEv
	mov	x1, x0
	add	x0, sp, 64
.LEHB32:
	bl	_ZN4inptC1ERKS_
.LEHE32:
	add	x0, sp, 136
	ldr	x1, [sp, 40]
.LEHB33:
	bl	_ZN4inptC1ERKS_
.LEHE33:
	add	x1, sp, 136
	add	x0, sp, 64
.LEHB34:
	blr	x19
.LEHE34:
	and	w19, w0, 255
	nop
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	w0, w19
	b	.L485
.L484:
	mov	x19, x0
	add	x0, sp, 136
	bl	_ZN4inptD1Ev
	b	.L482
.L483:
	mov	x19, x0
.L482:
	add	x0, sp, 64
	bl	_ZN4inptD1Ev
	mov	x0, x19
.LEHB35:
	bl	_Unwind_Resume
.LEHE35:
.L485:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11660:
	.section	.gcc_except_table
.LLSDA11660:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11660-.LLSDACSB11660
.LLSDACSB11660:
	.uleb128 .LEHB32-.LFB11660
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB11660
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L483-.LFB11660
	.uleb128 0
	.uleb128 .LEHB34-.LFB11660
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L484-.LFB11660
	.uleb128 0
	.uleb128 .LEHB35-.LFB11660
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE11660:
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_,comdat
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb4inptS2_EEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEES2_EEbT_RT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_, %function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_:
.LFB11661:
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
	mov	x0, 36409
	movk	x0, 0x38e3, lsl 16
	movk	x0, 0xe38e, lsl 32
	movk	x0, 0x8e38, lsl 48
	mul	x0, x1, x0
	str	x0, [sp, 56]
	b	.L487
.L488:
	ldr	x0, [sp, 32]
	sub	x0, x0, #72
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	bl	_ZSt4moveIR4inptEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #72
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN4inptaSEOS_
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
.L487:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bgt	.L488
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11661:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4inptS4_EET0_T_S6_S5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11711:
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
	bne	.L492
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L492
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
	adrp	x0, primes
	add	x0, x0, :lo12:primes
	bl	_ZNSt6vectorIxSaIxEEC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, primes
	add	x1, x0, :lo12:primes
	adrp	x0, _ZNSt6vectorIxSaIxEED1Ev
	add	x0, x0, :lo12:_ZNSt6vectorIxSaIxEED1Ev
	bl	__cxa_atexit
.L492:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11711:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIxSaIxEED2Ev
	.type	_ZNSt6vectorIxSaIxEED2Ev, %function
_ZNSt6vectorIxSaIxEED2Ev:
.LFB11727:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11727
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
	bl	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIxSaIxEED2Ev
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
.LFE11727:
	.section	.gcc_except_table
.LLSDA11727:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11727-.LLSDACSB11727
.LLSDACSB11727:
.LLSDACSE11727:
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.size	_ZNSt6vectorIxSaIxEED2Ev, .-_ZNSt6vectorIxSaIxEED2Ev
	.weak	_ZNSt6vectorIxSaIxEED1Ev
	.set	_ZNSt6vectorIxSaIxEED1Ev,_ZNSt6vectorIxSaIxEED2Ev
	.text
	.align	2
	.type	_GLOBAL__sub_I_composite, %function
_GLOBAL__sub_I_composite:
.LFB11737:
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
.LFE11737:
	.size	_GLOBAL__sub_I_composite, .-_GLOBAL__sub_I_composite
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_composite
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
