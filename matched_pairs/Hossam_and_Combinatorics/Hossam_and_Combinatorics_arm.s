	.arch armv8-a
	.file	"Hossam_and_Combinatorics.cpp"
	.text
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, %function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB280:
	.cfi_startproc
	nop
	ret
	.cfi_endproc
.LFE280:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_less_valC5ENS0_15_Iter_less_iterE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.type	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE, %function
_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE:
.LFB282:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE282:
	.size	_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE, .-_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_less_valC1ENS0_15_Iter_less_iterE
	.set	_ZN9__gnu_cxx5__ops14_Iter_less_valC1ENS0_15_Iter_less_iterE,_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE, %function
_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE:
.LFB292:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, 8]
	nop
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE292:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.align	2
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, %function
_ZSt4__lgl:
.LFB404:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	clz	x0, x0
	mov	w1, w0
	mov	w0, 63
	sub	w0, w0, w1
	sxtw	x0, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE404:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
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
	.align	3
.LC0:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3184:
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
	add	x0, x29, 108
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	b	.L9
.L21:
	mov	x0, sp
	mov	x19, x0
	add	x0, x29, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	ldr	x0, [x29, 96]
	sub	x1, x0, #1
	str	x1, [x29, 120]
	mov	x1, x0
	mov	x24, x1
	mov	x25, 0
	lsr	x1, x24, 58
	lsl	x21, x25, 6
	orr	x21, x1, x21
	lsl	x20, x24, 6
	mov	x1, x0
	mov	x26, x1
	mov	x27, 0
	lsr	x1, x26, 58
	lsl	x23, x27, 6
	orr	x23, x1, x23
	lsl	x22, x26, 6
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L10:
	cmp	sp, x1
	beq	.L11
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L10
.L11:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L12
	str	xzr, [sp, 1024]
.L12:
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 112]
	str	wzr, [x29, 140]
	b	.L13
.L14:
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
.L13:
	ldrsw	x1, [x29, 140]
	ldr	x0, [x29, 96]
	cmp	x1, x0
	blt	.L14
	ldr	x0, [x29, 96]
	lsl	x0, x0, 3
	ldr	x1, [x29, 112]
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 112]
	bl	_ZSt4sortIPxEvT_S1_
	ldr	x0, [x29, 112]
	ldr	x1, [x0]
	ldr	x0, [x29, 96]
	sub	x2, x0, #1
	ldr	x0, [x29, 112]
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	bne	.L15
	ldr	x0, [x29, 96]
	sub	x1, x0, #1
	ldr	x0, [x29, 96]
	mul	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L16
.L15:
	str	wzr, [x29, 136]
	str	wzr, [x29, 132]
	str	wzr, [x29, 128]
	b	.L17
.L20:
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 128]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 112]
	ldr	x0, [x0]
	cmp	x1, x0
	bne	.L18
	ldr	w0, [x29, 136]
	add	w0, w0, 1
	str	w0, [x29, 136]
	b	.L19
.L18:
	ldr	x0, [x29, 112]
	ldrsw	x1, [x29, 128]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [x29, 96]
	sub	x2, x0, #1
	ldr	x0, [x29, 112]
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	bne	.L19
	ldr	w0, [x29, 132]
	add	w0, w0, 1
	str	w0, [x29, 132]
.L19:
	ldr	w0, [x29, 128]
	add	w0, w0, 1
	str	w0, [x29, 128]
.L17:
	ldrsw	x1, [x29, 128]
	ldr	x0, [x29, 96]
	cmp	x1, x0
	blt	.L20
	ldrsw	x1, [x29, 136]
	ldrsw	x0, [x29, 132]
	mul	x0, x1, x0
	lsl	x0, x0, 1
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L16:
	mov	sp, x19
