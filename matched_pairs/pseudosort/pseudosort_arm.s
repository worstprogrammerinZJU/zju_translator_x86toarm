	.arch armv8-a
	.file	"pseudosort.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	"Yes"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -128
	.cfi_offset 20, -120
	.cfi_offset 21, -112
	.cfi_offset 22, -104
	.cfi_offset 23, -96
	.cfi_offset 24, -88
	.cfi_offset 25, -80
	.cfi_offset 26, -72
	.cfi_offset 27, -64
	add	x0, x29, 104
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L2
.L17:
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 100
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 100]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 120]
	sxtw	x1, w0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	sxtw	x1, w0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
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
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 112]
	str	wzr, [x29, 140]
	b	.L6
.L7:
	ldrsw	x0, [x29, 140]
	lsl	x0, x0, 3
	ldr	x1, [x29, 112]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	ldr	w0, [x29, 140]
	add	w0, w0, 1
	str	w0, [x29, 140]
.L6:
	ldr	w0, [x29, 100]
	ldr	w1, [x29, 140]
	cmp	w1, w0
	blt	.L7
	str	wzr, [x29, 136]
	b	.L8
.L11:
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 136]
	ldr	x1, [x0, x1, lsl 3]
	ldr	w0, [x29, 136]
	add	w2, w0, 1
	ldr	x0, [x29, 112]
	sxtw	x2, w2
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	ble	.L9
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 136]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 108]
	ldr	w0, [x29, 136]
	add	w1, w0, 1
	ldr	x0, [x29, 112]
	sxtw	x1, w1
	ldr	x2, [x0, x1, lsl 3]
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 136]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [x29, 136]
	add	w1, w0, 1
	ldrsw	x2, [x29, 108]
	ldr	x0, [x29, 112]
	sxtw	x1, w1
	str	x2, [x0, x1, lsl 3]
	b	.L10
.L9:
	ldr	w0, [x29, 136]
	add	w0, w0, 1
	str	w0, [x29, 136]
.L8:
	ldr	w0, [x29, 100]
	sub	w0, w0, #1
	ldr	w1, [x29, 136]
	cmp	w1, w0
	blt	.L11
.L10:
	str	wzr, [x29, 132]
	str	wzr, [x29, 128]
	b	.L12
.L15:
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 128]
	ldr	x1, [x0, x1, lsl 3]
	ldr	w0, [x29, 128]
	add	w2, w0, 1
	ldr	x0, [x29, 112]
	sxtw	x2, w2
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	ble	.L13
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	str	w0, [x29, 132]
	b	.L14
.L13:
	ldr	w0, [x29, 128]
	add	w0, w0, 1
	str	w0, [x29, 128]
.L12:
	ldr	w0, [x29, 100]
	sub	w0, w0, #1
	ldr	w1, [x29, 128]
	cmp	w1, w0
	blt	.L15
.L14:
	ldr	w0, [x29, 132]
	cmp	w0, 0
	bne	.L16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.L16:
	mov	sp, x19
.L2:
	ldr	w0, [x29, 104]
	sub	w1, w0, #1
	str	w1, [x29, 104]
	cmp	w0, 0
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	mov	w0, 0
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 144
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
.LFE1729:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2233:
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
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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
.L21:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2233:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2234:
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
.LFE2234:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
