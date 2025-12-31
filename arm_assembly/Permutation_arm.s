	.arch armv8-a
	.file	"Permutation.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
	.type	_ZN6__pstl9execution2v1L3seqE, %object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L3parE, %object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L9par_unseqE, %object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.align	3
	.type	_ZN6__pstl9execution2v1L5unseqE, %object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3184:
	.cfi_startproc
	mov	x12, 20064
	sub	sp, sp, x12
	.cfi_def_cfa_offset 20064
	stp	x29, x30, [sp]
	.cfi_offset 29, -20064
	.cfi_offset 30, -20056
	mov	x29, sp
	add	x0, sp, 16384
	add	x0, x0, 3668
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 32
	mov	x1, 20020
	mov	x2, x1
	mov	w1, 0
	bl	memset
	add	x0, sp, 16384
	str	wzr, [x0, 3676]
	b	.L2
.L4:
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w1, [sp, 28]
	add	x0, sp, 16384
	ldr	w0, [x0, 3668]
	cmp	w1, w0
	bgt	.L3
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	mov	w2, 1
	str	w2, [x1, x0]
.L3:
	add	x0, sp, 16384
	ldr	w0, [x0, 3676]
	add	w0, w0, 1
	add	x1, sp, 16384
	str	w0, [x1, 3676]
.L2:
	add	x0, sp, 16384
	ldr	w0, [x0, 3668]
	add	x1, sp, 16384
	ldr	w1, [x1, 3676]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32
	add	x0, x0, 4
	add	x1, sp, 16384
	ldr	w1, [x1, 3668]
	sxtw	x1, w1
	add	x1, x1, 1
	lsl	x1, x1, 2
	add	x2, sp, 32
	add	x1, x2, x1
	add	x2, sp, 16384
	str	wzr, [x2, 3672]
	add	x2, sp, 16384
	add	x2, x2, 3672
	bl	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEl
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 20064
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3184:
	.size	main, .-main
	.section	.text._ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_,"axG",@progbits,_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_,comdat
	.align	2
	.weak	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	.type	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_, %function
_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_:
.LFB3453:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3453:
	.size	_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_, .-_ZSt5countIPiiENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_
	.section	.text._ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_,"axG",@progbits,_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	.type	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_, %function
_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_:
.LFB3534:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 40
	ldr	x1, [sp, 24]
	bl	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3534:
	.size	_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_, .-_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_
	.section	.text._ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_,"axG",@progbits,_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_,comdat
	.align	2
	.weak	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	.type	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_, %function
_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_:
.LFB3535:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	xzr, [sp, 56]
	b	.L11
.L13:
	add	x0, sp, 24
	ldr	x1, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
.L12:
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
.L11:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L13
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3535:
	.size	_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_, .-_ZSt10__count_ifIPiN9__gnu_cxx5__ops16_Iter_equals_valIKiEEENSt15iterator_traitsIT_E15difference_typeES7_S7_T0_
	.section	.text._ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_,"axG",@progbits,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC5ERS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.type	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_, %function
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_:
.LFB3571:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3571:
	.size	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_, .-_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_
	.set	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC1ERS2_,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_
	.section	.text._ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_,"axG",@progbits,_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	.type	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_, %function
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_:
.LFB3573:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3573:
	.size	_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_, .-_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclIPiEEbT_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB3697:
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
.LFE3697:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB3698:
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
.LFE3698:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
