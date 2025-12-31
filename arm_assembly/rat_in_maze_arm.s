	.arch armv8-a
	.file	"rat_in_maze.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	_Z6isSafePPiiii
	.type	_Z6isSafePPiiii, %function
_Z6isSafePPiiii:
.LFB1729:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bge	.L2
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bge	.L2
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L2
	mov	w0, 1
	b	.L3
.L2:
	mov	w0, 0
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.size	_Z6isSafePPiiii, .-_Z6isSafePPiiii
	.align	2
	.global	_Z9ratinmazePPiiiiS0_
	.type	_Z9ratinmazePPiiiiS0_, %function
_Z9ratinmazePPiiiiS0_:
.LFB1730:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	str	x4, [sp, 16]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bne	.L5
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	b	.L6
.L5:
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	_Z6isSafePPiiii
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	ldr	x4, [sp, 16]
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	_Z9ratinmazePPiiiiS0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	mov	w0, 1
	b	.L6
.L8:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	ldr	x4, [sp, 16]
	ldr	w3, [sp, 28]
	mov	w2, w0
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	_Z9ratinmazePPiiiiS0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	mov	w0, 1
	b	.L6
.L9:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	wzr, [x0]
	mov	w0, 0
	b	.L6
.L7:
	mov	w0, 0
.L6:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1730:
	.size	_Z9ratinmazePPiiiiS0_, .-_Z9ratinmazePPiiiiS0_
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1731:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [sp, 44]
	sxtw	x0, w0
	mov	x1, 1152921504606846975
	cmp	x0, x1
	bhi	.L11
	lsl	x0, x0, 3
	bl	_Znam
	str	x0, [sp, 56]
	str	wzr, [sp, 92]
	b	.L13
.L11:
	bl	__cxa_throw_bad_array_new_length
.L16:
	ldr	w0, [sp, 44]
	sxtw	x0, w0
	mov	x1, 2305843009213693950
	cmp	x0, x1
	bhi	.L14
	lsl	x2, x0, 2
	b	.L35
.L14:
	bl	__cxa_throw_bad_array_new_length
.L35:
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	mov	x0, x2
	bl	_Znam
	str	x0, [x19]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L13:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L16
	str	wzr, [sp, 88]
	b	.L17
.L20:
	str	wzr, [sp, 84]
	b	.L18
.L19:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L18:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 84]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L17:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L20
	ldr	w0, [sp, 44]
	sxtw	x0, w0
	mov	x1, 1152921504606846975
	cmp	x0, x1
	bhi	.L21
	lsl	x0, x0, 3
	bl	_Znam
	str	x0, [sp, 48]
	str	wzr, [sp, 80]
	b	.L23
.L21:
	bl	__cxa_throw_bad_array_new_length
.L28:
	ldr	w0, [sp, 44]
	sxtw	x0, w0
	mov	x1, 2305843009213693950
	cmp	x0, x1
	bhi	.L24
	lsl	x2, x0, 2
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x19, x1, x0
	mov	x0, x2
	bl	_Znam
	str	x0, [x19]
	str	wzr, [sp, 76]
	b	.L26
.L24:
	bl	__cxa_throw_bad_array_new_length
.L27:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L26:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L27
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L23:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 80]
	cmp	w1, w0
	blt	.L28
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	ldr	x4, [sp, 48]
	mov	w3, w0
	mov	w2, 0
	mov	w1, 0
	ldr	x0, [sp, 56]
	bl	_Z9ratinmazePPiiiiS0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	str	wzr, [sp, 72]
	b	.L30
.L33:
	str	wzr, [sp, 68]
	b	.L31
.L32:
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L31:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L32
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L30:
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L33
.L29:
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1731:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2234:
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
	bne	.L38
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L38
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
.L38:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2234:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z6isSafePPiiii, %function
_GLOBAL__sub_I__Z6isSafePPiiii:
.LFB2235:
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
.LFE2235:
	.size	_GLOBAL__sub_I__Z6isSafePPiiii, .-_GLOBAL__sub_I__Z6isSafePPiiii
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z6isSafePPiiii
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
