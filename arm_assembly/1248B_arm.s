	.arch armv8-a
	.file	"1248B.cpp"
	.text
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.align	2
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, %function
_ZSt4__lgl:
.LFB564:
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
.LFE564:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB999:
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
.LFE999:
	.size	_ZnwmPv, .-_ZnwmPv
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
	bcs	.L6
	ldr	x0, [sp]
	b	.L7
.L6:
	ldr	x0, [sp, 8]
.L7:
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
	bhi	.L9
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L11
.L9:
	mov	x0, 1
.L11:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4244:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.text._ZSt3minIlERKT_S2_S2_,"axG",@progbits,_ZSt3minIlERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIlERKT_S2_S2_
	.type	_ZSt3minIlERKT_S2_S2_, %function
_ZSt3minIlERKT_S2_S2_:
.LFB4554:
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
	bge	.L13
	ldr	x0, [sp]
	b	.L14
.L13:
	ldr	x0, [sp, 8]
.L14:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4554:
	.size	_ZSt3minIlERKT_S2_S2_, .-_ZSt3minIlERKT_S2_S2_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
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
	.align	3
	.type	_ZL3INF, %object
	.size	_ZL3INF, 8
_ZL3INF:
	.xword	2000000000000000000
	.section	.text._ZNSt5dequeIxSaIxEEC2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEEC2Ev
	.type	_ZNSt5dequeIxSaIxEEC2Ev, %function
_ZNSt5dequeIxSaIxEEC2Ev:
.LFB9698:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9698:
	.size	_ZNSt5dequeIxSaIxEEC2Ev, .-_ZNSt5dequeIxSaIxEEC2Ev
	.weak	_ZNSt5dequeIxSaIxEEC1Ev
	.set	_ZNSt5dequeIxSaIxEEC1Ev,_ZNSt5dequeIxSaIxEEC2Ev
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9696:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9696
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -224
	mov	w0, 0
.LEHB0:
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	add	x0, sp, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEEC1Ev
.LEHE0:
	str	wzr, [sp, 236]
	b	.L17
.L18:
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZNSirsERx
	add	x1, sp, 40
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE9push_backERKx
	ldr	w0, [sp, 236]
	add	w0, w0, 1
	str	w0, [sp, 236]
.L17:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 236]
	cmp	w1, w0
	blt	.L18
	add	x0, sp, 48
	add	x1, sp, 136
	mov	x8, x1
	bl	_ZNSt5dequeIxSaIxEE5beginEv
	add	x0, sp, 48
	add	x1, sp, 168
	mov	x8, x1
	bl	_ZNSt5dequeIxSaIxEE3endEv
	add	x1, sp, 168
	add	x0, sp, 136
	mov	w2, w19
	bl	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	str	xzr, [sp, 224]
	str	xzr, [sp, 216]
	strb	wzr, [sp, 215]
	str	wzr, [sp, 208]
	b	.L19
.L22:
	ldrb	w0, [sp, 215]
	eor	w0, w0, 1
	strb	w0, [sp, 215]
	ldrb	w0, [sp, 215]
	cmp	w0, 0
	beq	.L20
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE5frontEv
	ldr	x0, [x0]
	ldr	x1, [sp, 224]
	add	x0, x1, x0
	str	x0, [sp, 224]
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE9pop_frontEv
	b	.L21
.L20:
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE4backEv
	ldr	x0, [x0]
	ldr	x1, [sp, 216]
	add	x0, x1, x0
	str	x0, [sp, 216]
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEE8pop_backEv
.L21:
	ldr	w0, [sp, 208]
	add	w0, w0, 1
	str	w0, [sp, 208]
.L19:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 208]
	cmp	w1, w0
	blt	.L22
	ldr	x0, [sp, 224]
	mul	x1, x0, x0
	ldr	x0, [sp, 216]
	mul	x0, x0, x0
	add	x0, x1, x0
	str	x0, [sp, 200]
	ldr	x1, [sp, 200]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEx
	mov	w1, 10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE1:
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEED1Ev
	mov	w0, 0
	b	.L26
.L25:
	mov	x19, x0
	add	x0, sp, 48
	bl	_ZNSt5dequeIxSaIxEED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L26:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 240
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
	.uleb128 .L25-.LFB9696
	.uleb128 0
	.uleb128 .LEHB2-.LFB9696
	.uleb128 .LEHE2-.LEHB2
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
.LFB10011:
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
	bcs	.L28
	ldr	x0, [sp]
	b	.L29
.L28:
	ldr	x0, [sp, 8]
.L29:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10011:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, %function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
.LFB10391:
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
.LFE10391:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEEC2Ev, %function
_ZNSt11_Deque_baseIxSaIxEEC2Ev:
.LFB10393:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10393
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	mov	x1, 0
	ldr	x0, [sp, 40]
.LEHB3:
	bl	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.LEHE3:
	b	.L34
.L33:
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L34:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10393:
	.section	.gcc_except_table
.LLSDA10393:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10393-.LLSDACSB10393
.LLSDACSB10393:
	.uleb128 .LEHB3-.LFB10393
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L33-.LFB10393
	.uleb128 0
	.uleb128 .LEHB4-.LFB10393
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10393:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2Ev, .-_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEEC1Ev,_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, %function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB10396:
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
	beq	.L36
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
.L36:
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10396:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, %function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB10399:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10399
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
.LFE10399:
	.section	.gcc_except_table
.LLSDA10399:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10399-.LLSDACSB10399
.LLSDACSB10399:
.LLSDACSE10399:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backERKx,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE9push_backERKx
	.type	_ZNSt5dequeIxSaIxEE9push_backERKx, %function
