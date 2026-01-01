	.arch armv8-a
	.file	"Aymoon and Books.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB38:
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
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3247:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L4
	ldr	x0, [sp]
	b	.L5
.L4:
	ldr	x0, [sp, 8]
.L5:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
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
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.align	2
	.weak	_ZSt16__deque_buf_sizem
	.type	_ZSt16__deque_buf_sizem, %function
_ZSt16__deque_buf_sizem:
.LFB4244:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 511
	bhi	.L7
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L9
.L7:
	mov	x0, 1
.L9:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4244:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.text._ZNSt15_Rb_tree_headerC2Ev,"axG",@progbits,_ZNSt15_Rb_tree_headerC5Ev,comdat
	.align	2
	.weak	_ZNSt15_Rb_tree_headerC2Ev
	.type	_ZNSt15_Rb_tree_headerC2Ev, %function
_ZNSt15_Rb_tree_headerC2Ev:
.LFB5001:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldr	x0, [sp, 24]
	bl	_ZNSt15_Rb_tree_header8_M_resetEv
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5001:
	.size	_ZNSt15_Rb_tree_headerC2Ev, .-_ZNSt15_Rb_tree_headerC2Ev
	.weak	_ZNSt15_Rb_tree_headerC1Ev
	.set	_ZNSt15_Rb_tree_headerC1Ev,_ZNSt15_Rb_tree_headerC2Ev
	.section	.text._ZNSt15_Rb_tree_header8_M_resetEv,"axG",@progbits,_ZNSt15_Rb_tree_header8_M_resetEv,comdat
	.align	2
	.weak	_ZNSt15_Rb_tree_header8_M_resetEv
	.type	_ZNSt15_Rb_tree_header8_M_resetEv, %function
_ZNSt15_Rb_tree_header8_M_resetEv:
.LFB5007:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 32]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5007:
	.size	_ZNSt15_Rb_tree_header8_M_resetEv, .-_ZNSt15_Rb_tree_header8_M_resetEv
	.section	.rodata
	.align	2
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, %object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_collateE, %object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_ctypeE, %object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.word	1
	.align	2
	.type	_ZNSt15regex_constantsL12error_escapeE, %object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.word	2
	.align	2
	.type	_ZNSt15regex_constantsL13error_backrefE, %object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.word	3
	.align	2
	.type	_ZNSt15regex_constantsL11error_brackE, %object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.word	4
	.align	2
	.type	_ZNSt15regex_constantsL11error_parenE, %object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.word	5
	.align	2
	.type	_ZNSt15regex_constantsL11error_braceE, %object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.word	6
	.align	2
	.type	_ZNSt15regex_constantsL14error_badbraceE, %object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.word	7
	.align	2
	.type	_ZNSt15regex_constantsL11error_rangeE, %object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.word	8
	.align	2
	.type	_ZNSt15regex_constantsL11error_spaceE, %object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.word	9
	.align	2
	.type	_ZNSt15regex_constantsL15error_badrepeatE, %object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.word	10
	.align	2
	.type	_ZNSt15regex_constantsL16error_complexityE, %object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.word	11
	.align	2
	.type	_ZNSt15regex_constantsL11error_stackE, %object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.word	12
	.align	3
	.type	_ZNSt8__detailL19_S_invalid_state_idE, %object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 8
_ZNSt8__detailL19_S_invalid_state_idE:
	.xword	-1
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED5Ev,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev:
.LFB9703:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9703:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev:
.LFB9705:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9705:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC2Ev
	.section	.text._ZNSt3setIxSt4lessIxESaIxEEC2Ev,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.type	_ZNSt3setIxSt4lessIxESaIxEEC2Ev, %function
_ZNSt3setIxSt4lessIxESaIxEEC2Ev:
.LFB9707:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9707:
	.size	_ZNSt3setIxSt4lessIxESaIxEEC2Ev, .-_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.weak	_ZNSt3setIxSt4lessIxESaIxEEC1Ev
	.set	_ZNSt3setIxSt4lessIxESaIxEEC1Ev,_ZNSt3setIxSt4lessIxESaIxEEC2Ev
	.section	.text._ZNSt3setIxSt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.type	_ZNSt3setIxSt4lessIxESaIxEED2Ev, %function
_ZNSt3setIxSt4lessIxESaIxEED2Ev:
.LFB9710:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9710:
	.size	_ZNSt3setIxSt4lessIxESaIxEED2Ev, .-_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.weak	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	.set	_ZNSt3setIxSt4lessIxESaIxEED1Ev,_ZNSt3setIxSt4lessIxESaIxEED2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9696:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9696
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -208
	add	x0, sp, 188
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZNSirsERi
.LEHE0:
	ldr	w0, [sp, 188]
	sxtw	x19, w0
	add	x0, sp, 192
	bl	_ZNSaIxEC1Ev
	add	x1, sp, 192
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x19
.LEHB1:
	bl	_ZNSt5dequeIxSaIxEEC1EmRKS0_
.LEHE1:
	add	x0, sp, 192
	bl	_ZNSaIxED1Ev
	add	x0, sp, 56
	bl	_ZNSt3setIxSt4lessIxESaIxEEC1Ev
	str	wzr, [sp, 220]
	b	.L17
.L18:
	ldrsw	x1, [sp, 220]
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB2:
	bl	_ZNSirsERx
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
.L17:
	ldr	w0, [sp, 188]
	ldr	w1, [sp, 220]
	cmp	w1, w0
	blt	.L18
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	b	.L19
.L24:
	add	x0, sp, 47
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	ldrb	w0, [sp, 47]
	cmp	w0, 76
	bne	.L20
	add	x0, sp, 104
	bl	_ZNKSt5dequeIxSaIxEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEE5frontEv
	mov	x1, x0
	add	x0, sp, 56
	bl	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEE9pop_frontEv
	b	.L19
