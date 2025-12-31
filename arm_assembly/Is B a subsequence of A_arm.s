	.arch armv8-a
	.file	"Is B a subsequence of A.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	sub	sp, sp, #65536
	.cfi_def_cfa_offset 65536
	str	xzr, [sp, 1024]
	mov	x12, 14560
	sub	sp, sp, x12
	.cfi_def_cfa_offset 80096
	stp	x29, x30, [sp]
	.cfi_offset 29, -80096
	.cfi_offset 30, -80088
	mov	x29, sp
	add	x0, sp, 77824
	add	x0, x0, 2252
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 77824
	add	x0, x0, 2248
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 65536
	str	wzr, [x0, 14556]
	b	.L2
.L3:
	add	x1, sp, 36864
	add	x1, x1, 3184
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14556]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 65536
	ldr	w0, [x0, 14556]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14556]
.L2:
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	x1, sp, 65536
	ldr	w1, [x1, 14556]
	cmp	w1, w0
	blt	.L3
	add	x0, sp, 65536
	str	wzr, [x0, 14552]
	b	.L4
.L5:
	add	x1, sp, 24
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14552]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 65536
	ldr	w0, [x0, 14552]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14552]
.L4:
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14552]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 65536
	str	wzr, [x0, 14548]
	add	x0, sp, 65536
	str	wzr, [x0, 14544]
	b	.L6
.L9:
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14548]
	lsl	x0, x0, 2
	add	x1, sp, 36864
	add	x1, x1, 3184
	ldr	w1, [x1, x0]
	add	x0, sp, 65536
	ldrsw	x0, [x0, 14544]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bne	.L7
	add	x0, sp, 65536
	ldr	w0, [x0, 14544]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14544]
.L7:
	add	x0, sp, 65536
	ldr	w0, [x0, 14548]
	add	w0, w0, 1
	add	x1, sp, 65536
	str	w0, [x1, 14548]
.L6:
	add	x0, sp, 65536
	ldr	w0, [x0, 14540]
	add	x1, sp, 65536
	ldr	w1, [x1, 14548]
	cmp	w1, w0
	bge	.L8
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14544]
	cmp	w1, w0
	blt	.L9
.L8:
	add	x0, sp, 65536
	ldr	w0, [x0, 14536]
	add	x1, sp, 65536
	ldr	w1, [x1, 14544]
	cmp	w1, w0
	bne	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L11
.L10:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L11:
	mov	w0, 0
	ldp	x29, x30, [sp]
	.cfi_restore 29
	.cfi_restore 30
	add	sp, sp, 2272
	.cfi_def_cfa_offset 77824
	add	sp, sp, 77824
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
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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
.L15:
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