_ZNSt5dequeIxSaIxEE9push_backERKx:
.LFB10402:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x0, x0, #8
	cmp	x1, x0
	beq	.L39
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	bl	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	b	.L41
.L39:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
.L41:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10402:
	.size	_ZNSt5dequeIxSaIxEE9push_backERKx, .-_ZNSt5dequeIxSaIxEE9push_backERKx
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, %function
_ZNSt5dequeIxSaIxEE5beginEv:
.LFB10404:
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
.LFE10404:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, %function
_ZNSt5dequeIxSaIxEE3endEv:
.LFB10405:
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
.LFE10405:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_,"axG",@progbits,_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_,comdat
	.align	2
	.weak	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	.type	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_, %function
_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_:
.LFB10406:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	w0, w20
	bl	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	add	x1, sp, 96
	add	x0, sp, 64
	mov	w2, w19
	bl	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_, .-_ZSt4sortISt15_Deque_iteratorIxRxPxESt7greaterIiEEvT_S6_T0_
	.section	.text._ZNSt5dequeIxSaIxEE5frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE5frontEv
	.type	_ZNSt5dequeIxSaIxEE5frontEv, %function
_ZNSt5dequeIxSaIxEE5frontEv:
.LFB10407:
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
.LFE10407:
	.size	_ZNSt5dequeIxSaIxEE5frontEv, .-_ZNSt5dequeIxSaIxEE5frontEv
	.section	.text._ZNSt5dequeIxSaIxEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE9pop_frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE9pop_frontEv
	.type	_ZNSt5dequeIxSaIxEE9pop_frontEv, %function
_ZNSt5dequeIxSaIxEE9pop_frontEv:
.LFB10408:
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
	beq	.L50
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
	b	.L52
.L50:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
.L52:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10408:
	.size	_ZNSt5dequeIxSaIxEE9pop_frontEv, .-_ZNSt5dequeIxSaIxEE9pop_frontEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, %function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB10409:
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
.LFE10409:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, %function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB10410:
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
	beq	.L56
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
	b	.L58
.L56:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L58:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10410:
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, %function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev:
.LFB10805:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIxEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10805:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align	2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, %function
_ZNSaIxED2Ev:
.LFB10808:
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
.LFE10808:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, %function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB10810:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10810
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
.LEHB5:
	bl	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.LEHE5:
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
.LEHB6:
	bl	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.LEHE6:
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
	b	.L66
.L64:
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
.LEHB7:
	bl	__cxa_rethrow
.LEHE7:
.L65:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB8:
	bl	_Unwind_Resume
.LEHE8:
.L66:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10810:
	.section	.gcc_except_table
	.align	2
.LLSDA10810:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10810-.LLSDATTD10810
.LLSDATTD10810:
	.byte	0x1
	.uleb128 .LLSDACSE10810-.LLSDACSB10810
.LLSDACSB10810:
	.uleb128 .LEHB5-.LFB10810
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10810
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L64-.LFB10810
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB10810
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L65-.LFB10810
	.uleb128 0
	.uleb128 .LEHB8-.LFB10810
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10810:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10810:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, %function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB10811:
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
	b	.L68
.L69:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
.L68:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L69
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, %function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB10812:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10812
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
.LFE10812:
	.section	.gcc_except_table
.LLSDA10812:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10812-.LLSDACSB10812
.LLSDACSB10812:
.LLSDACSE10812:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB10813:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10813:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, %function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB10814:
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
.LFE10814:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_:
.LFB10815:
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
	bl	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10815:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align	3
.LC0:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, %function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_:
.LFB10816:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt5dequeIxSaIxEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L76
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_ZSt20__throw_length_errorPKc
.L76:
	mov	x1, 1
	ldr	x0, [sp, 40]
	bl	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x19, x0, 8
	mov	x0, x1
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	str	x0, [x19]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 56]
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10816:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJRKxEEEvDpOT_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, %function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB10818:
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
.LFE10818:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_, %function
_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_:
.LFB10820:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	strb	w0, [sp, 40]
	add	x0, sp, 40
	bl	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	add	x0, sp, 56
	mov	w1, w20
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_
	nop
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10820:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterISt7greaterIiEEENS0_15_Iter_comp_iterIT_EES5_
	.section	.text._ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.align	2
	.weak	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, %function
_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB10821:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L82
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	bl	_ZSt4__lgl
	lsl	x2, x0, 1
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w3, [sp, 24]
	bl	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	add	x0, sp, 112
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 144
	add	x0, sp, 112
	ldrb	w2, [sp, 24]
	bl	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
.L82:
	nop
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10821:
	.size	_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt6__sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align	2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, %function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB10822:
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
.LFE10822:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, %function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
.LFB10823:
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
.LFE10823:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, %function
_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv:
.LFB10824:
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
.LFE10824:
	.size	_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv, .-_ZNSt5dequeIxSaIxEE16_M_pop_front_auxEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, %function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
.LFB10825:
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
	bne	.L88
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
.L88:
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
.LFE10825:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, %function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB10826:
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
.LFE10826:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align	2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, %function
_ZNSaIxEC2Ev:
.LFB11024:
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
.LFE11024:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, %function
_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev:
.LFB11027:
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
.LFE11027:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIxSaIxEE16_Deque_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB11030:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11030:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, %function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB11032:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11032
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
.LEHB9:
	bl	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.LEHE9:
	mov	x19, x0
	nop
	add	x0, sp, 56
	bl	_ZNSaIPxED1Ev
	mov	x0, x19
	b	.L98
.L97:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSaIPxED1Ev
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
.L98:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11032:
	.section	.gcc_except_table
.LLSDA11032:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11032-.LLSDACSB11032
.LLSDACSB11032:
	.uleb128 .LEHB9-.LFB11032
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L97-.LFB11032
	.uleb128 0
	.uleb128 .LEHB10-.LFB11032
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11032:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, %function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB11033:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11033
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
	b	.L100
