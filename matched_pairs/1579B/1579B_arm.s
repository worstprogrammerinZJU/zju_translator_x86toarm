	.arch armv8-a
	.file	"1579B.cpp"
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
	.type	_ZL3INF, %object
	.size	_ZL3INF, 8
_ZL3INF:
	.xword	2000000000000000000
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
	stp	x29, x30, [sp, -304]!
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -288
	.cfi_offset 20, -280
	.cfi_offset 21, -272
	.cfi_offset 22, -264
	.cfi_offset 23, -256
	.cfi_offset 24, -248
	.cfi_offset 25, -240
	.cfi_offset 26, -232
	.cfi_offset 27, -224
	mov	w0, 0
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	add	x0, x29, 240
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L2
.L19:
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 236
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 236]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 272]
	sxtw	x1, w0
	str	x1, [x29, 144]
	str	xzr, [x29, 152]
	ldp	x2, x3, [x29, 144]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 216]
	ldr	x4, [x29, 216]
	orr	x1, x1, x4
	str	x1, [x29, 216]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 208]
	sxtw	x1, w0
	str	x1, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 200]
	ldr	x4, [x29, 200]
	orr	x1, x1, x4
	str	x1, [x29, 200]
	mov	x1, x2
	lsl	x1, x1, 5
	str	x1, [x29, 192]
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
	str	x0, [x29, 264]
	str	wzr, [x29, 300]
	b	.L6
.L7:
	ldrsw	x0, [x29, 300]
	lsl	x0, x0, 2
	ldr	x1, [x29, 264]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 300]
	add	w0, w0, 1
	str	w0, [x29, 300]
.L6:
	ldr	w0, [x29, 236]
	ldr	w1, [x29, 300]
	cmp	w1, w0
	blt	.L7
	ldr	w2, [x29, 236]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 256]
	sxtw	x0, w2
	str	x0, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x4, x5, [x29, 112]
	mov	x0, x4
	mov	x1, x5
	lsr	x3, x0, 63
	lsl	x21, x1, 1
	orr	x21, x3, x21
	lsl	x20, x0, 1
	mov	x0, x20
	mov	x1, x21
	mov	x3, x4
	adds	x3, x0, x3
	mov	x4, x5
	adc	x0, x1, x4
	str	x3, [x29, 176]
	str	x0, [x29, 184]
	ldp	x4, x5, [x29, 176]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x23, x1, 5
	orr	x23, x0, x23
	mov	x0, x4
	lsl	x22, x0, 5
	stp	x22, x23, [x29, 176]
	sxtw	x0, w2
	str	x0, [x29, 96]
	str	xzr, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	mov	x1, x5
	lsr	x3, x0, 63
	lsl	x25, x1, 1
	orr	x25, x3, x25
	lsl	x24, x0, 1
	mov	x0, x24
	mov	x1, x25
	mov	x3, x4
	adds	x3, x0, x3
	mov	x4, x5
	adc	x0, x1, x4
	str	x3, [x29, 160]
	str	x0, [x29, 168]
	ldp	x4, x5, [x29, 160]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x27, x1, 5
	orr	x27, x0, x27
	mov	x0, x4
	lsl	x26, x0, 5
	stp	x26, x27, [x29, 160]
	sxtw	x1, w2
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
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
	str	x0, [x29, 248]
	str	wzr, [x29, 296]
	mov	w0, 1
	str	w0, [x29, 292]
	b	.L11
.L16:
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 292]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [x29, 244]
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 292]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 292]
	sub	w2, w0, #1
	ldr	x0, [x29, 264]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L12
	ldr	w0, [x29, 292]
	sub	w0, w0, #1
	str	w0, [x29, 288]
	str	wzr, [x29, 284]
	b	.L13
.L15:
	ldr	w0, [x29, 284]
	add	w0, w0, 1
	str	w0, [x29, 284]
	ldr	w0, [x29, 288]
	add	w3, w0, 1
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 288]
	ldr	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 264]
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 288]
	sub	w0, w0, #1
	str	w0, [x29, 288]
.L13:
	ldr	x0, [x29, 264]
	ldrsw	x1, [x29, 288]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 244]
	cmp	w1, w0
	bge	.L14
	ldr	w0, [x29, 288]
	cmp	w0, 0
	bge	.L15
.L14:
	ldr	w0, [x29, 288]
	add	w1, w0, 1
	ldr	x0, [x29, 264]
	sxtw	x1, w1
	ldr	w2, [x29, 244]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 292]
	add	w2, w0, 1
	ldr	x3, [x29, 248]
	ldrsw	x1, [x29, 296]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0]
	ldr	w0, [x29, 288]
	add	w2, w0, 2
	ldr	x3, [x29, 248]
	ldrsw	x1, [x29, 296]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	ldr	x2, [x29, 248]
	ldrsw	x1, [x29, 296]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x29, 284]
	str	w1, [x0, 8]
	ldr	w0, [x29, 296]
	add	w0, w0, 1
	str	w0, [x29, 296]
.L12:
	ldr	w0, [x29, 292]
	add	w0, w0, 1
	str	w0, [x29, 292]
.L11:
	ldr	w0, [x29, 236]
	ldr	w1, [x29, 292]
	cmp	w1, w0
	blt	.L16
	ldr	w1, [x29, 296]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	w1, 10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	str	wzr, [x29, 280]
	b	.L17
.L18:
	ldr	x2, [x29, 248]
	ldrsw	x1, [x29, 280]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x3, x0
	ldr	x2, [x29, 248]
	ldrsw	x1, [x29, 280]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	mov	w1, w0
	mov	x0, x3
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x3, x0
	ldr	x2, [x29, 248]
	ldrsw	x1, [x29, 280]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 8]
	mov	w1, w0
	mov	x0, x3
	bl	_ZNSolsEi
	mov	w1, 10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	ldr	w0, [x29, 280]
	add	w0, w0, 1
	str	w0, [x29, 280]
.L17:
	ldr	w1, [x29, 280]
	ldr	w0, [x29, 296]
	cmp	w1, w0
	blt	.L18
	mov	sp, x19
.L2:
	ldr	w0, [x29, 240]
	sub	w1, w0, #1
	str	w1, [x29, 240]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 304
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
	bne	.L23
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L23
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
.L23:
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