.L9:
	ldr	w0, [x29, 108]
	sub	w1, w0, #1
	str	w1, [x29, 108]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
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
.LFE3184:
	.size	main, .-main
	.section	.text._ZSt4sortIPxEvT_S1_,"axG",@progbits,_ZSt4sortIPxEvT_S1_,comdat
	.align	2
	.weak	_ZSt4sortIPxEvT_S1_
	.type	_ZSt4sortIPxEvT_S1_, %function
_ZSt4sortIPxEvT_S1_:
.LFB3454:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	bl	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3454:
	.size	_ZSt4sortIPxEvT_S1_, .-_ZSt4sortIPxEvT_S1_
	.section	.text._ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.align	2
	.weak	_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.type	_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, %function
_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
.LFB3536:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	beq	.L26
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	bl	_ZSt4__lgl
	lsl	x0, x0, 1
	mov	w3, w20
	mov	x2, x0
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	mov	w2, w19
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
.L26:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3536:
	.size	_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .-_ZSt6__sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.section	.text._ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.align	2
	.weak	_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.type	_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, %function
_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_:
.LFB3572:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	strb	w3, [sp, 48]
	b	.L28
.L31:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	bne	.L29
	mov	w3, w21
	ldr	x2, [sp, 64]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	b	.L27
.L29:
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	mov	w2, w20
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_
	str	x0, [sp, 88]
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 88]
	bl	_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	ldr	x0, [sp, 88]
	str	x0, [sp, 64]
.L28:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	cmp	x0, 128
	bgt	.L31
.L27:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3572:
	.size	_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .-_ZSt16__introsort_loopIPxlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.section	.text._ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.align	2
	.weak	_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.type	_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, %function
_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
.LFB3573:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	cmp	x0, 128
	ble	.L33
	ldr	x0, [sp, 56]
	add	x0, x0, 128
	mov	w2, w4
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	ldr	x0, [sp, 56]
	add	x0, x0, 128
	mov	w2, w19
	ldr	x1, [sp, 48]
	bl	_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	b	.L35
.L33:
	mov	w2, w3
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
.L35:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3573:
	.size	_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .-_ZSt22__final_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.section	.text._ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,"axG",@progbits,_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,comdat
	.align	2
	.weak	_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.type	_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_, %function
_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_:
.LFB3616:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	mov	w3, w4
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3616:
	.size	_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_, .-_ZSt14__partial_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.section	.text._ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_,comdat
	.align	2
	.weak	_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_
	.type	_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_, %function
_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_:
.LFB3617:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	add	x1, x0, 8
	ldr	x0, [sp, 48]
	sub	x0, x0, #8
	mov	w4, w3
	mov	x3, x0
	ldr	x2, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	mov	w3, w19
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 48]
	bl	_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3617:
	.size	_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_, .-_ZSt27__unguarded_partition_pivotIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_
	.section	.text._ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.align	2
	.weak	_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.type	_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, %function
_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
.LFB3618:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	beq	.L46
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 72]
	b	.L42
.L45:
	add	x0, sp, 40
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 72]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L43
	ldr	x0, [sp, 72]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZSt13move_backwardIPxS0_ET0_T_S2_S1_
	add	x0, sp, 64
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	str	x1, [x0]
	b	.L44
.L43:
	mov	w0, w20
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
.L44:
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L42:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L45
	b	.L39
.L46:
	nop
.L39:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3618:
	.size	_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .-_ZSt16__insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.section	.text._ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.align	2
	.weak	_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.type	_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, %function
_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
.LFB3619:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L48
.L49:
	mov	w0, w20
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE
	mov	w1, w19
	ldr	x0, [sp, 72]
	bl	_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L48:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L49
	nop
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3619:
	.size	_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .-_ZSt26__unguarded_insertion_sortIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.section	.text._ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,"axG",@progbits,_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_,comdat
	.align	2
	.weak	_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.type	_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_, %function
_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_:
.LFB3664:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 16
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L51
.L53:
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 56]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L52
	add	x0, sp, 16
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_
.L52:
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
.L51:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L53
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3664:
	.size	_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_, .-_ZSt13__heap_selectIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_
	.section	.text._ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.align	2
	.weak	_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.type	_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, %function