.L101:
	ldr	x0, [sp, 56]
.LEHB11:
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE11:
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L100:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L101
	b	.L106
.L104:
	bl	__cxa_begin_catch
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.LEHB12:
	bl	__cxa_rethrow
.LEHE12:
.L105:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB13:
	bl	_Unwind_Resume
.LEHE13:
.L106:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11033:
	.section	.gcc_except_table
	.align	2
.LLSDA11033:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11033-.LLSDATTD11033
.LLSDATTD11033:
	.byte	0x1
	.uleb128 .LLSDACSE11033-.LLSDACSB11033
.LLSDACSB11033:
	.uleb128 .LEHB11-.LFB11033
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L104-.LFB11033
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB11033
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L105-.LFB11033
	.uleb128 0
	.uleb128 .LEHB13-.LFB11033
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE11033:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11033:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, %function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB11034:
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
.LFE11034:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, %function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB11035:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11035
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
.LFE11035:
	.section	.gcc_except_table
.LLSDA11035:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11035-.LLSDACSB11035
.LLSDACSB11035:
.LLSDACSE11035:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, %function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB11036:
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
.LFE11036:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align	2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, %function
_ZNSaIPxED2Ev:
.LFB11038:
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
.LFE11038:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB11040:
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
.LFE11040:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11042:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_:
.LFB11043:
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
.LFE11043:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIxSaIxEE4sizeEv
	.type	_ZNKSt5dequeIxSaIxEE4sizeEv, %function
_ZNKSt5dequeIxSaIxEE4sizeEv:
.LFB11044:
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
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11044:
	.size	_ZNKSt5dequeIxSaIxEE4sizeEv, .-_ZNKSt5dequeIxSaIxEE4sizeEv
	.section	.text._ZNKSt5dequeIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.type	_ZNKSt5dequeIxSaIxEE8max_sizeEv, %function
_ZNKSt5dequeIxSaIxEE8max_sizeEv:
.LFB11045:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	bl	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11045:
	.size	_ZNKSt5dequeIxSaIxEE8max_sizeEv, .-_ZNKSt5dequeIxSaIxEE8max_sizeEv
	.section	.text._ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, %function
_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm:
.LFB11046:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	ldr	x2, [sp, 24]
	ldr	x3, [x2, 72]
	ldr	x2, [sp, 24]
	ldr	x2, [x2]
	sub	x2, x3, x2
	asr	x2, x2, 3
	sub	x0, x0, x2
	cmp	x1, x0
	bls	.L122
	mov	w2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
.L122:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11046:
	.size	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, %function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB11047:
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
.LFE11047:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.align	2
	.weak	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_, %function
_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB11048:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11048:
	.size	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC5ES3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_, %function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_:
.LFB11050:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	strb	w1, [sp, 16]
	add	x0, sp, 16
	bl	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11050:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC1ES3_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEC2ES3_
	.section	.text._ZStneRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStneRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.align	2
	.weak	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStneRKSt15_Deque_iteratorIxRxPxES4_, %function
_ZStneRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11052:
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
	bl	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11052:
	.size	_ZStneRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.align	2
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, %function
_ZStmiRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11053:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 16]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	asr	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	and	x0, x0, 255
	sub	x0, x1, x0
	mul	x0, x2, x0
	ldr	x1, [sp, 24]
	ldr	x2, [x1]
	ldr	x1, [sp, 24]
	ldr	x1, [x1, 8]
	sub	x1, x2, x1
	asr	x1, x1, 3
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	ldr	x2, [x1, 16]
	ldr	x1, [sp, 16]
	ldr	x1, [x1]
	sub	x1, x2, x1
	asr	x1, x1, 3
	add	x0, x0, x1
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11053:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_,comdat
	.align	2
	.weak	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	.type	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_, %function
_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_:
.LFB11054:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	b	.L133
.L136:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L134
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 144
	add	x1, sp, 112
	add	x0, sp, 80
	ldrb	w3, [sp, 16]
	bl	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	b	.L132
.L134:
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 208
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 208
	add	x0, sp, 176
	add	x2, sp, 48
	mov	x8, x2
	ldrb	w2, [sp, 16]
	bl	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	add	x1, sp, 48
	add	x0, sp, 240
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 272
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 272
	add	x0, sp, 240
	ldrb	w3, [sp, 16]
	ldr	x2, [sp, 24]
	bl	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	ldr	x0, [sp, 32]
	mov	x1, x0
	add	x0, sp, 48
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
.L133:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L136
.L132:
	ldp	x29, x30, [sp], 304
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11054:
	.size	_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_, .-_ZSt16__introsort_loopISt15_Deque_iteratorIxRxPxElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_T1_
	.section	.text._ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.align	2
	.weak	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, %function
_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11055:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	x0, 16
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L138
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 80
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w2, [sp, 24]
	bl	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	add	x0, sp, 112
	mov	x8, x0
	mov	x1, 16
	ldr	x0, [sp, 40]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 144
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 144
	add	x0, sp, 112
	ldrb	w2, [sp, 24]
	bl	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	b	.L140
.L138:
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 208
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 208
	add	x0, sp, 176
	ldrb	w2, [sp, 24]
	bl	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
.L140:
	nop
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11055:
	.size	_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt22__final_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, %function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB11056:
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
.LFE11056:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB11194:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11194:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, %function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB11197:
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
.LFE11197:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB11199:
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
.LFE11199:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, %function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB11200:
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
.LFE11200:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, %function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB11201:
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
.LFE11201:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, %function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB11202:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11202:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, %function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB11204:
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
.LFE11204:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB11207:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11207:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
.LFB11209:
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
.LFE11209:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, %function
_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_:
.LFB11212:
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
.LFE11212:
	.size	_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIxSaIxEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,comdat
	.align	2
	.weak	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb:
