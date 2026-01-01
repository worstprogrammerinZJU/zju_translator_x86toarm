	.arch armv8-a
	.file	"TeamOlympiad.cpp"
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
	.align	3
.LC0:
	.string	" "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9696:
	.cfi_startproc
	stp	x29, x30, [sp, -384]!
	.cfi_def_cfa_offset 384
	.cfi_offset 29, -384
	.cfi_offset 30, -376
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -368
	.cfi_offset 20, -360
	.cfi_offset 21, -352
	.cfi_offset 22, -344
	.cfi_offset 23, -336
	.cfi_offset 24, -328
	.cfi_offset 25, -320
	.cfi_offset 26, -312
	.cfi_offset 27, -304
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 292
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w1, [x29, 292]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 352]
	sxtw	x0, w1
	str	x0, [x29, 208]
	str	xzr, [x29, 216]
	ldp	x2, x3, [x29, 208]
	mov	x0, x2
	lsr	x0, x0, 59
	mov	x4, x3
	lsl	x21, x4, 5
	orr	x21, x0, x21
	mov	x0, x2
	lsl	x20, x0, 5
	sxtw	x0, w1
	str	x0, [x29, 192]
	str	xzr, [x29, 200]
	ldp	x2, x3, [x29, 192]
	mov	x0, x2
	lsr	x0, x0, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 280]
	ldr	x4, [x29, 280]
	orr	x0, x0, x4
	str	x0, [x29, 280]
	mov	x0, x2
	lsl	x0, x0, 5
	str	x0, [x29, 272]
	sxtw	x0, w1
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L2:
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
.L3:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
.L4:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 344]
	str	wzr, [x29, 380]
	str	wzr, [x29, 376]
	str	wzr, [x29, 372]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 336]
	sxtw	x1, w0
	str	x1, [x29, 176]
	str	xzr, [x29, 184]
	ldp	x2, x3, [x29, 176]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 264]
	ldr	x4, [x29, 264]
	orr	x1, x1, x4
	str	x1, [x29, 264]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 256]
	sxtw	x1, w0
	str	x1, [x29, 160]
	str	xzr, [x29, 168]
	ldp	x2, x3, [x29, 160]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 248]
	ldr	x4, [x29, 248]
	orr	x1, x1, x4
	str	x1, [x29, 248]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 240]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L5:
	cmp	sp, x1
	beq	.L6
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L5
.L6:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L7
	str	xzr, [sp, 1024]
.L7:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 328]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 320]
	sxtw	x1, w0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 232]
	ldr	x4, [x29, 232]
	orr	x1, x1, x4
	str	x1, [x29, 232]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 224]
	sxtw	x1, w0
	str	x1, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x27, x4, 5
	orr	x27, x1, x27
	mov	x1, x2
	lsl	x26, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L8:
	cmp	sp, x1
	beq	.L9
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L8
.L9:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L10
	str	xzr, [sp, 1024]
.L10:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 312]
	ldr	w0, [x29, 292]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 304]
	sxtw	x1, w0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x25, x4, 5
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 5
	sxtw	x1, w0
	str	x1, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x2, x3, [x29, 96]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x23, x4, 5
	orr	x23, x1, x23
	mov	x1, x2
	lsl	x22, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L11:
	cmp	sp, x1
	beq	.L12
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L11
.L12:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L13
	str	xzr, [sp, 1024]
.L13:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 296]
	str	wzr, [x29, 364]
	b	.L14
.L21:
	ldrsw	x0, [x29, 364]
	lsl	x0, x0, 2
	ldr	x1, [x29, 344]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	x0, [x29, 344]
	ldrsw	x1, [x29, 364]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L15
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 328]
	ldrsw	x1, [x29, 380]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 380]
	add	w0, w0, 1
	str	w0, [x29, 380]
	b	.L16
.L15:
	ldr	x0, [x29, 344]
	ldrsw	x1, [x29, 364]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	bne	.L17
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 312]
	ldrsw	x1, [x29, 376]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 376]
	add	w0, w0, 1
	str	w0, [x29, 376]
	b	.L16
.L17:
	ldr	w0, [x29, 364]
	add	w2, w0, 1
	ldr	x0, [x29, 296]
	ldrsw	x1, [x29, 372]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 372]
	add	w0, w0, 1
	str	w0, [x29, 372]
.L16:
	mov	w0, 10000
	str	w0, [x29, 368]
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 380]
	cmp	w1, w0
	ble	.L18
	ldr	w0, [x29, 380]
	str	w0, [x29, 368]
.L18:
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 376]
	cmp	w1, w0
	ble	.L19
	ldr	w0, [x29, 376]
	str	w0, [x29, 368]
.L19:
	ldr	w1, [x29, 368]
	ldr	w0, [x29, 372]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [x29, 372]
	str	w0, [x29, 368]
.L20:
	ldr	w0, [x29, 364]
	add	w0, w0, 1
	str	w0, [x29, 364]
.L14:
	ldr	w0, [x29, 292]
	ldr	w1, [x29, 364]
	cmp	w1, w0
	blt	.L21
	ldr	w1, [x29, 368]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	str	wzr, [x29, 360]
	b	.L22
.L23:
	ldr	x0, [x29, 328]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [x29, 312]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	x0, [x29, 296]
	ldrsw	x1, [x29, 360]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [x29, 360]
	add	w0, w0, 1
	str	w0, [x29, 360]
.L22:
	ldr	w1, [x29, 360]
	ldr	w0, [x29, 368]
	cmp	w1, w0
	blt	.L23
	mov	sp, x19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 384
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
.LFB11452:
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
	bne	.L27
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L27
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
.L27:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11452:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11475:
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
.LFE11475:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
