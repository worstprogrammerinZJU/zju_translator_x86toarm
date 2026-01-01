	.arch armv8-a
	.file	"1512A.cpp"
	.text
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
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9696:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	add	x0, x29, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L2
.L15:
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 96]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 112]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 59
	lsl	x21, x25, 5
	orr	x21, x1, x21
	lsl	x20, x24, 5
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 59
	lsl	x23, x27, 5
	orr	x23, x1, x23
	lsl	x22, x26, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L3:
	cmp	sp, x1
	beq	.L4
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L3
.L4:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L5
	str	xzr, [sp, 1024]
.L5:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 104]
	str	wzr, [x29, 124]
	b	.L6
.L7:
	ldrsw	x0, [x29, 124]
	lsl	x0, x0, 2
	ldr	x1, [x29, 104]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 124]
	add	w0, w0, 1
	str	w0, [x29, 124]
.L6:
	ldr	w0, [x29, 96]
	ldr	w1, [x29, 124]
	cmp	w1, w0
	blt	.L7
	str	wzr, [x29, 120]
	b	.L8
.L14:
	ldr	w0, [x29, 120]
	cmp	w0, 0
	bne	.L9
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w2, w0, 1
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L9
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w2, w0, 2
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L9
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L10
.L9:
	ldr	w0, [x29, 120]
	cmp	w0, 0
	bne	.L11
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w2, w0, 1
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L11
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w2, w0, 2
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L17
.L11:
	ldr	w0, [x29, 96]
	sub	w0, w0, #1
	ldr	w1, [x29, 120]
	cmp	w1, w0
	bne	.L13
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L10
.L13:
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w2, w0, 1
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L12
	ldr	x0, [x29, 104]
	ldrsw	x1, [x29, 120]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	sub	w2, w0, #1
	ldr	x0, [x29, 104]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L12
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L10
.L17:
	nop
.L12:
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	str	w0, [x29, 120]
.L8:
	ldr	w0, [x29, 96]
	ldr	w1, [x29, 120]
	cmp	w1, w0
	blt	.L14
.L10:
	mov	sp, x19
.L2:
	ldr	w0, [x29, 100]
	sub	w1, w0, #1
	str	w1, [x29, 100]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE9696:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11449:
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
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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
.L20:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11449:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11472:
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
.LFE11472:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