.LFB11213:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 72]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	sub	x0, x1, x0
	asr	x0, x0, 3
	add	x0, x0, 1
	str	x0, [sp, 96]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 96]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 88]
	lsl	x0, x0, 1
	cmp	x1, x0
	bls	.L158
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x2, [x0, 8]
	ldr	x0, [sp, 88]
	sub	x0, x2, x0
	lsr	x0, x0, 1
	lsl	x2, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L159
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L160
.L159:
	mov	x0, 0
.L160:
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L161
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	b	.L162
.L161:
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x4, x0, 8
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x4
	mov	x0, x3
	bl	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	b	.L162
.L158:
	ldr	x0, [sp, 56]
	ldr	x19, [x0, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	add	x1, sp, 48
	bl	_ZSt3maxImERKT_S2_S2_
	ldr	x0, [x0]
	add	x0, x19, x0
	add	x0, x0, 2
	str	x0, [sp, 80]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	bl	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	str	x0, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x0, x0, 1
	lsl	x1, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L163
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L164
.L163:
	mov	x0, 0
.L164:
	add	x0, x0, x1
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	bl	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
.L162:
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x1, [sp, 104]
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 56]
	add	x2, x0, 48
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11213:
	.size	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB11214:
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
.LFE11214:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZSteqRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.align	2
	.weak	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, %function
_ZSteqRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11215:
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
.LFE11215:
	.size	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_, .-_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,"axG",@progbits,_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,comdat
	.align	2
	.weak	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.type	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, %function
_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_:
.LFB11216:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 112
	ldr	x1, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 112
	add	x1, sp, 80
	add	x0, sp, 48
	ldrb	w3, [sp, 16]
	bl	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	add	x0, sp, 144
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 176
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 16
	add	x1, sp, 176
	add	x0, sp, 144
	bl	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	nop
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11216:
	.size	_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, .-_ZSt14__partial_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.section	.text._ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_,comdat
	.align	2
	.weak	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	.type	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_, %function
_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_:
.LFB11217:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -304
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 56]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 128
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x1, sp, 64
	add	x0, sp, 160
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 192
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 48]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	add	x3, sp, 192
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 96
	ldrb	w4, [sp, 40]
	bl	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	add	x0, sp, 224
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 256
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 288
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 288
	add	x1, sp, 256
	add	x0, sp, 224
	mov	x8, x19
	ldrb	w3, [sp, 40]
	bl	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 320
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11217:
	.size	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_, .-_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_T0_
	.section	.text._ZStplRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStplRKSt15_Deque_iteratorIxRxPxEl,comdat
	.align	2
	.weak	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStplRKSt15_Deque_iteratorIxRxPxEl, %function
_ZStplRKSt15_Deque_iteratorIxRxPxEl:
.LFB11218:
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
.LFE11218:
	.size	_ZStplRKSt15_Deque_iteratorIxRxPxEl, .-_ZStplRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.align	2
	.weak	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, %function
_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11219:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZSteqRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L181
	add	x0, sp, 72
	mov	x8, x0
	mov	x1, 1
	ldr	x0, [sp, 56]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	b	.L177
.L180:
	add	x1, sp, 72
	add	x0, sp, 112
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 144
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 144
	add	x1, sp, 112
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L178
	add	x0, sp, 72
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 104]
	add	x0, sp, 208
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 72
	add	x0, sp, 240
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 72
	add	x1, sp, 272
	mov	x8, x1
	mov	x1, 1
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x2, sp, 272
	add	x1, sp, 240
	add	x0, sp, 208
	add	x3, sp, 176
	mov	x8, x3
	bl	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	add	x0, sp, 104
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	b	.L179
.L178:
	add	x1, sp, 72
	add	x0, sp, 304
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldrb	w0, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	add	x0, sp, 304
	mov	w1, w20
	bl	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
.L179:
	add	x0, sp, 72
	bl	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L177:
	add	x0, sp, 72
	ldr	x1, [sp, 48]
	bl	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L180
	b	.L174
.L181:
	nop
.L174:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11219:
	.size	_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt16__insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_,comdat
	.align	2
	.weak	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.type	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, %function
_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_:
.LFB11220:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	b	.L183
.L184:
	add	x1, sp, 64
	add	x0, sp, 96
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldrb	w0, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	add	x0, sp, 96
	mov	w1, w19
	bl	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	add	x0, sp, 64
	bl	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L183:
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	bl	_ZStneRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L184
	nop
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11220:
	.size	_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_, .-_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv:
.LFB11306:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11306:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB11305:
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
	beq	.L188
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L189
	bl	_ZSt28__throw_bad_array_new_lengthv
.L189:
	bl	_ZSt17__throw_bad_allocv
.L188:
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
.LFE11305:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, %function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB11307:
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
.LFE11307:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB11309:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11309:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB11312:
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
.LFE11312:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZSt4copyIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPxS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPxS1_ET0_T_S3_S2_, %function
_ZSt4copyIPPxS1_ET0_T_S3_S2_:
.LFB11313:
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
	bl	_ZSt12__miter_baseIPPxET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPxET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11313:
	.size	_ZSt4copyIPPxS1_ET0_T_S3_S2_, .-_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, %function
_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_:
.LFB11314:
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
	bl	_ZSt12__miter_baseIPPxET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPxET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11314:
	.size	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv:
.LFB11316:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11316:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB11315:
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
	beq	.L203
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L204
	bl	_ZSt28__throw_bad_array_new_lengthv
.L204:
	bl	_ZSt17__throw_bad_allocv
.L203:
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
.LFE11315:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,"axG",@progbits,_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_,comdat
	.align	2
	.weak	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.type	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, %function