.L20:
	ldrb	w0, [sp, 47]
	cmp	w0, 82
	bne	.L22
	add	x0, sp, 104
	bl	_ZNKSt5dequeIxSaIxEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEE4backEv
	mov	x1, x0
	add	x0, sp, 56
	bl	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEE8pop_backEv
	b	.L19
.L22:
	ldrb	w0, [sp, 47]
	cmp	w0, 81
	bne	.L19
	add	x0, sp, 56
	bl	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L19
.L23:
	add	x0, sp, 56
	add	x1, sp, 200
	mov	x8, x1
	bl	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	add	x0, sp, 200
	bl	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x0, sp, 56
	bl	_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	str	x0, [sp, 208]
	add	x0, sp, 208
	bl	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	mov	x1, x0
	add	x0, sp, 56
	ldr	x1, [x1]
	bl	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
.LEHE2:
.L19:
	ldr	x0, [sp, 48]
	sub	x1, x0, #1
	str	x1, [sp, 48]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	mov	w19, 0
	add	x0, sp, 56
	bl	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEED1Ev
	mov	w0, w19
	b	.L30
.L28:
	mov	x19, x0
	add	x0, sp, 192
	bl	_ZNSaIxED1Ev
	mov	x0, x19
.LEHB3:
	bl	_Unwind_Resume
.L29:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSt3setIxSt4lessIxESaIxEED1Ev
	add	x0, sp, 104
	bl	_ZNSt5dequeIxSaIxEED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE3:
.L30:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9696-.LLSDACSB9696
.LLSDACSB9696:
	.uleb128 .LEHB0-.LFB9696
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9696
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L28-.LFB9696
	.uleb128 0
	.uleb128 .LEHB2-.LFB9696
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L29-.LFB9696
	.uleb128 0
	.uleb128 .LEHB3-.LFB9696
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE9696:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB10024:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bcs	.L32
	ldr	x0, [sp]
	b	.L33
.L32:
	ldr	x0, [sp, 8]
.L33:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10024:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align	2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, %function
_ZNSaIxEC2Ev:
.LFB10401:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10401:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align	2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, %function
_ZNSaIxED2Ev:
.LFB10404:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10404:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt5dequeIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.type	_ZNSt5dequeIxSaIxEEC2EmRKS0_, %function
_ZNSt5dequeIxSaIxEEC2EmRKS0_:
.LFB10407:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10407
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
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
.LEHB4:
	bl	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
.LEHE4:
	ldr	x0, [sp, 56]
.LEHB5:
	bl	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
.LEHE5:
	b	.L39
.L38:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIxSaIxEED2Ev
	mov	x0, x19
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L39:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10407:
	.section	.gcc_except_table
.LLSDA10407:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10407-.LLSDACSB10407
.LLSDACSB10407:
	.uleb128 .LEHB4-.LFB10407
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB10407
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L38-.LFB10407
	.uleb128 0
	.uleb128 .LEHB6-.LFB10407
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE10407:
	.section	.text._ZNSt5dequeIxSaIxEEC2EmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5EmRKS0_,comdat
	.size	_ZNSt5dequeIxSaIxEEC2EmRKS0_, .-_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.weak	_ZNSt5dequeIxSaIxEEC1EmRKS0_
	.set	_ZNSt5dequeIxSaIxEEC1EmRKS0_,_ZNSt5dequeIxSaIxEEC2EmRKS0_
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, %function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB10410:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10410
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE3endEv
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEED2Ev
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10410:
	.section	.gcc_except_table
.LLSDA10410:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10410-.LLSDACSB10410
.LLSDACSB10410:
.LLSDACSE10410:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC5Ev,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev:
.LFB10413:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	bl	_ZNSt15_Rb_tree_headerC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10413:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EEC2Ev
	.section	.text._ZNSaISt13_Rb_tree_nodeIxEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeIxEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.type	_ZNSaISt13_Rb_tree_nodeIxEED2Ev, %function
_ZNSaISt13_Rb_tree_nodeIxEED2Ev:
.LFB10416:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10416:
	.size	_ZNSaISt13_Rb_tree_nodeIxEED2Ev, .-_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeIxEED1Ev
	.set	_ZNSaISt13_Rb_tree_nodeIxEED1Ev,_ZNSaISt13_Rb_tree_nodeIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev:
.LFB10419:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10419
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE13_Rb_tree_implIS3_Lb1EED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10419:
	.section	.gcc_except_table
.LLSDA10419:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10419-.LLSDACSB10419
.LLSDACSB10419:
.LLSDACSE10419:
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED5Ev,comdat
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED1Ev,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEEixEm,"axG",@progbits,_ZNSt5dequeIxSaIxEEixEm,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEEixEm
	.type	_ZNSt5dequeIxSaIxEEixEm, %function
_ZNSt5dequeIxSaIxEEixEm:
.LFB10421:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	ldr	x1, [sp, 16]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEixEl
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10421:
	.size	_ZNSt5dequeIxSaIxEEixEm, .-_ZNSt5dequeIxSaIxEEixEm
	.section	.text._ZNKSt5dequeIxSaIxEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIxSaIxEE5emptyEv
	.type	_ZNKSt5dequeIxSaIxEE5emptyEv, %function
_ZNKSt5dequeIxSaIxEE5emptyEv:
.LFB10423:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10423:
	.size	_ZNKSt5dequeIxSaIxEE5emptyEv, .-_ZNKSt5dequeIxSaIxEE5emptyEv
	.section	.text._ZNSt5dequeIxSaIxEE5frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE5frontEv
	.type	_ZNSt5dequeIxSaIxEE5frontEv, %function
_ZNSt5dequeIxSaIxEE5frontEv:
.LFB10424:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 32
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10424:
	.size	_ZNSt5dequeIxSaIxEE5frontEv, .-_ZNSt5dequeIxSaIxEE5frontEv
	.section	.text._ZNSt3setIxSt4lessIxESaIxEE6insertERKx,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEE6insertERKx,comdat
	.align	2
	.weak	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	.type	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx, %function
