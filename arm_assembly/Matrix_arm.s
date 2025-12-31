	.arch armv8-a
	.file	"Matrix.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2316:
	.cfi_startproc
	mov	x12, 44160
	sub	sp, sp, x12
	.cfi_def_cfa_offset 44160
	stp	x29, x30, [sp]
	.cfi_offset 29, -44160
	.cfi_offset 30, -44152
	mov	x29, sp
	add	x0, sp, 40960
	add	x0, x0, 3168
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11388]
	b	.L2
.L5:
	add	x0, sp, 32768
	str	wzr, [x0, 11384]
	b	.L3
.L4:
	add	x2, sp, 24
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11384]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11388]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x3, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 32768
	ldr	w0, [x0, 11384]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11384]
.L3:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11384]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11388]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11388]
.L2:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11388]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 32768
	str	wzr, [x0, 11380]
	add	x0, sp, 32768
	str	wzr, [x0, 11376]
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L6
.L7:
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11372]
	mov	x0, 424
	mul	x0, x1, x0
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 11380]
	add	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 11380]
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
.L6:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L7
	add	x0, sp, 32768
	str	wzr, [x0, 11368]
	b	.L8
.L9:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	sub	w1, w0, #1
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	sub	w0, w1, w0
	sxtw	x2, w0
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11368]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 11376]
	add	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 11376]
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11368]
.L8:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	add	x1, sp, 32768
	ldr	w1, [x1, 11368]
	cmp	w1, w0
	blt	.L9
	add	x0, sp, 32768
	ldr	w1, [x0, 11380]
	add	x0, sp, 32768
	ldr	w0, [x0, 11376]
	sub	w0, w1, w0
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	x1, sp, 32768
	str	w0, [x1, 11364]
	add	x0, sp, 32768
	ldr	w1, [x0, 11364]
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
	mov	x12, 44160
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
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