_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_:
.LFB11317:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	strb	w3, [sp, 16]
	add	x0, sp, 80
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 16
	add	x1, sp, 112
	add	x0, sp, 80
	bl	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	add	x0, sp, 48
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	b	.L207
.L209:
	add	x1, sp, 48
	add	x0, sp, 144
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 176
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 176
	add	x1, sp, 144
	add	x0, sp, 16
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L208
	add	x0, sp, 208
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 240
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 48
	add	x0, sp, 272
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x3, sp, 16
	add	x2, sp, 272
	add	x1, sp, 240
	add	x0, sp, 208
	bl	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
.L208:
	add	x0, sp, 48
	bl	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L207:
	add	x0, sp, 48
	ldr	x1, [sp, 24]
	bl	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L209
	nop
	nop
	ldp	x29, x30, [sp], 304
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11317:
	.size	_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_, .-_ZSt13__heap_selectISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_T0_
	.section	.text._ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,"axG",@progbits,_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,comdat
	.align	2
	.weak	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.type	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, %function
_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_:
.LFB11318:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	b	.L211
.L212:
	ldr	x0, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	add	x0, sp, 48
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 80
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 112
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 112
	add	x1, sp, 80
	add	x0, sp, 48
	ldr	x3, [sp, 24]
	bl	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
.L211:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	x0, 1
	cset	w0, gt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L212
	nop
	nop
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11318:
	.size	_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, .-_ZSt11__sort_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.section	.text._ZStmiRKSt15_Deque_iteratorIxRxPxEl,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIxRxPxEl,comdat
	.align	2
	.weak	_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	.type	_ZStmiRKSt15_Deque_iteratorIxRxPxEl, %function
_ZStmiRKSt15_Deque_iteratorIxRxPxEl:
.LFB11319:
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
	bl	_ZNSt15_Deque_iteratorIxRxPxEmIEl
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
.LFE11319:
	.size	_ZStmiRKSt15_Deque_iteratorIxRxPxEl, .-_ZStmiRKSt15_Deque_iteratorIxRxPxEl
	.section	.text._ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_,comdat
	.align	2
	.weak	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	.type	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_, %function
_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_:
.LFB11320:
	.cfi_startproc
	sub	sp, sp, #768
	.cfi_def_cfa_offset 768
	stp	x29, x30, [sp]
	.cfi_offset 29, -768
	.cfi_offset 30, -760
	mov	x29, sp
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	strb	w4, [sp, 24]
	add	x0, sp, 64
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 96
	add	x1, sp, 64
	add	x0, sp, 24
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L216
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 160
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 24
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L217
	add	x0, sp, 192
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 224
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 224
	add	x0, sp, 192
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	b	.L222
.L217:
	add	x0, sp, 256
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 288
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 288
	add	x1, sp, 256
	add	x0, sp, 24
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L219
	add	x0, sp, 320
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 352
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 352
	add	x0, sp, 320
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	b	.L222
.L219:
	add	x0, sp, 384
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 416
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 416
	add	x0, sp, 384
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	b	.L222
.L216:
	add	x0, sp, 448
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 480
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 480
	add	x1, sp, 448
	add	x0, sp, 24
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L220
	add	x0, sp, 512
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 544
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 544
	add	x0, sp, 512
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	b	.L222
.L220:
	add	x0, sp, 576
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 608
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 608
	add	x1, sp, 576
	add	x0, sp, 24
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L221
	add	x0, sp, 640
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 672
	ldr	x1, [sp, 32]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 672
	add	x0, sp, 640
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	b	.L222
.L221:
	add	x0, sp, 704
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 736
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 736
	add	x0, sp, 704
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
.L222:
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 768
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11320:
	.size	_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_, .-_ZSt22__move_median_to_firstISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_SA_T0_
	.section	.text._ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_,"axG",@progbits,_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_,comdat
	.align	2
	.weak	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	.type	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_, %function
_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_:
.LFB11321:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -240
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	strb	w3, [sp, 32]
	b	.L224
.L225:
	ldr	x0, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEppEv
.L224:
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 96
	add	x1, sp, 64
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L225
	ldr	x0, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	b	.L226
.L227:
	ldr	x0, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
.L226:
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 160
	add	x1, sp, 128
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L227
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L228
	ldr	x1, [sp, 56]
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	b	.L231
.L228:
	add	x0, sp, 192
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 224
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x1, sp, 224
	add	x0, sp, 192
	bl	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	ldr	x0, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEppEv
	b	.L224
.L231:
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11321:
	.size	_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_, .-_ZSt21__unguarded_partitionISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEET_SA_SA_SA_T0_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEpLEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEpLEl,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEpLEl, %function
_ZNSt15_Deque_iteratorIxRxPxEpLEl:
.LFB11322:
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
	blt	.L233
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	cmp	x0, x1
	bge	.L233
	mov	w0, 1
	b	.L234
.L233:
	mov	w0, 0
.L234:
	cmp	w0, 0
	beq	.L235
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	b	.L236
.L235:
	ldr	x0, [sp, 56]
	cmp	x0, 0
	ble	.L237
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	mov	x1, x0
	ldr	x0, [sp, 56]
	sdiv	x0, x0, x1
	b	.L238
.L237:
	ldr	x0, [sp, 56]
	mvn	x19, x0
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	udiv	x0, x19, x0
	mvn	x0, x0
.L238:
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
.L236:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11322:
	.size	_ZNSt15_Deque_iteratorIxRxPxEpLEl, .-_ZNSt15_Deque_iteratorIxRxPxEpLEl
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEppEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEppEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEppEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEppEv, %function
_ZNSt15_Deque_iteratorIxRxPxEppEv:
.LFB11323:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x1, x0, 8
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	bne	.L241
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	add	x0, x0, 8
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x1, [x0]
.L241:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZNSt15_Deque_iteratorIxRxPxEppEv, .-_ZNSt15_Deque_iteratorIxRxPxEppEv
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_, %function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_:
.LFB11324:
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
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11324:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB11325:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11325:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_,"axG",@progbits,_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_,comdat
	.align	2
	.weak	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	.type	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_, %function
