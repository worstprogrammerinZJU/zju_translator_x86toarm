	.arch armv8-a
	.file	"q1391b.cpp"
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
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	.cfi_offset 21, -240
	.cfi_offset 22, -232
	.cfi_offset 23, -224
	.cfi_offset 24, -216
	.cfi_offset 25, -208
	.cfi_offset 26, -200
	.cfi_offset 27, -192
	.cfi_offset 28, -184
	add	x0, x29, 212
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [x29, 268]
	b	.L2
.L16:
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 208
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 204
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [x29, 204]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 232]
	sxtw	x0, w1
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x0, x2
	lsr	x0, x0, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, 184]
	ldr	x4, [x29, 184]
	orr	x0, x0, x4
	str	x0, [x29, 184]
	mov	x0, x2
	lsl	x0, x0, 3
	str	x0, [x29, 176]
	sxtw	x19, w1
	ldr	w2, [x29, 208]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 224]
	sxtw	x0, w1
	mov	x20, x0
	mov	x21, 0
	sxtw	x0, w2
	mov	x22, x0
	mov	x23, 0
	mul	x3, x20, x22
	umulh	x0, x20, x22
	madd	x0, x21, x22, x0
	madd	x0, x20, x23, x0
	str	x3, [x29, 112]
	str	x0, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 168]
	ldr	x3, [x29, 168]
	orr	x0, x0, x3
	str	x0, [x29, 168]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 160]
	sxtw	x0, w1
	mov	x24, x0
	mov	x25, 0
	sxtw	x0, w2
	mov	x26, x0
	mov	x27, 0
	mul	x3, x24, x26
	umulh	x0, x24, x26
	madd	x0, x25, x26, x0
	madd	x0, x24, x27, x0
	str	x3, [x29, 96]
	str	x0, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	lsr	x0, x0, 61
	mov	x3, x5
	lsl	x3, x3, 3
	str	x3, [x29, 152]
	ldr	x3, [x29, 152]
	orr	x0, x0, x3
	str	x0, [x29, 152]
	mov	x0, x4
	lsl	x0, x0, 3
	str	x0, [x29, 144]
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
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
	add	x0, x0, 0
	str	x0, [x29, 216]
	str	wzr, [x29, 264]
	b	.L6
.L9:
	str	wzr, [x29, 260]
	b	.L7
.L8:
	ldrsw	x1, [x29, 260]
	ldrsw	x0, [x29, 264]
	mul	x0, x0, x19
	add	x0, x1, x0
	ldr	x1, [x29, 216]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	ldr	w0, [x29, 260]
	add	w0, w0, 1
	str	w0, [x29, 260]
.L7:
	ldr	w0, [x29, 204]
	ldr	w1, [x29, 260]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [x29, 264]
	add	w0, w0, 1
	str	w0, [x29, 264]
.L6:
	ldr	w0, [x29, 208]
	ldr	w1, [x29, 264]
	cmp	w1, w0
	blt	.L9
	str	wzr, [x29, 256]
	str	wzr, [x29, 252]
	b	.L10
.L12:
	ldr	w0, [x29, 204]
	sub	w0, w0, #1
	ldr	x2, [x29, 216]
	sxtw	x1, w0
	ldrsw	x0, [x29, 252]
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L11
	ldr	w0, [x29, 256]
	add	w0, w0, 1
	str	w0, [x29, 256]
.L11:
	ldr	w0, [x29, 252]
	add	w0, w0, 1
	str	w0, [x29, 252]
.L10:
	ldr	w0, [x29, 208]
	ldr	w1, [x29, 252]
	cmp	w1, w0
	blt	.L12
	str	wzr, [x29, 248]
	str	wzr, [x29, 244]
	b	.L13
.L15:
	ldr	w0, [x29, 208]
	sub	w0, w0, #1
	ldr	x2, [x29, 216]
	ldrsw	x1, [x29, 244]
	sxtw	x0, w0
	mul	x0, x0, x19
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 68
	bne	.L14
	ldr	w0, [x29, 248]
	add	w0, w0, 1
	str	w0, [x29, 248]
.L14:
	ldr	w0, [x29, 244]
	add	w0, w0, 1
	str	w0, [x29, 244]
.L13:
	ldr	w0, [x29, 204]
	ldr	w1, [x29, 244]
	cmp	w1, w0
	blt	.L15
	ldr	w1, [x29, 256]
	ldr	w0, [x29, 248]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	sp, x28
	ldr	w0, [x29, 268]
	add	w0, w0, 1
	str	w0, [x29, 268]
.L2:
	ldr	w0, [x29, 212]
	ldr	w1, [x29, 268]
	cmp	w1, w0
	ble	.L16
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
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