_ZNSt3setIxSt4lessIxESaIxEE6insertERKx:
.LFB10425:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	stp	x0, x1, [sp, 32]
	add	x0, sp, 32
	add	x2, x0, 8
	add	x1, sp, 32
	add	x0, sp, 48
	bl	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	ldp	x0, x1, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10425:
	.size	_ZNSt3setIxSt4lessIxESaIxEE6insertERKx, .-_ZNSt3setIxSt4lessIxESaIxEE6insertERKx
	.section	.text._ZNSt5dequeIxSaIxEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE9pop_frontEv
	.type	_ZNSt5dequeIxSaIxEE9pop_frontEv, %function
_ZNSt5dequeIxSaIxEE9pop_frontEv:
.LFB10435:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x0, #8
	cmp	x1, x0
	beq	.L53
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L55
.L53:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
.L55:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10435:
	.size	_ZNSt5dequeIxSaIxEE9pop_frontEv, .-_ZNSt5dequeIxSaIxEE9pop_frontEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, %function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB10437:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE3endEv
	add	x0, sp, 32
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	add	x0, sp, 32
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10437:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, %function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB10438:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 56]
	cmp	x1, x0
	beq	.L59
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	sub	x1, x0, #8
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	b	.L61
.L59:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L61:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10438:
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE5emptyEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv, %function
_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv:
.LFB10439:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10439:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv, .-_ZNKSt3setIxSt4lessIxESaIxEE5emptyEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv,comdat
	.align	2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv, %function
_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv:
.LFB10441:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	x8, x19
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10441:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv, .-_ZNKSt3setIxSt4lessIxESaIxEE6rbeginEv
	.section	.text._ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv,"axG",@progbits,_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv,comdat
	.align	2
	.weak	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	.type	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv, %function
_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv:
.LFB10442:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	add	x0, sp, 40
	bl	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	bl	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10442:
	.size	_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv, .-_ZNKSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEdeEv
	.section	.text._ZNKSt3setIxSt4lessIxESaIxEE3endEv,"axG",@progbits,_ZNKSt3setIxSt4lessIxESaIxEE3endEv,comdat
	.align	2
	.weak	_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	.type	_ZNKSt3setIxSt4lessIxESaIxEE3endEv, %function
_ZNKSt3setIxSt4lessIxESaIxEE3endEv:
.LFB10444:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10444:
	.size	_ZNKSt3setIxSt4lessIxESaIxEE3endEv, .-_ZNKSt3setIxSt4lessIxESaIxEE3endEv
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEmmEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEmmEv,comdat
	.align	2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	.type	_ZNSt23_Rb_tree_const_iteratorIxEmmEv, %function
_ZNSt23_Rb_tree_const_iteratorIxEmmEv:
.LFB10445:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10445:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEmmEv, .-_ZNSt23_Rb_tree_const_iteratorIxEmmEv
	.section	.text._ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,comdat
	.align	2
	.weak	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, %function
_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE:
.LFB10446:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	str	x0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 32
	bl	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	ldr	x0, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10446:
	.size	_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, .-_ZNSt3setIxSt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10570:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10570:
	.size	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB10839:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10839:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB10842:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10842:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.rodata
	.align	3
.LC1:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_, %function
_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_:
.LFB10844:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 24]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L79
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_ZSt20__throw_length_errorPKc
.L79:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10844:
	.size	_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_, .-_ZNSt5dequeIxSaIxEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, %function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
.LFB10847:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10847:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5ERKS0_m,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.type	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m, %function
_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m:
.LFB10849:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10849
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
	ldr	x1, [sp, 48]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
.LEHB7:
	bl	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.LEHE7:
	b	.L85
.L84:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	mov	x0, x19
.LEHB8:
	bl	_Unwind_Resume
.LEHE8:
.L85:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10849:
	.section	.gcc_except_table
.LLSDA10849:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10849-.LLSDACSB10849
.LLSDACSB10849:
	.uleb128 .LEHB7-.LFB10849
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L84-.LFB10849
	.uleb128 0
	.uleb128 .LEHB8-.LFB10849
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10849:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5ERKS0_m,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m, .-_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1ERKS0_m
	.set	_ZNSt11_Deque_baseIxSaIxEEC1ERKS0_m,_ZNSt11_Deque_baseIxSaIxEEC2ERKS0_m
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, %function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB10852:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L87
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.L87:
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10852:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE21_M_default_initializeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE21_M_default_initializeEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
	.type	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv, %function
_ZNSt5dequeIxSaIxEE21_M_default_initializeEv:
.LFB10854:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10854
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 40]
	str	x0, [sp, 120]
	b	.L89
.L90:
	ldr	x0, [sp, 120]
	ldr	x20, [x0]
	ldr	x0, [sp, 120]
	ldr	x19, [x0]
	bl	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	lsl	x0, x0, 3
	add	x19, x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x19
	mov	x0, x20
.LEHB9:
	bl	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	ldr	x0, [sp, 120]
	add	x0, x0, 8
	str	x0, [sp, 120]
.L89:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	ldr	x1, [sp, 120]
	cmp	x1, x0
	bcc	.L90
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
.LEHE9:
	b	.L95
.L93:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 40]
	add	x1, x0, 16
	add	x0, sp, 56
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldr	x0, [sp, 120]
	ldr	x1, [x0]
	add	x0, sp, 88
	ldr	x2, [sp, 120]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	add	x1, sp, 88
	add	x0, sp, 56
.LEHB10:
	bl	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	bl	__cxa_rethrow
.LEHE10:
.L94:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB11:
	bl	_Unwind_Resume
.LEHE11:
.L95:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10854:
	.section	.gcc_except_table
	.align	2
.LLSDA10854:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10854-.LLSDATTD10854
.LLSDATTD10854:
	.byte	0x1
	.uleb128 .LLSDACSE10854-.LLSDACSB10854
