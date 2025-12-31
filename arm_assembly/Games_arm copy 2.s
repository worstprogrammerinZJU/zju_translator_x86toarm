	.arch armv8-a
	.file	"Games.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	str	wzr, [sp, 332]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	str	wzr, [sp, 328]
	b	.L2
.L3:
	add	x1, sp, 176
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x1, sp, 32
	ldrsw	x0, [sp, 328]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 328]
	add	w0, w0, 1
	str	w0, [sp, 328]
.L2:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 328]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 324]
	b	.L4
.L8:
	str	wzr, [sp, 320]
	b	.L5
.L7:
	ldr	w1, [sp, 324]
	ldr	w0, [sp, 320]
	cmp	w1, w0
	beq	.L6
	ldrsw	x0, [sp, 324]
	lsl	x0, x0, 2
	add	x1, sp, 176
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 320]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 332]
	add	w0, w0, 1
	str	w0, [sp, 332]
.L6:
	ldr	w0, [sp, 320]
	add	w0, w0, 1
	str	w0, [sp, 320]
.L5:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 320]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 324]
	add	w0, w0, 1
	str	w0, [sp, 324]
.L4:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 324]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 332]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2224:
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
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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
.L12:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2224:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2225:
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
.LFE2225:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