_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_:
.LFB3665:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L55
.L56:
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_
.L55:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	cmp	x0, 8
	bgt	.L56
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3665:
	.size	_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .-_ZSt11__sort_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_:
.LFB3667:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3667:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	.section	.text._ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_,comdat
	.align	2
	.weak	_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_
	.type	_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_, %function
_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_:
.LFB3666:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 24
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L60
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L61
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L66
.L61:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L63
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L66
.L63:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L66
.L60:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 48]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L64
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L66
.L64:
	add	x0, sp, 24
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 40]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L65
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	b	.L66
.L65:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
.L66:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3666:
	.size	_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_, .-_ZSt22__move_median_to_firstIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_
	.section	.text._ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_,"axG",@progbits,_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_,comdat
	.align	2
	.weak	_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_
	.type	_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_, %function
_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_:
.LFB3668:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L68
.L69:
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	str	x0, [sp, 40]
.L68:
	add	x0, sp, 16
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 40]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L69
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
	b	.L70
.L71:
	ldr	x0, [sp, 32]
	sub	x0, x0, #8
	str	x0, [sp, 32]
.L70:
	add	x0, sp, 16
	ldr	x2, [sp, 32]
	ldr	x1, [sp, 24]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L71
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L72
	ldr	x0, [sp, 40]
	b	.L75
.L72:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPxS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 8
	str	x0, [sp, 40]
	b	.L68
.L75:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3668:
	.size	_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_, .-_ZSt21__unguarded_partitionIPxN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3669:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3669:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt13move_backwardIPxS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt13move_backwardIPxS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt13move_backwardIPxS0_ET0_T_S2_S1_
	.type	_ZSt13move_backwardIPxS0_ET0_T_S2_S1_, %function
_ZSt13move_backwardIPxS0_ET0_T_S2_S1_:
.LFB3670:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__miter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPxET_S1_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3670:
	.size	_ZSt13move_backwardIPxS0_ET0_T_S2_S1_, .-_ZSt13move_backwardIPxS0_ET0_T_S2_S1_
	.section	.text._ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_,comdat
	.align	2
	.weak	_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_, %function
_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_:
.LFB3671:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	sub	x0, x0, #8
	str	x0, [sp, 40]
	b	.L81
.L82:
	ldr	x0, [sp, 40]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	x0, [sp, 40]
	sub	x0, x0, #8
	str	x0, [sp, 40]
.L81:
	add	x1, sp, 32
	add	x0, sp, 16
	ldr	x2, [sp, 40]
	bl	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L82
	add	x0, sp, 32
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3671:
	.size	_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_, .-_ZSt25__unguarded_linear_insertIPxN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_
	.section	.text._ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.align	2
	.weak	_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.type	_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, %function
_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_:
.LFB3696:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	cmp	x0, 8
	ble	.L88
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 88]
.L87:
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 72]
	add	x0, sp, 72
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	mov	w4, w19
	mov	x3, x0
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 56]
	bl	_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L89
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	b	.L87
.L88:
	nop
	b	.L83
.L89:
	nop
.L83:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3696:
	.size	_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .-_ZSt11__make_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.section	.text._ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_,"axG",@progbits,_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_,comdat
	.align	2
	.weak	_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_
	.type	_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_, %function
_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_:
.LFB3697:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	mov	w4, w20
	mov	x3, x0
	mov	x2, x19
	mov	x1, 0
	ldr	x0, [sp, 56]
	bl	_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3697:
	.size	_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_, .-_ZSt10__pop_heapIPxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_
	.section	.text._ZSt9iter_swapIPxS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPxS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPxS0_EvT_T0_
	.type	_ZSt9iter_swapIPxS0_EvT_T0_, %function