.LLSDACSB10854:
	.uleb128 .LEHB9-.LFB10854
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L93-.LFB10854
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB10854
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L94-.LFB10854
	.uleb128 0
	.uleb128 .LEHB11-.LFB10854
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE10854:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10854:
	.section	.text._ZNSt5dequeIxSaIxEE21_M_default_initializeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE21_M_default_initializeEv,comdat
	.size	_ZNSt5dequeIxSaIxEE21_M_default_initializeEv, .-_ZNSt5dequeIxSaIxEE21_M_default_initializeEv
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, %function
_ZNSt5dequeIxSaIxEE5beginEv:
.LFB10855:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10855:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, %function
_ZNSt5dequeIxSaIxEE3endEv:
.LFB10856:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 48
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10856:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10857:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10857:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, %function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB10858:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	nop
	add	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10858:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZNSaISt13_Rb_tree_nodeIxEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.type	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev, %function
_ZNSaISt13_Rb_tree_nodeIxEEC2Ev:
.LFB10860:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10860:
	.size	_ZNSaISt13_Rb_tree_nodeIxEEC2Ev, .-_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeIxEEC1Ev
	.set	_ZNSaISt13_Rb_tree_nodeIxEEC1Ev,_ZNSaISt13_Rb_tree_nodeIxEEC2Ev
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.type	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev, %function
_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev:
.LFB10863:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10863:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev, .-_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC1Ev
	.set	_ZNSt20_Rb_tree_key_compareISt4lessIxEEC1Ev,_ZNSt20_Rb_tree_key_compareISt4lessIxEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev:
.LFB10866:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10866:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEED2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE:
.LFB10868:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L107
.L108:
	ldr	x0, [sp, 16]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	ldr	x0, [sp, 16]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	str	x0, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	ldr	x0, [sp, 40]
	str	x0, [sp, 16]
.L107:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L108
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10868:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_eraseEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv:
.LFB10869:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10869:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEixEl,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEixEl,comdat
	.align	2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEixEl
	.type	_ZNKSt15_Deque_iteratorIxRxPxEixEl, %function
_ZNKSt15_Deque_iteratorIxRxPxEixEl:
.LFB10870:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 32
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10870:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEixEl, .-_ZNKSt15_Deque_iteratorIxRxPxEixEl
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.align	2
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, %function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:
.LFB10871:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10871:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align	2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, %function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB10872:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10872:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_:
.LFB10873:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -128
	.cfi_offset 20, -120
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 72
	ldr	x1, [sp, 32]
	bl	_ZNKSt9_IdentityIxEclERKx
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	stp	x0, x1, [sp, 56]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	beq	.L118
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_
	ldr	x19, [sp, 56]
	ldr	x20, [sp, 64]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	add	x0, sp, 48
	mov	x4, x0
	mov	x3, x1
	mov	x2, x20
	mov	x1, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	str	x0, [sp, 96]
	mov	w0, 1
	strb	w0, [sp, 111]
	add	x2, sp, 111
	add	x1, sp, 96
	add	x0, sp, 80
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	ldp	x0, x1, [sp, 80]
	b	.L120
.L118:
	ldr	x1, [sp, 56]
	add	x0, sp, 128
	bl	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	strb	wzr, [sp, 143]
	add	x2, sp, 143
	add	x1, sp, 128
	add	x0, sp, 112
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	ldp	x0, x1, [sp, 112]
.L120:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10873:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE16_M_insert_uniqueIRKxEESt4pairISt17_Rb_tree_iteratorIxEbEOT_
	.section	.text._ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC5IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,comdat
	.align	2
	.weak	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.type	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_, %function
_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_:
.LFB10883:
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
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	ldrb	w1, [x0]
	ldr	x0, [sp, 56]
	strb	w1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10883:
	.size	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_, .-_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.weak	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.set	_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC1IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_,_ZNSt4pairISt23_Rb_tree_const_iteratorIxEbEC2IRSt17_Rb_tree_iteratorIxERbLb1EEEOT_OT0_
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, %function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
.LFB10885:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10885:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, %function
_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv:
.LFB10886:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	ldr	x0, [sp, 24]
	add	x2, x0, 16
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10886:
	.size	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, .-_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, %function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
.LFB10887:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bne	.L125
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x1, [x0]
.L125:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x1, x0, #8
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10887:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, %function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB10888:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 56]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x1, x0, #8
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10888:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv, %function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv:
.LFB10889:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10889:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5emptyEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv,comdat
	.align	2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv, %function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv:
.LFB10891:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10891:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6rbeginEv
	.section	.text._ZNKSt23_Rb_tree_const_iteratorIxEdeEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorIxEdeEv,comdat
	.align	2
	.weak	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	.type	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv, %function
_ZNKSt23_Rb_tree_const_iteratorIxEdeEv:
.LFB10892:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10892:
	.size	_ZNKSt23_Rb_tree_const_iteratorIxEdeEv, .-_ZNKSt23_Rb_tree_const_iteratorIxEdeEv
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv,comdat
	.align	2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv, %function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv:
.LFB10893:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x1, x0, 8
	add	x0, sp, 40
	bl	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10893:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE3endEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE:
.LFB10894:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 0
	cmp	w0, 0
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	add	x0, sp, 40
	bl	_ZNSt23_Rb_tree_const_iteratorIxEppEv
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	add	x0, sp, 40
	bl	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10894:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEC5ERKSt17_Rb_tree_iteratorIxE,comdat
	.align	2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.type	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE, %function
_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE:
.LFB10896:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10896:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE, .-_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE
	.set	_ZNSt23_Rb_tree_const_iteratorIxEC1ERKSt17_Rb_tree_iteratorIxE,_ZNSt23_Rb_tree_const_iteratorIxEC2ERKSt17_Rb_tree_iteratorIxE
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, %function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_:
.LFB11094:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 9223372036854775807
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	str	x0, [sp, 32]
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZSt3minImERKT_S2_S2_
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11094:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_, %function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_:
.LFB11096:
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
	bl	_ZNSaIxEC2ERKS_
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11096:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1ERKS0_,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2ERKS0_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, %function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB11098:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11098
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x0, x0, x1
	add	x0, x0, 1
	str	x0, [sp, 88]
	mov	x0, 8
	str	x0, [sp, 56]
	ldr	x0, [sp, 88]
	add	x0, x0, 2
	str	x0, [sp, 64]
	add	x1, sp, 64
	add	x0, sp, 56
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x1, x0
	ldr	x0, [sp, 40]