_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_:
.LFB11326:
	.cfi_startproc
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -208
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 96
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 96
	add	x1, sp, 64
	mov	x8, x1
	bl	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	add	x0, sp, 160
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 160
	add	x1, sp, 128
	mov	x8, x1
	bl	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	add	x0, sp, 192
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 192
	add	x1, sp, 128
	add	x0, sp, 64
	mov	x8, x19
	bl	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_, .-_ZSt13move_backwardISt15_Deque_iteratorIxRxPxES3_ET0_T_S5_S4_
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE, %function
_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE:
.LFB11327:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	strb	w0, [sp, 40]
	add	x0, sp, 40
	bl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	x1, x0
	add	x0, sp, 56
	bl	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	nop
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterISt7greaterIiEEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS5_EE
	.section	.text._ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_,comdat
	.align	2
	.weak	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_, %function
_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_:
.LFB11328:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	x0, [sp, 40]
	strb	w1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 88]
	add	x0, sp, 56
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 56
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	b	.L252
.L253:
	add	x0, sp, 56
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	ldr	x0, [sp, 40]
	mov	x1, x0
	add	x0, sp, 56
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	add	x0, sp, 56
	bl	_ZNSt15_Deque_iteratorIxRxPxEmmEv
.L252:
	add	x1, sp, 56
	add	x0, sp, 96
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 96
	add	x1, sp, 88
	add	x0, sp, 32
	bl	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L253
	add	x0, sp, 88
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_, .-_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEEEvT_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB11435:
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
.LFE11435:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZSt12__miter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPxET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPPxET_S2_
	.type	_ZSt12__miter_baseIPPxET_S2_, %function
_ZSt12__miter_baseIPPxET_S2_:
.LFB11436:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11436:
	.size	_ZSt12__miter_baseIPPxET_S2_, .-_ZSt12__miter_baseIPPxET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11437:
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
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11437:
	.size	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11439:
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
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPxET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11439:
	.size	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,"axG",@progbits,_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_,comdat
	.align	2
	.weak	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.type	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, %function
_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_:
.LFB11440:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	cmp	x0, 1
	cset	w0, le
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L267
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 136]
.L266:
	add	x0, sp, 64
	mov	x8, x0
	ldr	x1, [sp, 136]
	ldr	x0, [sp, 40]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 64
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 56]
	add	x0, sp, 96
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 56
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	add	x5, sp, 96
	ldrb	w4, [x0]
	mov	x3, x1
	ldr	x2, [sp, 128]
	ldr	x1, [sp, 136]
	mov	x0, x5
	bl	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	ldr	x0, [sp, 136]
	cmp	x0, 0
	beq	.L268
	ldr	x0, [sp, 136]
	sub	x0, x0, #1
	str	x0, [sp, 136]
	b	.L266
.L267:
	nop
	b	.L262
.L268:
	nop
.L262:
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11440:
	.size	_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_, .-_ZSt11__make_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_RT0_
	.section	.text._ZStltRKSt15_Deque_iteratorIxRxPxES4_,"axG",@progbits,_ZStltRKSt15_Deque_iteratorIxRxPxES4_,comdat
	.align	2
	.weak	_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	.type	_ZStltRKSt15_Deque_iteratorIxRxPxES4_, %function
_ZStltRKSt15_Deque_iteratorIxRxPxES4_:
.LFB11441:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 24]
	ldr	x0, [sp]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	bne	.L270
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	b	.L271
.L270:
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 24]
	ldr	x0, [sp]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
.L271:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11441:
	.size	_ZStltRKSt15_Deque_iteratorIxRxPxES4_, .-_ZStltRKSt15_Deque_iteratorIxRxPxES4_
	.section	.text._ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_,"axG",@progbits,_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_,comdat
	.align	2
	.weak	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
	.type	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_, %function
_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_:
.LFB11442:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	add	x0, sp, 80
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZStmiRKSt15_Deque_iteratorIxRxPxES4_
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	add	x5, sp, 80
	ldrb	w4, [x0]
	mov	x3, x1
	mov	x2, x19
	mov	x1, 0
	mov	x0, x5
	bl	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11442:
	.size	_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_, .-_ZSt10__pop_heapISt15_Deque_iteratorIxRxPxEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SA_SA_RT0_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmIEl,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmIEl,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmIEl
	.type	_ZNSt15_Deque_iteratorIxRxPxEmIEl, %function
_ZNSt15_Deque_iteratorIxRxPxEmIEl:
.LFB11443:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	neg	x0, x0
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIxRxPxEpLEl
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11443:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmIEl, .-_ZNSt15_Deque_iteratorIxRxPxEmIEl
	.section	.text._ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_,"axG",@progbits,_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	.type	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_, %function
_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_:
.LFB11444:
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
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	x19, x0
	ldr	x0, [sp, 32]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11444:
	.size	_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_, .-_ZSt9iter_swapISt15_Deque_iteratorIxRxPxES3_EvT_T0_
	.section	.text._ZNKSt7greaterIiEclERKiS2_,"axG",@progbits,_ZNKSt7greaterIiEclERKiS2_,comdat
	.align	2
	.weak	_ZNKSt7greaterIiEclERKiS2_
	.type	_ZNKSt7greaterIiEclERKiS2_, %function
_ZNKSt7greaterIiEclERKiS2_:
.LFB11445:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, gt
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11445:
	.size	_ZNKSt7greaterIiEclERKiS2_, .-_ZNKSt7greaterIiEclERKiS2_
	.section	.text._ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_,"axG",@progbits,_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_,comdat
	.align	2
	.weak	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.type	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_, %function
