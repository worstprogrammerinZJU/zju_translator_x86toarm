	.arch armv8-a
	.file	"The New Year Meeting Friends.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB1730:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
.L2:
	ldr	x0, [sp, 8]
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1730:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	wzr, [sp, 44]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L5
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L5
	mov	w0, 1
	b	.L6
.L5:
	mov	w0, 0
.L6:
	cmp	w0, 0
	beq	.L7
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 40]
	add	x1, sp, 24
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	str	w0, [sp, 32]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	b	.L8
.L7:
	add	x1, sp, 24
	add	x0, sp, 20
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L9
	add	x1, sp, 24
	add	x0, sp, 20
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L9
	mov	w0, 1
	b	.L10
.L9:
	mov	w0, 0
.L10:
	cmp	w0, 0
	beq	.L11
	add	x1, sp, 24
	add	x0, sp, 20
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 40]
	add	x1, sp, 24
	add	x0, sp, 20
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	b	.L8
.L11:
	add	x1, sp, 28
	add	x0, sp, 20
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L12
	add	x1, sp, 28
	add	x0, sp, 20
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L12
	mov	w0, 1
	b	.L13
.L12:
	mov	w0, 0
.L13:
	cmp	w0, 0
	beq	.L8
	add	x1, sp, 28
	add	x0, sp, 20
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 40]
	add	x1, sp, 28
	add	x0, sp, 20
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
.L8:
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.size	main, .-main
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, %function
_ZSt3maxIiERKT_S2_S2_:
.LFB1991:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L16
	ldr	x0, [sp]
	b	.L17
.L16:
	ldr	x0, [sp, 8]
.L17:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1991:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2226:
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
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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
.L20:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2226:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2227:
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
.LFE2227:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