.LEHB12:
	bl	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.LEHE12:
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
.LEHB13:
	bl	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.LEHE13:
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x1, [sp, 80]
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	b	.L148
.L146:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	ldr	x0, [sp, 40]
	str	xzr, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
.LEHB14:
	bl	__cxa_rethrow
.LEHE14:
.L147:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB15:
	bl	_Unwind_Resume
.LEHE15:
.L148:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11098:
	.section	.gcc_except_table
	.align	2
.LLSDA11098:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11098-.LLSDATTD11098
.LLSDATTD11098:
	.byte	0x1
	.uleb128 .LLSDACSE11098-.LLSDACSB11098
.LLSDACSB11098:
	.uleb128 .LEHB12-.LFB11098
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB11098
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L146-.LFB11098
	.uleb128 0x1
	.uleb128 .LEHB14-.LFB11098
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L147-.LFB11098
	.uleb128 0
	.uleb128 .LEHB15-.LFB11098
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE11098:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11098:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, %function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB11099:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	b	.L150
.L151:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
.L150:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L151
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11099:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, %function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB11100:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11100
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 56
	mov	x8, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	add	x0, sp, 56
	bl	_ZNSaIPxED1Ev
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11100:
	.section	.gcc_except_table
.LLSDA11100:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11100-.LLSDACSB11100
.LLSDACSB11100:
.LLSDACSE11100:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	.type	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv, %function
_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv:
.LFB11101:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11101:
	.size	_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv, .-_ZNSt5dequeIxSaIxEE14_S_buffer_sizeEv
	.section	.text._ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	.type	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E, %function
_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E:
.LFB11102:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt23__uninitialized_defaultIPxEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11102:
	.size	_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E, .-_ZSt25__uninitialized_default_aIPxxEvT_S1_RSaIT0_E
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ES1_PS1_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_, %function
_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_:
.LFB11104:
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
	ldr	x1, [sp, 48]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	lsl	x0, x0, 3
	add	x1, x19, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 16]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 40]
	str	x1, [x0, 24]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11104:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ES1_PS1_,_ZNSt15_Deque_iteratorIxRxPxEC2ES1_PS1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, %function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB11107:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11107:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E, %function
_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E:
.LFB11109:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 80
	add	x0, sp, 48
	bl	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	nop
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11109:
	.size	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E, .-_ZSt8_DestroyISt15_Deque_iteratorIxRxPxExEvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev:
.LFB11112:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11112:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEEC2Ev
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base:
.LFB11114:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11114:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base:
.LFB11115:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11115:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11116:
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
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11116:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv,comdat
	.align	2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv, %function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv:
.LFB11117:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11117:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE9_M_mbeginEv
	.section	.text._ZStplRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStplRKSt15_Deque_iteratorIxRxPxEl,comdat
	.align	2
	.weak	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStplRKSt15_Deque_iteratorIxRxPxEl, %function
_ZStplRKSt15_Deque_iteratorIxRxPxEl:
.LFB11118:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11118:
	.size	_ZStplRKSt15_Deque_iteratorIxRxPxEl, .-_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx:
.LFB11119:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -128
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_M_beginEv
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	str	x0, [sp, 56]
	mov	w0, 1
	strb	w0, [sp, 143]
	b	.L170
.L173:
	ldr	x0, [sp, 64]
	str	x0, [sp, 56]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 64]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNKSt4lessIxEclERKxS2_
	strb	w0, [sp, 143]
	ldrb	w0, [sp, 143]
	cmp	w0, 0
	beq	.L171
	ldr	x0, [sp, 64]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE7_S_leftEPSt18_Rb_tree_node_base
	b	.L172
.L171:
	ldr	x0, [sp, 64]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE8_S_rightEPSt18_Rb_tree_node_base
.L172:
	str	x0, [sp, 64]
.L170:
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L173
	ldr	x1, [sp, 56]
	add	x0, sp, 48
	bl	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	ldrb	w0, [sp, 143]
	cmp	w0, 0
	beq	.L174
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	str	x0, [sp, 72]
	add	x1, sp, 72
	add	x0, sp, 48
	bl	_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L175
	add	x2, sp, 56
	add	x1, sp, 64
	add	x0, sp, 80
	bl	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	ldp	x0, x1, [sp, 80]
	b	.L178
.L175:
	add	x0, sp, 48
	bl	_ZNSt17_Rb_tree_iteratorIxEmmEv
.L174:
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 48]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt4lessIxEclERKxS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L177
	add	x2, sp, 56
	add	x1, sp, 64
	add	x0, sp, 96
	bl	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	ldp	x0, x1, [sp, 96]
	b	.L178
.L177:
	str	xzr, [sp, 128]
	add	x2, sp, 128
	add	x1, sp, 48
	add	x0, sp, 112
	bl	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	ldp	x0, x1, [sp, 112]
.L178:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11119:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE24_M_get_insert_unique_posERKx
	.section	.text._ZNKSt9_IdentityIxEclERKx,"axG",@progbits,_ZNKSt9_IdentityIxEclERKx,comdat
	.align	2
	.weak	_ZNKSt9_IdentityIxEclERKx
	.type	_ZNKSt9_IdentityIxEclERKx, %function
_ZNKSt9_IdentityIxEclERKx:
.LFB11134:
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
.LFE11134:
	.size	_ZNKSt9_IdentityIxEclERKx, .-_ZNKSt9_IdentityIxEclERKx
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC5ERS5_,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_:
.LFB11136:
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
.LFE11136:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_
	.set	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC1ERS5_,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeC2ERS5_
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11138:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11138:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_:
.LFB11139:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L185
	ldr	x0, [sp, 72]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	beq	.L185
	ldr	x19, [sp, 72]
	add	x0, sp, 80
	ldr	x1, [sp, 48]
	bl	_ZNKSt9_IdentityIxEclERKx
	mov	x20, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNKSt4lessIxEclERKxS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L186
