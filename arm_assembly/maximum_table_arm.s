	.arch armv8-a
	.file	"maximum_table.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	sub	sp, sp, #944
	.cfi_def_cfa_offset 944
	stp	x29, x30, [sp]
	.cfi_offset 29, -944
	.cfi_offset 30, -936
	mov	x29, sp
	add	x0, sp, 924
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 940]
	b	.L2
.L5:
	mov	w0, 1
	str	w0, [sp, 936]
	b	.L3
.L4:
	ldrsw	x2, [sp, 936]
	ldrsw	x1, [sp, 940]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 936]
	add	w0, w0, 1
	str	w0, [sp, 936]
.L3:
	ldr	w0, [sp, 924]
	ldr	w1, [sp, 936]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 940]
	add	w0, w0, 1
	str	w0, [sp, 940]
.L2:
	ldr	w0, [sp, 940]
	cmp	w0, 1
	ble	.L5
	mov	w0, 2
	str	w0, [sp, 932]
	b	.L6
.L9:
	ldrsw	x1, [sp, 932]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 28
	mov	w2, 1
	str	w2, [x1, x0]
	mov	w0, 2
	str	w0, [sp, 928]
	b	.L7
.L8:
	ldr	w0, [sp, 932]
	sub	w0, w0, #1
	ldrsw	x2, [sp, 928]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldr	w0, [sp, 928]
	sub	w0, w0, #1
	sxtw	x3, w0
	ldrsw	x1, [sp, 932]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x3, [sp, 928]
	ldrsw	x1, [sp, 932]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 928]
	add	w0, w0, 1
	str	w0, [sp, 928]
.L7:
	ldr	w0, [sp, 924]
	ldr	w1, [sp, 928]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 932]
	add	w0, w0, 1
	str	w0, [sp, 932]
.L6:
	ldr	w0, [sp, 924]
	ldr	w1, [sp, 932]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 924]
	ldr	w1, [sp, 924]
	sxtw	x2, w1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 944
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2229:
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
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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
.L13:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2229:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2230:
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
.LFE2230:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