_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_:
.LFB11446:
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
	ldr	x1, [sp, 40]
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
.LFE11446:
	.size	_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_, .-_ZSt12__miter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.section	.text._ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	.type	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_, %function
_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_:
.LFB11447:
	.cfi_startproc
	stp	x29, x30, [sp, -288]!
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -272
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 128
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 128
	add	x1, sp, 96
	mov	x8, x1
	bl	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	add	x0, sp, 192
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 192
	add	x1, sp, 160
	mov	x8, x1
	bl	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	add	x0, sp, 256
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 256
	add	x1, sp, 224
	mov	x8, x1
	bl	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	add	x2, sp, 224
	add	x1, sp, 160
	add	x0, sp, 96
	add	x3, sp, 64
	mov	x8, x3
	bl	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	add	x0, sp, 64
	mov	x8, x19
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 288
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11447:
	.size	_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_, .-_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIxRxPxES3_ET1_T0_S5_S4_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.align	2
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_, %function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_:
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
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC5EONS0_15_Iter_comp_iterIS3_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, %function
_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE:
.LFB11451:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11451:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_, %function
_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_:
.LFB11453:
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
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11453:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterISt7greaterIiEEclIxSt15_Deque_iteratorIxRxPxEEEbRT_T0_
	.section	.text._ZSt12__niter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPxET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPPxET_S2_
	.type	_ZSt12__niter_baseIPPxET_S2_, %function
_ZSt12__niter_baseIPPxET_S2_:
.LFB11521:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11521:
	.size	_ZSt12__niter_baseIPPxET_S2_, .-_ZSt12__niter_baseIPPxET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11522:
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
	bl	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11522:
	.size	_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPxET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPxET_RKS2_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPxET_RKS2_S2_, %function
_ZSt12__niter_wrapIPPxET_RKS2_S2_:
.LFB11523:
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
.LFE11523:
	.size	_ZSt12__niter_wrapIPPxET_RKS2_S2_, .-_ZSt12__niter_wrapIPPxET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11524:
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
	bl	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11524:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_,comdat
	.align	2
	.weak	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	.type	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_, %function
_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_:
.LFB11525:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -320
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	strb	w4, [sp, 40]
	ldr	x0, [sp, 64]
	str	x0, [sp, 320]
	ldr	x0, [sp, 64]
	str	x0, [sp, 328]
	b	.L297
.L299:
	ldr	x0, [sp, 328]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 328]
	add	x0, sp, 96
	mov	x8, x0
	ldr	x1, [sp, 328]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	add	x1, sp, 128
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x2, sp, 128
	add	x1, sp, 96
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEclISt15_Deque_iteratorIxRxPxES9_EEbT_T0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L298
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	str	x0, [sp, 328]
.L298:
	add	x0, sp, 160
	mov	x8, x0
	ldr	x1, [sp, 328]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 160
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	add	x0, sp, 192
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 192
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	ldr	x0, [sp, 328]
	str	x0, [sp, 64]
.L297:
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 328]
	cmp	x0, x1
	blt	.L299
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L300
	ldr	x0, [sp, 56]
	sub	x0, x0, #2
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	mov	x1, x0
	ldr	x0, [sp, 328]
	cmp	x0, x1
	bne	.L300
	ldr	x0, [sp, 328]
	add	x0, x0, 1
	lsl	x0, x0, 1
	str	x0, [sp, 328]
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	add	x1, sp, 224
	mov	x8, x1
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 224
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	add	x0, sp, 256
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 256
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	ldr	x0, [sp, 328]
	sub	x0, x0, #1
	str	x0, [sp, 64]
.L300:
	add	x0, sp, 40
	bl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	x1, x0
	add	x0, sp, 88
	bl	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	add	x0, sp, 288
	ldr	x1, [sp, 72]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 48
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x1, [x0]
	add	x2, sp, 88
	add	x0, sp, 288
	mov	x4, x2
	mov	x3, x1
	ldr	x2, [sp, 320]
	ldr	x1, [sp, 64]
	bl	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11525:
	.size	_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_, .-_ZSt13__adjust_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_T0_SB_T1_T2_
	.section	.text._ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB11526:
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
.LFE11526:
	.size	_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIxENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_,"axG",@progbits,_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.type	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_, %function
_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_:
.LFB11527:
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
	ldr	x1, [sp, 40]
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
.LFE11527:
	.size	_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_, .-_ZSt12__niter_baseISt15_Deque_iteratorIxRxPxEET_S4_
	.section	.text._ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	.type	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_, %function
_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_:
.LFB11528:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -144
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	add	x0, sp, 64
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 96
	ldr	x1, [sp, 48]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 128
	ldr	x1, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x2, sp, 128
	add	x1, sp, 96
	add	x0, sp, 64
	mov	x8, x19
	bl	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11528:
	.size	_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_, .-_ZSt23__copy_move_backward_a1ILb1ExRxPxxESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_
	.section	.text._ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_,"axG",@progbits,_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	.type	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_, %function
_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_:
.LFB11529:
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
	ldr	x1, [sp, 32]
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
.LFE11529:
	.size	_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_, .-_ZSt12__niter_wrapISt15_Deque_iteratorIxRxPxEET_RKS4_S4_
	.section	.text._ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB11559:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11559:
	.size	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_:
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
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11560:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC5EONS0_15_Iter_comp_iterIS3_EE,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, %function
_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE:
.LFB11562:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	bl	_ZSt4moveIRSt7greaterIiEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11562:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC1EONS0_15_Iter_comp_iterIS3_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEC2EONS0_15_Iter_comp_iterIS3_EE
	.section	.text._ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_,"axG",@progbits,_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_,comdat
	.align	2
	.weak	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	.type	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_, %function
