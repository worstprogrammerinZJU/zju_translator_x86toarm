	.arch armv8-a
	.file	"Search In Matrix.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"will not take number"
	.align	3
.LC1:
	.string	"will take number"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	mov	x12, 44160
	sub	sp, sp, x12
	.cfi_def_cfa_offset 44160
	stp	x29, x30, [sp]
	.cfi_offset 29, -44160
	.cfi_offset 30, -44152
	mov	x29, sp
	add	x0, sp, 32768
	str	wzr, [x0, 11388]
	add	x0, sp, 40960
	add	x0, x0, 3176
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 40960
	add	x0, x0, 3172
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11384]
	b	.L2
.L5:
	add	x0, sp, 32768
	str	wzr, [x0, 11380]
	b	.L3
.L4:
	add	x2, sp, 32
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11380]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11384]
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
	ldr	w0, [x0, 11380]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11380]
.L3:
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	x1, sp, 32768
	ldr	w1, [x1, 11380]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11384]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11384]
.L2:
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	x1, sp, 32768
	ldr	w1, [x1, 11384]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11376]
	b	.L6
.L11:
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L7
.L10:
	add	x0, sp, 32768
	ldrsw	x2, [x0, 11372]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11376]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L8
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11388]
	b	.L9
.L8:
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
.L7:
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L10
.L9:
	add	x0, sp, 32768
	ldr	w0, [x0, 11376]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11376]
.L6:
	add	x0, sp, 32768
	ldr	w0, [x0, 11368]
	add	x1, sp, 32768
	ldr	w1, [x1, 11376]
	cmp	w1, w0
	blt	.L11
	add	x0, sp, 32768
	ldr	w0, [x0, 11388]
	cmp	w0, 1
	bne	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L13
.L12:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L13:
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 44160
	add	sp, sp, x12
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
.LFB2227:
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
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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
.L17:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2227:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2228:
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
.LFE2228:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