.L185:
	mov	w0, 1
	b	.L187
.L186:
	mov	w0, 0
.L187:
	strb	w0, [sp, 111]
	ldr	x0, [sp, 48]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	str	x0, [sp, 96]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	mov	x3, x0
	ldr	x2, [sp, 56]
	ldr	x1, [sp, 96]
	ldrb	w0, [sp, 111]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 40]
	add	x1, x0, 1
	ldr	x0, [sp, 72]
	str	x1, [x0, 40]
	add	x0, sp, 88
	ldr	x1, [sp, 96]
	bl	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	ldr	x0, [sp, 88]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11139:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE10_M_insert_IRKxNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIxEPSt18_Rb_tree_node_baseSD_OT_RT0_
	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC5IS1_bLb1EEEOT_OT0_,comdat
	.align	2
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_, %function
_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_:
.LFB11141:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	ldr	x0, [sp, 40]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	bl	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	ldrb	w1, [x0]
	ldr	x0, [sp, 40]
	strb	w1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11141:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_, .-_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_
	.set	_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC1IS1_bLb1EEEOT_OT0_,_ZNSt4pairISt17_Rb_tree_iteratorIxEbEC2IS1_bLb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt17_Rb_tree_iteratorIxEC5EPSt18_Rb_tree_node_base,comdat
	.align	2
	.weak	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.type	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base, %function
_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base:
.LFB11144:
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
.LFE11144:
	.size	_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base, .-_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.weak	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	.set	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base,_ZNSt17_Rb_tree_iteratorIxEC2EPSt18_Rb_tree_node_base
	.section	.text._ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE, %function
_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11146:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11146:
	.size	_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRSt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE, %function
_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB11147:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11147:
	.size	_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRbEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, %function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB11148:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11148:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, %function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB11149:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11149
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x19, [sp, 40]
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11149:
	.section	.gcc_except_table
.LLSDA11149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11149-.LLSDACSB11149
.LLSDACSB11149:
.LLSDACSE11149:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, %function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB11150:
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
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 32]
	str	x1, [x0, 24]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	lsl	x0, x0, 3
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11150:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_,"axG",@progbits,_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC5ES1_,comdat
	.align	2
	.weak	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.type	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_, %function
_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_:
.LFB11153:
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
.LFE11153:
	.size	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_, .-_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.weak	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_
	.set	_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC1ES1_,_ZNSt16reverse_iteratorISt23_Rb_tree_const_iteratorIxEEC2ES1_
	.section	.text._ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv,"axG",@progbits,_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	.type	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv, %function
_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv:
.LFB11155:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	bl	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11155:
	.size	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv, .-_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEC5EPKSt18_Rb_tree_node_base,comdat
	.align	2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.type	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base, %function
_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base:
.LFB11157:
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
.LFE11157:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base, .-_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base
	.set	_ZNSt23_Rb_tree_const_iteratorIxEC1EPKSt18_Rb_tree_node_base,_ZNSt23_Rb_tree_const_iteratorIxEC2EPKSt18_Rb_tree_node_base
	.section	.text._ZNSt23_Rb_tree_const_iteratorIxEppEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorIxEppEv,comdat
	.align	2
	.weak	_ZNSt23_Rb_tree_const_iteratorIxEppEv
	.type	_ZNSt23_Rb_tree_const_iteratorIxEppEv, %function
_ZNSt23_Rb_tree_const_iteratorIxEppEv:
.LFB11161:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11161:
	.size	_ZNSt23_Rb_tree_const_iteratorIxEppEv, .-_ZNSt23_Rb_tree_const_iteratorIxEppEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE:
.LFB11162:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_drop_nodeEPSt13_Rb_tree_nodeIxE
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0, 40]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11162:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE12_M_erase_auxESt23_Rb_tree_const_iteratorIxE
	.section	.text._ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv,comdat
	.align	2
	.weak	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	.type	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv, %function
_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv:
.LFB11163:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	add	x0, sp, 40
	bl	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11163:
	.size	_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv, .-_ZNKSt23_Rb_tree_const_iteratorIxE13_M_const_castEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11300:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11300:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZNSaIxEC2ERKS_,"axG",@progbits,_ZNSaIxEC5ERKS_,comdat
	.align	2
	.weak	_ZNSaIxEC2ERKS_
	.type	_ZNSaIxEC2ERKS_, %function
_ZNSaIxEC2ERKS_:
.LFB11302:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZNSaIxEC2ERKS_, .-_ZNSaIxEC2ERKS_
	.weak	_ZNSaIxEC1ERKS_
	.set	_ZNSaIxEC1ERKS_,_ZNSaIxEC2ERKS_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, %function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev:
.LFB11305:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 16
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11305:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, %function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB11307:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11307
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	add	x0, sp, 56
	mov	x8, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x1, [sp, 32]
.LEHB16:
	bl	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.LEHE16:
	mov	x19, x0
	nop
	add	x0, sp, 56
	bl	_ZNSaIPxED1Ev
	mov	x0, x19
	b	.L215
.L214:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSaIPxED1Ev
	mov	x0, x19
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L215:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11307:
	.section	.gcc_except_table
.LLSDA11307:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11307-.LLSDACSB11307
.LLSDACSB11307:
	.uleb128 .LEHB16-.LFB11307
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L214-.LFB11307
	.uleb128 0
	.uleb128 .LEHB17-.LFB11307
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11307:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, %function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB11308:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11308
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	b	.L217
.L218:
	ldr	x0, [sp, 56]
.LEHB18:
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE18:
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L217:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L218
	b	.L223
.L221:
	bl	__cxa_begin_catch
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.LEHB19:
	bl	__cxa_rethrow
.LEHE19:
.L222:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB20:
	bl	_Unwind_Resume