_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_:
.LFB11564:
	.cfi_startproc
	stp	x29, x30, [sp, -224]!
	.cfi_def_cfa_offset 224
	.cfi_offset 29, -224
	.cfi_offset 30, -216
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -208
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	str	x4, [sp, 40]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 216]
	b	.L314
.L317:
	add	x0, sp, 88
	mov	x8, x0
	ldr	x1, [sp, 216]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 88
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	add	x0, sp, 120
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 120
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	ldr	x0, [sp, 216]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	sub	x0, x0, #1
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 216]
.L314:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L315
	add	x0, sp, 152
	mov	x8, x0
	ldr	x1, [sp, 216]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x1, sp, 48
	add	x0, sp, 152
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L315
	mov	w0, 1
	b	.L316
.L315:
	mov	w0, 0
.L316:
	cmp	w0, 0
	bne	.L317
	add	x0, sp, 48
	bl	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	ldr	x19, [x0]
	add	x0, sp, 184
	mov	x8, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	_ZStplRKSt15_Deque_iteratorIxRxPxEl
	add	x0, sp, 184
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	str	x19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11564:
	.size	_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_, .-_ZSt11__push_heapISt15_Deque_iteratorIxRxPxElxN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEEEvT_T0_SB_T1_RT2_
	.section	.text._ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,"axG",@progbits,_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,comdat
	.align	2
	.weak	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.type	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_, %function
_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_:
.LFB11565:
	.cfi_startproc
	stp	x29, x30, [sp, -288]!
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -272
	.cfi_offset 20, -264
	.cfi_offset 21, -256
	mov	x19, x8
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	beq	.L319
	ldr	x0, [sp, 64]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 64]
	ldr	x21, [x0]
	add	x0, sp, 120
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 120
	add	x1, sp, 88
	mov	x8, x1
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	bl	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	ldr	x0, [sp, 56]
	mov	x1, x0
	add	x0, sp, 88
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [sp, 64]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	str	x0, [sp, 280]
	b	.L320
.L321:
	ldr	x0, [sp, 280]
	ldr	x21, [x0]
	ldr	x0, [sp, 280]
	ldr	x20, [x0]
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	lsl	x0, x0, 3
	add	x20, x20, x0
	add	x0, sp, 184
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 184
	add	x1, sp, 152
	mov	x8, x1
	mov	x2, x0
	mov	x1, x20
	mov	x0, x21
	bl	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	ldr	x0, [sp, 56]
	mov	x1, x0
	add	x0, sp, 152
	ldp	q0, q1, [x0]
	stp	q0, q1, [x1]
	ldr	x0, [sp, 280]
	sub	x0, x0, #8
	str	x0, [sp, 280]
.L320:
	ldr	x0, [sp, 72]
	ldr	x0, [x0, 24]
	ldr	x1, [sp, 280]
	cmp	x1, x0
	bne	.L321
	ldr	x0, [sp, 72]
	ldr	x20, [x0]
	ldr	x0, [sp, 72]
	ldr	x21, [x0, 16]
	add	x0, sp, 216
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 216
	mov	x8, x19
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	bl	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	b	.L318
.L319:
	ldr	x0, [sp, 72]
	ldr	x20, [x0]
	ldr	x0, [sp, 64]
	ldr	x21, [x0]
	add	x0, sp, 248
	ldr	x1, [sp, 56]
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	add	x0, sp, 248
	mov	x8, x19
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	bl	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
.L318:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 288
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11565:
	.size	_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_, .-_ZSt24__copy_move_backward_ditILb1ExRxPxSt15_Deque_iteratorIxS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_:
.LFB11569:
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
	beq	.L324
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L324:
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11569:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, %function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_:
.LFB11571:
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
	beq	.L327
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
.L327:
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
.LFE11571:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_, %function
_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_:
.LFB11572:
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
	str	x2, [sp, 40]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	ldr	x0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 76
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNKSt7greaterIiEclERKiS2_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11572:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valISt7greaterIiEEclISt15_Deque_iteratorIxRxPxExEEbT_RT0_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	.type	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_, %function
_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_:
.LFB11573:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	mov	x19, x8
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 72]
	b	.L332
.L334:
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	str	x0, [sp, 88]
	ldr	x0, [sp, 64]
	cmp	x0, 0
	bne	.L333
	bl	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	ldr	x1, [x0]
	ldr	x0, [sp, 64]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [sp, 88]
.L333:
	add	x1, sp, 64
	add	x0, sp, 72
	bl	_ZSt3minIlERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x2, [sp, 88]
	ldr	x1, [sp, 48]
	bl	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	ldr	x0, [sp, 80]
	lsl	x0, x0, 3
	neg	x0, x0
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 40]
	bl	_ZNSt15_Deque_iteratorIxRxPxEmIEl
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 80]
	sub	x0, x1, x0
	str	x0, [sp, 72]
.L332:
	ldr	x0, [sp, 72]
	cmp	x0, 0
	bgt	.L334
	ldr	x1, [sp, 40]
	mov	x0, x19
	bl	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11573:
	.size	_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_, .-_ZSt23__copy_move_backward_a1ILb1EPxxEN9__gnu_cxx11__enable_ifIXsrSt23__is_random_access_iterIT0_NSt15iterator_traitsIS4_E17iterator_categoryEE7__valueESt15_Deque_iteratorIT1_RSA_PSA_EE6__typeES4_S4_SD_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, %function
_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_:
.LFB11585:
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
.LFE11585:
	.size	_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a1ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, %function
_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_:
.LFB11587:
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
.LFE11587:
	.size	_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a2ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.type	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, %function
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_:
.LFB11589:
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
	beq	.L341
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
.L341:
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
.LFE11589:
	.size	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_, .-_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIxEEPT_PKS3_S6_S4_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11626:
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
.LFE11626:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11649:
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
.LFE11649:
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
