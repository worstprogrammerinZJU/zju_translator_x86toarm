	.arch armv8-a
	.file	"Even Hate Odd.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2316:
	.cfi_startproc
	sub	x12, sp, #393216
	.cfi_def_cfa 12, 393216
.LPSRL0:
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	.cfi_def_cfa_register 31
	mov	x12, 6848
	sub	sp, sp, x12
	.cfi_def_cfa_offset 400064
	stp	x29, x30, [sp]
	.cfi_offset 29, -400064
	.cfi_offset 30, -400056
	mov	x29, sp
	add	x0, sp, 397312
	add	x0, x0, 2736
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L2
.L10:
	add	x0, sp, 397312
	add	x0, x0, 2732
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 393216
	str	wzr, [x0, 6844]
	add	x0, sp, 393216
	str	wzr, [x0, 6840]
	add	x0, sp, 393216
	str	wzr, [x0, 6836]
	b	.L3
.L6:
	add	x1, sp, 24
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6836]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 393216
	ldrsw	x0, [x0, 6836]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	add	x0, sp, 393216
	ldr	w0, [x0, 6844]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6844]
	b	.L5
.L4:
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6840]
.L5:
	add	x0, sp, 393216
	ldr	w0, [x0, 6836]
	add	w0, w0, 1
	add	x1, sp, 393216
	str	w0, [x1, 6836]
.L3:
	add	x0, sp, 393216
	ldr	w0, [x0, 6828]
	add	x1, sp, 393216
	ldr	w1, [x1, 6836]
	cmp	w1, w0
	blt	.L6
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	cmp	w1, w0
	bne	.L7
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
.L7:
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 393216
	ldr	w1, [x0, 6844]
	add	x0, sp, 393216
	ldr	w0, [x0, 6840]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
.L9:
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.L2:
	add	x0, sp, 393216
	ldr	w0, [x0, 6832]
	sub	w1, w0, #1
	add	x2, sp, 393216
	str	w1, [x2, 6832]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 2752
	.cfi_def_cfa_offset 397312
	add	sp, sp, 397312
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2316:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2966:
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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
.L14:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2966:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2967:
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
.LFE2967:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