.LEHE20:
.L223:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11308:
	.section	.gcc_except_table
	.align	2
.LLSDA11308:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11308-.LLSDATTD11308
.LLSDATTD11308:
	.byte	0x1
	.uleb128 .LLSDACSE11308-.LLSDACSB11308
.LLSDACSB11308:
	.uleb128 .LEHB18-.LFB11308
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L221-.LFB11308
	.uleb128 0x1
	.uleb128 .LEHB19-.LFB11308
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L222-.LFB11308
	.uleb128 0
	.uleb128 .LEHB20-.LFB11308
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11308:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11308:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, %function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB11309:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSaIPxEC1IxEERKSaIT_E
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11309:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align	2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, %function
_ZNSaIPxED2Ev:
.LFB11311:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11311:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB11313:
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
	bl	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZSt23__uninitialized_defaultIPxEvT_S1_,"axG",@progbits,_ZSt23__uninitialized_defaultIPxEvT_S1_,comdat
	.align	2
	.weak	_ZSt23__uninitialized_defaultIPxEvT_S1_
	.type	_ZSt23__uninitialized_defaultIPxEvT_S1_, %function
_ZSt23__uninitialized_defaultIPxEvT_S1_:
.LFB11314:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11314:
	.size	_ZSt23__uninitialized_defaultIPxEvT_S1_, .-_ZSt23__uninitialized_defaultIPxEvT_S1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, %function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB11315:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11315:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_,"axG",@progbits,_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_,comdat
	.align	2
	.weak	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	.type	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_, %function
_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_:
.LFB11316:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	add	x0, sp, 32
	ldr	x1, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 64
	ldr	x1, [sp, 16]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 64
	add	x0, sp, 32
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11316:
	.size	_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_, .-_ZSt8_DestroyISt15_Deque_iteratorIxRxPxEEvT_S4_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11318:
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
	ldr	x0, [sp, 40]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11318:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE:
.LFB11319:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11319
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	x2, 1
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11319:
	.section	.gcc_except_table
.LLSDA11319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11319-.LLSDACSB11319
.LLSDACSB11319:
.LLSDACSE11319:
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE,comdat
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_put_nodeEPSt13_Rb_tree_nodeIxE
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEpLEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEpLEl,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEpLEl, %function
_ZNSt15_Deque_iteratorIxRxPxEpLEl:
.LFB11320:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	add	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	blt	.L235
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bge	.L235
	mov	w0, 1
	b	.L236
.L235:
	mov	w0, 0
.L236:
	cmp	w0, 0
	beq	.L237
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	b	.L238
.L237:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L239
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	sdiv	x0, x0, x1
	b	.L240
.L239:
	ldr	x0, [sp, 56]
	mvn	x19, x0
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	udiv	x0, x19, x0
	mvn	x0, x0
.L240:
	str	x0, [sp, 48]
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 8]
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	lsl	x0, x0, 3
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
.L238:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11320:
	.size	_ZNSt15_Deque_iteratorIxRxPxEpLEl, .-_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv:
.LFB11321:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11321:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_M_endEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE:
.LFB11322:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZNKSt9_IdentityIxEclERKx
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	.section	.text._ZNKSt4lessIxEclERKxS2_,"axG",@progbits,_ZNKSt4lessIxEclERKxS2_,comdat
	.align	2
	.weak	_ZNKSt4lessIxEclERKxS2_
	.type	_ZNKSt4lessIxEclERKxS2_, %function
_ZNKSt4lessIxEclERKxS2_:
.LFB11325:
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
.LFE11325:
	.size	_ZNKSt4lessIxEclERKxS2_, .-_ZNKSt4lessIxEclERKxS2_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv:
.LFB11326:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	add	x0, sp, 40
	bl	_ZNSt17_Rb_tree_iteratorIxEC1EPSt18_Rb_tree_node_base
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE5beginEv
	.section	.text._ZSteqRKSt17_Rb_tree_iteratorIxES2_,"axG",@progbits,_ZSteqRKSt17_Rb_tree_iteratorIxES2_,comdat
	.align	2
	.weak	_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	.type	_ZSteqRKSt17_Rb_tree_iteratorIxES2_, %function
_ZSteqRKSt17_Rb_tree_iteratorIxES2_:
.LFB11327:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZSteqRKSt17_Rb_tree_iteratorIxES2_, .-_ZSteqRKSt17_Rb_tree_iteratorIxES2_
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,comdat
	.align	2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_, %function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_:
.LFB11329:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	bl	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIxERS1_Lb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorIxEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorIxEmmEv,comdat
	.align	2
	.weak	_ZNSt17_Rb_tree_iteratorIxEmmEv
	.type	_ZNSt17_Rb_tree_iteratorIxEmmEv, %function
_ZNSt17_Rb_tree_iteratorIxEmmEv:
.LFB11331:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11331:
	.size	_ZNSt17_Rb_tree_iteratorIxEmmEv, .-_ZNSt17_Rb_tree_iteratorIxEmmEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base:
.LFB11332:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt13_Rb_tree_nodeIxE
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11332:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE6_S_keyEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_Lb1EEEOT_RKS1_,comdat
	.align	2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, %function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_:
.LFB11334:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11334:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.section	.text._ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_,"axG",@progbits,_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_,comdat
	.align	2
	.weak	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	.type	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_, %function
_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_:
.LFB11336:
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
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11336:
	.size	_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_, .-_ZNKSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_Alloc_nodeclIRKxEEPSt13_Rb_tree_nodeIxEOT_
	.section	.text._ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11337:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11337:
	.size	_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt17_Rb_tree_iteratorIxEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, %function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11338:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11338:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, %function
_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv:
.LFB11339:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11339:
	.size	_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11424:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11424:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, %function
