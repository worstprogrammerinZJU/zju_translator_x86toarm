	.arch armv8-a
	.file	"Mirror Array.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	mov	x12, 44144
	sub	sp, sp, x12
	.cfi_def_cfa_offset 44144
	stp	x29, x30, [sp]
	.cfi_offset 29, -44144
	.cfi_offset 30, -44136
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 32768
	str	wzr, [x0, 11372]
	b	.L2
.L5:
	add	x0, sp, 32768
	str	wzr, [x0, 11368]
	b	.L3
.L4:
	add	x2, sp, 24
	add	x0, sp, 32768
	ldrsw	x3, [x0, 11368]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11372]
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
	ldr	w0, [x0, 11368]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11368]
.L3:
	ldr	w0, [sp, 16]
	add	x1, sp, 32768
	ldr	w1, [x1, 11368]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 11372]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11372]
.L2:
	ldr	w0, [sp, 20]
	add	x1, sp, 32768
	ldr	w1, [x1, 11372]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 32768
	str	wzr, [x0, 11364]
	b	.L6
.L9:
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	add	x1, sp, 32768
	str	w0, [x1, 11360]
	b	.L7
.L8:
	add	x0, sp, 32768
	ldrsw	x2, [x0, 11360]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 11364]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	sub	w0, w0, #1
	add	x1, sp, 32768
	str	w0, [x1, 11360]
.L7:
	add	x0, sp, 32768
	ldr	w0, [x0, 11360]
	cmp	w0, 0
	bge	.L8
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 32768
	ldr	w0, [x0, 11364]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 11364]
.L6:
	ldr	w0, [sp, 20]
	add	x1, sp, 32768
	ldr	w1, [x1, 11364]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 44144
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
.LFB2232:
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
.LFE2232:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2233:
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
.LFE2233:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