_ZSt9iter_swapIPxS0_EvT_T0_:
.LFB3698:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3698:
	.size	_ZSt9iter_swapIPxS0_EvT_T0_, .-_ZSt9iter_swapIPxS0_EvT_T0_
	.section	.text._ZSt12__miter_baseIPxET_S1_,"axG",@progbits,_ZSt12__miter_baseIPxET_S1_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPxET_S1_
	.type	_ZSt12__miter_baseIPxET_S1_, %function
_ZSt12__miter_baseIPxET_S1_:
.LFB3700:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3700:
	.size	_ZSt12__miter_baseIPxET_S1_, .-_ZSt12__miter_baseIPxET_S1_
	.section	.text._ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_, %function
_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_:
.LFB3701:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 56]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPxET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPxET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3701:
	.size	_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt22__copy_move_backward_aILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_
	.type	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_, %function
_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_:
.LFB3703:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3703:
	.size	_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_, .-_ZNK9__gnu_cxx5__ops14_Val_less_iterclIxPxEEbRT_T0_
	.section	.text._ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,comdat
	.align	2
	.weak	_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.type	_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_, %function
_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_:
.LFB3716:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 96]
	ldr	x0, [sp, 64]
	str	x0, [sp, 104]
	b	.L99
.L101:
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x3, x1, x0
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x3
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPxS3_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L100
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 104]
.L100:
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	x2, x0
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	ldr	x0, [sp, 104]
	str	x0, [sp, 64]
.L99:
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	cmp	x0, x1
	blt	.L101
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L102
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 104]
	cmp	x0, x1
	bne	.L102
	ldr	x0, [sp, 104]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	x2, x0
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	ldr	x0, [sp, 104]
	sub	x0, x0, #1
	str	x0, [sp, 64]
.L102:
	add	x0, sp, 40
	bl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_
	add	x0, sp, 88
	mov	w1, w19
	bl	_ZN9__gnu_cxx5__ops14_Iter_less_valC1ENS0_15_Iter_less_iterE
	add	x0, sp, 48
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	add	x1, sp, 88
	mov	x4, x1
	mov	x3, x0
	ldr	x2, [sp, 96]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3716:
	.size	_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_, .-_ZSt13__adjust_heapIPxlxN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.section	.text._ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB3717:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
	add	x0, sp, 40
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3717:
	.size	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPxET_S1_
	.type	_ZSt12__niter_baseIPxET_S1_, %function
_ZSt12__niter_baseIPxET_S1_:
.LFB3718:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3718:
	.size	_ZSt12__niter_baseIPxET_S1_, .-_ZSt12__niter_baseIPxET_S1_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, %function
_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_:
.LFB3719:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3719:
	.size	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPxET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPxET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPxET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPxET_RKS1_S1_, %function
_ZSt12__niter_wrapIPxET_RKS1_S1_:
.LFB3720:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3720:
	.size	_ZSt12__niter_wrapIPxET_RKS1_S1_, .-_ZSt12__niter_wrapIPxET_RKS1_S1_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB3723:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3723:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_less_iterEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_,"axG",@progbits,_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_,comdat
	.align	2
	.weak	_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_
	.type	_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_, %function
_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_:
.LFB3724:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	b	.L113
.L116:
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
.L113:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	ble	.L114
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	add	x1, sp, 32
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L114
	mov	w0, 1
	b	.L115
.L114:
	mov	w0, 0
.L115:
	cmp	w0, 0
	bne	.L116
	add	x0, sp, 32
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	mov	x2, x0
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x2]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3724:
	.size	_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_, .-_ZSt11__push_heapIPxlxN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, %function
_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_:
.LFB3725:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3725:
	.size	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_
	.type	_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_, %function
_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_:
.LFB3726:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3726:
	.size	_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_, .-_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPxxEEbT_RT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.type	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, %function
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_:
.LFB3727:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L122
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x3, x1, x0
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x3
	bl	memmove
.L122:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3727:
	.size	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, .-_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB3728:
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
	bne	.L126
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L126
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
.L126:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3728:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB3729:
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
.LFE3729:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