_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_:
.LFB11426:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11426:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIxEC2ERKS1_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, %function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB11429:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 24]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11429:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB11431:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11431:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, %function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB11432:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x19, [sp, 40]
	mov	x0, 8
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11432:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11433:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11433:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, %function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB11435:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11435:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB11438:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11438:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
.LFB11440:
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
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11440:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZSt11__addressofIxEPT_RS0_,"axG",@progbits,_ZSt11__addressofIxEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofIxEPT_RS0_
	.type	_ZSt11__addressofIxEPT_RS0_, %function
_ZSt11__addressofIxEPT_RS0_:
.LFB11442:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11442:
	.size	_ZSt11__addressofIxEPT_RS0_, .-_ZSt11__addressofIxEPT_RS0_
	.section	.text._ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_,"axG",@progbits,_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	.type	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_, %function
_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_:
.LFB11441:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	beq	.L284
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIxEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZSt10_ConstructIxJEEvPT_DpOT0_
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L281
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4fillIPxxEvT_S1_RKT0_
	b	.L281
.L284:
	nop
.L281:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11441:
	.size	_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_, .-_ZNSt25__uninitialized_default_1ILb1EE16__uninit_defaultIPxEEvT_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_:
.LFB11443:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11443:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_, .-_ZNSt12_Destroy_auxILb1EE9__destroyISt15_Deque_iteratorIxRxPxEEEvT_S6_
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv:
.LFB11445:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11445:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	.section	.text._ZNSt13_Rb_tree_nodeIxE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv,comdat
	.align	2
	.weak	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	.type	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv, %function
_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv:
.LFB11446:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	add	x0, x0, 32
	bl	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11446:
	.size	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv, .-_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_, %function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_:
.LFB11447:
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
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11447:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE7destroyIxEEvRS2_PT_
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m, %function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m:
.LFB11448:
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
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE10deallocateERS2_PS1_m
	.section	.text._ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE, %function
_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB11449:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11449:
	.size	_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRPSt13_Rb_tree_nodeIxEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, %function
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB11450:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11450:
	.size	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_:
.LFB11451:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11451:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE14_M_create_nodeIJRKxEEEPSt13_Rb_tree_nodeIxEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, %function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11452:
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
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11452:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv, %function
_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv:
.LFB11453:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11453:
	.size	_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11559:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11559:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv:
.LFB11561:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11561:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB11560:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L307
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L308
	bl	_ZSt28__throw_bad_array_new_lengthv
.L308:
	bl	_ZSt17__throw_bad_allocv
.L307:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11560:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11562:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11562:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB11564:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11564:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZSt10_ConstructIxJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIxJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructIxJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIxJEEvPT_DpOT0_, %function
_ZSt10_ConstructIxJEEvPT_DpOT0_:
.LFB11566:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	xzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11566:
	.size	_ZSt10_ConstructIxJEEvPT_DpOT0_, .-_ZSt10_ConstructIxJEEvPT_DpOT0_
	.section	.text._ZSt4fillIPxxEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPxxEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt4fillIPxxEvT_S1_RKT0_
	.type	_ZSt4fillIPxxEvT_S1_RKT0_, %function
_ZSt4fillIPxxEvT_S1_RKT0_:
.LFB11567:
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
	bl	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11567:
	.size	_ZSt4fillIPxxEvT_S1_RKT0_, .-_ZSt4fillIPxxEvT_S1_RKT0_
	.section	.text._ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, %function
_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv:
.LFB11569:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11569:
	.size	_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufIxE6_M_ptrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_:
.LFB11570:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11570:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE7destroyIxEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m:
.LFB11571:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11571:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE10deallocateEPS2_m
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv:
.LFB11572:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	x1, 1
	bl	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11572:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE11_M_get_nodeEv
	.section	.text._ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_,comdat
	.align	2
	.weak	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	.type	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_, %function
_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_:
.LFB11573:
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
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 40
	bl	_ZnwmPv
	ldr	x0, [sp, 56]
	bl	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE21_M_get_Node_allocatorEv
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZNSt13_Rb_tree_nodeIxE9_M_valptrEv
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
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
.LFE11573:
	.size	_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_, .-_ZNSt8_Rb_treeIxxSt9_IdentityIxESt4lessIxESaIxEE17_M_construct_nodeIJRKxEEEvPSt13_Rb_tree_nodeIxEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11641:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L324
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L325
	bl	_ZSt28__throw_bad_array_new_lengthv
.L325:
	bl	_ZSt17__throw_bad_allocv
.L324:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11641:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt8__fill_aIPxxEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPxxEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPxxEvT_S1_RKT0_, %function
_ZSt8__fill_aIPxxEvT_S1_RKT0_:
.LFB11642:
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
	bl	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11642:
	.size	_ZSt8__fill_aIPxxEvT_S1_RKT0_, .-_ZSt8__fill_aIPxxEvT_S1_RKT0_
	.section	.text._ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv, %function
_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv:
.LFB11643:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11643:
	.size	_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufIxE7_M_addrEv
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m, %function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m:
.LFB11644:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	mov	x2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11644:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE8allocateERS2_m
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_:
.LFB11645:
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
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11645:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIxEEE9constructIxJRKxEEEvRS2_PT_DpOT0_
	.section	.text._ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, %function
_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB11675:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	b	.L334
.L335:
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	str	x0, [sp, 24]
.L334:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L335
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11675:
	.size	_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPxxEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv:
.LFB11677:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 3689348814741910323
	movk	x0, 0x333, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11677:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv:
.LFB11676:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 40]
	bl	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE11_M_max_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 32]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	and	x0, x0, 255
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L339
	ldr	x1, [sp, 32]
	mov	x0, 7378697629483820646
	movk	x0, 0x666, lsl 48
	cmp	x1, x0
	bls	.L340
	bl	_ZSt28__throw_bad_array_new_lengthv
.L340:
	bl	_ZSt17__throw_bad_allocv
.L339:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11676:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11678:
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
	ldr	x0, [sp, 40]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11678:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIxEE9constructIxJRKxEEEvPT_DpOT0_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11731:
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
	bne	.L345
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L345
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
.L345:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11731:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11754:
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
.LFE11754:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
