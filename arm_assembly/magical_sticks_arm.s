	.arch armv8-a
	.file	"magical_sticks.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	mov	x12, 8176
	sub	sp, sp, x12
	.cfi_def_cfa_offset 8176
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -8160
	.cfi_offset 30, -8152
	add	x29, sp, 16
	.cfi_def_cfa 29, 8160
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	str	x27, [sp, 96]
	.cfi_offset 19, -8144
	.cfi_offset 20, -8136
	.cfi_offset 21, -8128
	.cfi_offset 22, -8120
	.cfi_offset 23, -8112
	.cfi_offset 24, -8104
	.cfi_offset 25, -8096
	.cfi_offset 26, -8088
	.cfi_offset 27, -8080
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 4096
	add	x0, x0, 4008
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	ldr	x0, [x29, 8104]
	sub	x1, x0, #1
	str	x1, [x29, 8128]
	mov	x1, x0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	mov	x1, x0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	lsl	x0, x0, 3
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
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 8120]
	str	wzr, [x29, 8156]
	b	.L5
.L6:
	ldrsw	x0, [x29, 8156]
	lsl	x0, x0, 3
	ldr	x1, [x29, 8120]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	ldr	w0, [x29, 8156]
	add	w0, w0, 1
	str	w0, [x29, 8156]
.L5:
	ldrsw	x1, [x29, 8156]
	ldr	x0, [x29, 8104]
	cmp	x1, x0
	blt	.L6
	str	wzr, [x29, 8152]
	b	.L7
.L8:
	ldrsw	x0, [x29, 8152]
	lsl	x0, x0, 3
	add	x1, x29, 96
	mov	x2, 1
	str	x2, [x1, x0]
	ldr	w0, [x29, 8152]
	add	w0, w0, 1
	str	w0, [x29, 8152]
.L7:
	ldr	w0, [x29, 8152]
	cmp	w0, 1000
	ble	.L8
	str	wzr, [x29, 8148]
	b	.L9
.L12:
	ldr	w0, [x29, 8148]
	add	w0, w0, 1
	str	w0, [x29, 8144]
	b	.L10
.L11:
	ldr	x0, [x29, 8120]
	ldrsw	x1, [x29, 8148]
	ldr	x0, [x0, x1, lsl 3]
	mov	w2, w0
	ldr	x0, [x29, 8120]
	ldrsw	x1, [x29, 8144]
	ldr	x0, [x0, x1, lsl 3]
	add	w0, w2, w0
	str	w0, [x29, 8116]
	ldrsw	x0, [x29, 8116]
	lsl	x0, x0, 3
	add	x1, x29, 96
	ldr	x0, [x1, x0]
	add	x2, x0, 1
	ldrsw	x0, [x29, 8116]
	lsl	x0, x0, 3
	add	x1, x29, 96
	str	x2, [x1, x0]
	ldr	w0, [x29, 8144]
	add	w0, w0, 1
	str	w0, [x29, 8144]
.L10:
	ldrsw	x1, [x29, 8144]
	ldr	x0, [x29, 8104]
	cmp	x1, x0
	blt	.L11
	ldr	w0, [x29, 8148]
	add	w0, w0, 1
	str	w0, [x29, 8148]
.L9:
	ldrsw	x1, [x29, 8148]
	ldr	x0, [x29, 8104]
	cmp	x1, x0
	blt	.L12
	mov	w0, 1
	str	w0, [x29, 8140]
	b	.L13
.L14:
	ldrsw	x0, [x29, 8140]
	lsl	x0, x0, 3
	add	x1, x29, 96
	ldr	x0, [x1, x0]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w0, [x29, 8140]
	add	w0, w0, 1
	str	w0, [x29, 8140]
.L13:
	ldrsw	x1, [x29, 8140]
	ldr	x0, [x29, 8104]
	cmp	x1, x0
	ble	.L14
	mov	w0, 0
	mov	sp, x19
	sub	sp, x29, #16
	.cfi_def_cfa 31, 8176
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldr	x27, [sp, 96]
	ldp	x29, x30, [sp, 16]
	mov	x12, 8176
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
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
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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
.L18:
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
