	.arch armv8-a
	.file	"Tickets.cpp"
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
	.section	.text._ZNSt5queueIiSt5dequeIiSaIiEEED2Ev,"axG",@progbits,_ZNSt5queueIiSt5dequeIiSaIiEEED5Ev,comdat
	.align	2
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev
	.type	_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev, %function
_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev:
.LFB9699:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9699:
	.size	_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev, .-_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEED1Ev
	.set	_ZNSt5queueIiSt5dequeIiSaIiEEED1Ev,_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"\n"
	.align	3
.LC2:
	.string	"No"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9696:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9696
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	add	x0, sp, 124
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZNSirsERi
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEEC1IS2_vEEv
.LEHE0:
	b	.L12
.L17:
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bne	.L13
	add	x1, sp, 32
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi
	b	.L12
.L13:
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv
	ldr	w1, [x0]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L16
.L15:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE1:
.L16:
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv
.L12:
	ldr	w0, [sp, 124]
	sub	w1, w0, #1
	str	w1, [sp, 124]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	mov	w19, 0
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEED1Ev
	mov	w0, w19
	b	.L21
.L20:
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNSt5queueIiSt5dequeIiSaIiEEED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L21:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
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
	.uleb128 .L20-.LFB9696
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
.LFB10012:
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
	bcs	.L23
	ldr	x0, [sp]
	b	.L24
.L23:
	ldr	x0, [sp, 8]
.L24:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10012:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt5dequeIiSaIiEEC2Ev,"axG",@progbits,_ZNSt5dequeIiSaIiEEC5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEEC2Ev
	.type	_ZNSt5dequeIiSaIiEEC2Ev, %function
_ZNSt5dequeIiSaIiEEC2Ev:
.LFB10390:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10390:
	.size	_ZNSt5dequeIiSaIiEEC2Ev, .-_ZNSt5dequeIiSaIiEEC2Ev
	.weak	_ZNSt5dequeIiSaIiEEC1Ev
	.set	_ZNSt5dequeIiSaIiEEC1Ev,_ZNSt5dequeIiSaIiEEC2Ev
	.section	.text._ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5queueIiSt5dequeIiSaIiEEEC5IS2_vEEv,comdat
	.align	2
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv
	.type	_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv, %function
_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv:
.LFB10392:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	str	q0, [x0, 64]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10392:
	.size	_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv, .-_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEEC1IS2_vEEv
	.set	_ZNSt5queueIiSt5dequeIiSaIiEEEC1IS2_vEEv,_ZNSt5queueIiSt5dequeIiSaIiEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIiSaIiEED2Ev,"axG",@progbits,_ZNSt5dequeIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEED2Ev
	.type	_ZNSt5dequeIiSaIiEED2Ev, %function
_ZNSt5dequeIiSaIiEED2Ev:
.LFB10395:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10395
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE5beginEv
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE3endEv
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEED2Ev
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10395:
	.section	.gcc_except_table
.LLSDA10395:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10395-.LLSDACSB10395
.LLSDACSB10395:
.LLSDACSE10395:
	.section	.text._ZNSt5dequeIiSaIiEED2Ev,"axG",@progbits,_ZNSt5dequeIiSaIiEED5Ev,comdat
	.size	_ZNSt5dequeIiSaIiEED2Ev, .-_ZNSt5dequeIiSaIiEED2Ev
	.weak	_ZNSt5dequeIiSaIiEED1Ev
	.set	_ZNSt5dequeIiSaIiEED1Ev,_ZNSt5dequeIiSaIiEED2Ev
	.section	.text._ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi,"axG",@progbits,_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi,comdat
	.align	2
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi
	.type	_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi, %function
_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi:
.LFB10397:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt5dequeIiSaIiEE9push_backERKi
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10397:
	.size	_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi, .-_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi
	.section	.text._ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv,"axG",@progbits,_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv,comdat
	.align	2
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv
	.type	_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv, %function
_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv:
.LFB10398:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE5frontEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv, .-_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv
	.section	.text._ZNSt5queueIiSt5dequeIiSaIiEEE3popEv,"axG",@progbits,_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv,comdat
	.align	2
	.weak	_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv
	.type	_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv, %function
_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv:
.LFB10400:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE9pop_frontEv
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10400:
	.size	_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv, .-_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv
	.section	.text._ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev, %function
_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev:
.LFB10794:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10794:
	.size	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEEC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEEC2Ev
	.type	_ZNSt11_Deque_baseIiSaIiEEC2Ev, %function
_ZNSt11_Deque_baseIiSaIiEEC2Ev:
.LFB10796:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10796
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC1Ev
	mov	x1, 0
	ldr	x0, [sp, 40]
.LEHB3:
	bl	_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm
.LEHE3:
	b	.L36
.L35:
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L36:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10796:
	.section	.gcc_except_table
.LLSDA10796:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10796-.LLSDACSB10796
.LLSDACSB10796:
	.uleb128 .LEHB3-.LFB10796
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L35-.LFB10796
	.uleb128 0
	.uleb128 .LEHB4-.LFB10796
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE10796:
	.section	.text._ZNSt11_Deque_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEEC2Ev, .-_ZNSt11_Deque_baseIiSaIiEEC2Ev
	.weak	_ZNSt11_Deque_baseIiSaIiEEC1Ev
	.set	_ZNSt11_Deque_baseIiSaIiEEC1Ev,_ZNSt11_Deque_baseIiSaIiEEC2Ev
	.section	.text._ZNSt11_Deque_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEED2Ev
	.type	_ZNSt11_Deque_baseIiSaIiEED2Ev, %function
_ZNSt11_Deque_baseIiSaIiEED2Ev:
.LFB10799:
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
	beq	.L38
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim
.L38:
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10799:
	.size	_ZNSt11_Deque_baseIiSaIiEED2Ev, .-_ZNSt11_Deque_baseIiSaIiEED2Ev
	.weak	_ZNSt11_Deque_baseIiSaIiEED1Ev
	.set	_ZNSt11_Deque_baseIiSaIiEED1Ev,_ZNSt11_Deque_baseIiSaIiEED2Ev
	.section	.text._ZNSt5dequeIiSaIiEE5beginEv,"axG",@progbits,_ZNSt5dequeIiSaIiEE5beginEv,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE5beginEv
	.type	_ZNSt5dequeIiSaIiEE5beginEv, %function
_ZNSt5dequeIiSaIiEE5beginEv:
.LFB10801:
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
	bl	_ZNSt15_Deque_iteratorIiRiPiEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10801:
	.size	_ZNSt5dequeIiSaIiEE5beginEv, .-_ZNSt5dequeIiSaIiEE5beginEv
	.section	.text._ZNSt5dequeIiSaIiEE3endEv,"axG",@progbits,_ZNSt5dequeIiSaIiEE3endEv,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE3endEv
	.type	_ZNSt5dequeIiSaIiEE3endEv, %function
_ZNSt5dequeIiSaIiEE3endEv:
.LFB10802:
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
	bl	_ZNSt15_Deque_iteratorIiRiPiEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10802:
	.size	_ZNSt5dequeIiSaIiEE3endEv, .-_ZNSt5dequeIiSaIiEE3endEv
	.section	.text._ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB10803:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10803:
	.size	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_,"axG",@progbits,_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_
	.type	_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_, %function
_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_:
.LFB10804:
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
.LFE10804:
	.size	_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_, .-_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_
	.section	.text._ZNSt5dequeIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt5dequeIiSaIiEE9push_backERKi,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE9push_backERKi
	.type	_ZNSt5dequeIiSaIiEE9push_backERKi, %function
_ZNSt5dequeIiSaIiEE9push_backERKi:
.LFB10805:
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
	sub	x0, x0, #4
	cmp	x1, x0
	beq	.L47
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	bl	_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	add	x1, x0, 4
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	b	.L49
.L47:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_
.L49:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10805:
	.size	_ZNSt5dequeIiSaIiEE9push_backERKi, .-_ZNSt5dequeIiSaIiEE9push_backERKi
	.section	.text._ZNSt5dequeIiSaIiEE5frontEv,"axG",@progbits,_ZNSt5dequeIiSaIiEE5frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE5frontEv
	.type	_ZNSt5dequeIiSaIiEE5frontEv, %function
_ZNSt5dequeIiSaIiEE5frontEv:
.LFB10807:
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
	bl	_ZNSt5dequeIiSaIiEE5beginEv
	add	x0, sp, 32
	bl	_ZNKSt15_Deque_iteratorIiRiPiEdeEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10807:
	.size	_ZNSt5dequeIiSaIiEE5frontEv, .-_ZNSt5dequeIiSaIiEE5frontEv
	.section	.text._ZNSt5dequeIiSaIiEE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIiSaIiEE9pop_frontEv,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE9pop_frontEv
	.type	_ZNSt5dequeIiSaIiEE9pop_frontEv, %function
_ZNSt5dequeIiSaIiEE9pop_frontEv:
.LFB10809:
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
	sub	x0, x0, #4
	cmp	x1, x0
	beq	.L53
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 4
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	b	.L55
.L53:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv
.L55:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10809:
	.size	_ZNSt5dequeIiSaIiEE9pop_frontEv, .-_ZNSt5dequeIiSaIiEE9pop_frontEv
	.section	.text._ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev, %function
_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev:
.LFB11007:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIiEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11007:
	.size	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED5Ev,comdat
	.align	2
	.weak	_ZNSaIiED2Ev
	.type	_ZNSaIiED2Ev, %function
_ZNSaIiED2Ev:
.LFB11010:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11010:
	.size	_ZNSaIiED2Ev, .-_ZNSaIiED2Ev
	.weak	_ZNSaIiED1Ev
	.set	_ZNSaIiED1Ev,_ZNSaIiED2Ev
	.section	.text._ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm, %function
_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm:
.LFB11012:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11012
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	mov	x0, 4
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
	bl	_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm
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
	bl	_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_
.LEHE6:
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x1, [sp, 80]
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	mov	x0, 4
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	b	.L63
.L61:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim
	ldr	x0, [sp, 40]
	str	xzr, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
.LEHB7:
	bl	__cxa_rethrow
.LEHE7:
.L62:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB8:
	bl	_Unwind_Resume
.LEHE8:
.L63:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11012:
	.section	.gcc_except_table
	.align	2
.LLSDA11012:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11012-.LLSDATTD11012
.LLSDATTD11012:
	.byte	0x1
	.uleb128 .LLSDACSE11012-.LLSDACSB11012
.LLSDACSB11012:
	.uleb128 .LEHB5-.LFB11012
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB11012
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L61-.LFB11012
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB11012
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L62-.LFB11012
	.uleb128 0
	.uleb128 .LEHB8-.LFB11012
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE11012:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11012:
	.section	.text._ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	.type	_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_, %function
_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_:
.LFB11013:
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
	b	.L65
.L66:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
.L65:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L66
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11013:
	.size	_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_, .-_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
	.section	.text._ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim
	.type	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim, %function
_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim:
.LFB11014:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11014
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
	bl	_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m
	add	x0, sp, 56
	bl	_ZNSaIPiED1Ev
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11014:
	.section	.gcc_except_table
.LLSDA11014:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11014-.LLSDACSB11014
.LLSDACSB11014:
.LLSDACSE11014:
	.section	.text._ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim, .-_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim
	.section	.text._ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIiRiPiEC5ERKS2_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_, %function
_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_:
.LFB11016:
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
.LFE11016:
	.size	_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_, .-_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIiRiPiEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIiRiPiEC1ERKS2_,_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_
	.section	.text._ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_:
.LFB11019:
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
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11019:
	.size	_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align	3
.LC3:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_
	.type	_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_, %function
_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_:
.LFB11020:
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
	bl	_ZNKSt5dequeIiSaIiEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt5dequeIiSaIiEE8max_sizeEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L71
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_ZSt20__throw_length_errorPKc
.L71:
	mov	x1, 1
	ldr	x0, [sp, 40]
	bl	_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x19, x0, 8
	mov	x0, x1
	bl	_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv
	str	x0, [x19]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
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
.LFE11020:
	.size	_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_, .-_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_
	.section	.text._ZNKSt15_Deque_iteratorIiRiPiEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIiRiPiEdeEv,comdat
	.align	2
	.weak	_ZNKSt15_Deque_iteratorIiRiPiEdeEv
	.type	_ZNKSt15_Deque_iteratorIiRiPiEdeEv, %function
_ZNKSt15_Deque_iteratorIiRiPiEdeEv:
.LFB11021:
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
.LFE11021:
	.size	_ZNKSt15_Deque_iteratorIiRiPiEdeEv, .-_ZNKSt15_Deque_iteratorIiRiPiEdeEv
	.section	.text._ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_, %function
_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_:
.LFB11023:
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
	bl	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11023:
	.size	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	.section	.text._ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv, %function
_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv:
.LFB11024:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	ldr	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi
	ldr	x0, [sp, 24]
	add	x2, x0, 16
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
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
.LFE11024:
	.size	_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv, .-_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC5Ev,comdat
	.align	2
	.weak	_ZNSaIiEC2Ev
	.type	_ZNSaIiEC2Ev, %function
_ZNSaIiEC2Ev:
.LFB11162:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11162:
	.size	_ZNSaIiEC2Ev, .-_ZNSaIiEC2Ev
	.weak	_ZNSaIiEC1Ev
	.set	_ZNSaIiEC1Ev,_ZNSaIiEC2Ev
	.section	.text._ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev, %function
_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev:
.LFB11165:
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
	bl	_ZNSt15_Deque_iteratorIiRiPiEC1Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	bl	_ZNSt15_Deque_iteratorIiRiPiEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11165:
	.size	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB11168:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11168:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiED1Ev,_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.section	.text._ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm, %function
_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm:
.LFB11170:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11170
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
	bl	_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x1, [sp, 32]
.LEHB9:
	bl	_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m
.LEHE9:
	mov	x19, x0
	nop
	add	x0, sp, 56
	bl	_ZNSaIPiED1Ev
	mov	x0, x19
	b	.L83
.L82:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSaIPiED1Ev
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
.L83:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11170:
	.section	.gcc_except_table
.LLSDA11170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11170-.LLSDACSB11170
.LLSDACSB11170:
	.uleb128 .LEHB9-.LFB11170
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L82-.LFB11170
	.uleb128 0
	.uleb128 .LEHB10-.LFB11170
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11170:
	.section	.text._ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_
	.type	_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_, %function
_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_:
.LFB11171:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11171
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
	b	.L85
.L86:
	ldr	x0, [sp, 56]
.LEHB11:
	bl	_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv
.LEHE11:
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L85:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L86
	b	.L91
.L89:
	bl	__cxa_begin_catch
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_
.LEHB12:
	bl	__cxa_rethrow
.LEHE12:
.L90:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB13:
	bl	_Unwind_Resume
.LEHE13:
.L91:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11171:
	.section	.gcc_except_table
	.align	2
.LLSDA11171:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11171-.LLSDATTD11171
.LLSDATTD11171:
	.byte	0x1
	.uleb128 .LLSDACSE11171-.LLSDACSB11171
.LLSDACSB11171:
	.uleb128 .LEHB11-.LFB11171
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L89-.LFB11171
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB11171
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L90-.LFB11171
	.uleb128 0
	.uleb128 .LEHB13-.LFB11171
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE11171:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11171:
	.section	.text._ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_, .-_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_
	.section	.text._ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_, %function
_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_:
.LFB11172:
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
	bl	_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv
	lsl	x0, x0, 2
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
.LFE11172:
	.size	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi
	.type	_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi, %function
_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi:
.LFB11173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11173
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
	mov	x0, 4
	bl	_ZSt16__deque_buf_sizem
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11173:
	.section	.gcc_except_table
.LLSDA11173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11173-.LLSDACSB11173
.LLSDACSB11173:
.LLSDACSE11173:
	.section	.text._ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi,comdat
	.size	_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi, .-_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi
	.section	.text._ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv, %function
_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv:
.LFB11174:
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
	bl	_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSaIPiEC1IiEERKSaIT_E
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPiED2Ev,"axG",@progbits,_ZNSaIPiED5Ev,comdat
	.align	2
	.weak	_ZNSaIPiED2Ev
	.type	_ZNSaIPiED2Ev, %function
_ZNSaIPiED2Ev:
.LFB11176:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPiED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZNSaIPiED2Ev, .-_ZNSaIPiED2Ev
	.weak	_ZNSaIPiED1Ev
	.set	_ZNSaIPiED1Ev,_ZNSaIPiED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m:
.LFB11178:
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
	bl	_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPiEE10deallocateERS1_PS0_m
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11181:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11181:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_:
.LFB11182:
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
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	w19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	str	w19, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11182:
	.size	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIiSaIiEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIiSaIiEE4sizeEv
	.type	_ZNKSt5dequeIiSaIiEE4sizeEv, %function
_ZNKSt5dequeIiSaIiEE4sizeEv:
.LFB11183:
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
	bl	_ZStmiRKSt15_Deque_iteratorIiRiPiES4_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11183:
	.size	_ZNKSt5dequeIiSaIiEE4sizeEv, .-_ZNKSt5dequeIiSaIiEE4sizeEv
	.section	.text._ZNKSt5dequeIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIiSaIiEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIiSaIiEE8max_sizeEv
	.type	_ZNKSt5dequeIiSaIiEE8max_sizeEv, %function
_ZNKSt5dequeIiSaIiEE8max_sizeEv:
.LFB11184:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	bl	_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11184:
	.size	_ZNKSt5dequeIiSaIiEE8max_sizeEv, .-_ZNKSt5dequeIiSaIiEE8max_sizeEv
	.section	.text._ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm, %function
_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm:
.LFB11185:
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
	bls	.L107
	mov	w2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb
.L107:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11185:
	.size	_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv, %function
_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv:
.LFB11186:
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
	mov	x0, 4
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11186:
	.size	_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_, %function
_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_:
.LFB11187:
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
.LFE11187:
	.size	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:
.LFB11273:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11273:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiEC1Ev,_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.section	.text._ZNSt15_Deque_iteratorIiRiPiEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIiRiPiEC5Ev,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIiRiPiEC2Ev
	.type	_ZNSt15_Deque_iteratorIiRiPiEC2Ev, %function
_ZNSt15_Deque_iteratorIiRiPiEC2Ev:
.LFB11276:
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
.LFE11276:
	.size	_ZNSt15_Deque_iteratorIiRiPiEC2Ev, .-_ZNSt15_Deque_iteratorIiRiPiEC2Ev
	.weak	_ZNSt15_Deque_iteratorIiRiPiEC1Ev
	.set	_ZNSt15_Deque_iteratorIiRiPiEC1Ev,_ZNSt15_Deque_iteratorIiRiPiEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPiEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m:
.LFB11278:
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
	bl	_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11278:
	.size	_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPiEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv, %function
_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv:
.LFB11279:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x0, 4
	bl	_ZSt16__deque_buf_sizem
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11279:
	.size	_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, %function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim:
.LFB11280:
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
	bl	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11280:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.section	.text._ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB11281:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11281:
	.size	_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPiEC2IiEERKSaIT_E,"axG",@progbits,_ZNSaIPiEC5IiEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaIPiEC2IiEERKSaIT_E
	.type	_ZNSaIPiEC2IiEERKSaIT_E, %function
_ZNSaIPiEC2IiEERKSaIT_E:
.LFB11283:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPiEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11283:
	.size	_ZNSaIPiEC2IiEERKSaIT_E, .-_ZNSaIPiEC2IiEERKSaIT_E
	.weak	_ZNSaIPiEC1IiEERKSaIT_E
	.set	_ZNSaIPiEC1IiEERKSaIT_E,_ZNSaIPiEC2IiEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPiED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPiED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPiED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPiED2Ev:
.LFB11286:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11286:
	.size	_ZN9__gnu_cxx13new_allocatorIPiED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPiED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPiED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPiED1Ev,_ZN9__gnu_cxx13new_allocatorIPiED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m:
.LFB11288:
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
.LFE11288:
	.size	_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m
	.section	.text._ZStmiRKSt15_Deque_iteratorIiRiPiES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIiRiPiES4_,comdat
	.align	2
	.weak	_ZStmiRKSt15_Deque_iteratorIiRiPiES4_
	.type	_ZStmiRKSt15_Deque_iteratorIiRiPiES4_, %function
_ZStmiRKSt15_Deque_iteratorIiRiPiES4_:
.LFB11290:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	bl	_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv
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
	asr	x1, x1, 2
	add	x0, x0, x1
	ldr	x1, [sp, 16]
	ldr	x2, [x1, 16]
	ldr	x1, [sp, 16]
	ldr	x1, [x1]
	sub	x1, x2, x1
	asr	x1, x1, 2
	add	x0, x0, x1
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11290:
	.size	_ZStmiRKSt15_Deque_iteratorIiRiPiES4_, .-_ZStmiRKSt15_Deque_iteratorIiRiPiES4_
	.section	.text._ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_, %function
_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_:
.LFB11291:
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
	bl	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
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
.LFE11291:
	.size	_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb,comdat
	.align	2
	.weak	_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb:
.LFB11292:
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
	bls	.L129
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
	beq	.L130
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L131
.L130:
	mov	x0, 0
.L131:
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L132
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt4copyIPPiS1_ET0_T_S3_S2_
	b	.L133
.L132:
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
	bl	_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_
	b	.L133
.L129:
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
	bl	_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm
	str	x0, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x0, x0, 1
	lsl	x1, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L134
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L135
.L134:
	mov	x0, 0
.L135:
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
	bl	_ZSt4copyIPPiS1_ET0_T_S3_S2_
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	bl	_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
.L133:
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x1, [sp, 104]
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	ldr	x0, [sp, 56]
	add	x2, x0, 48
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11292:
	.size	_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m:
.LFB11293:
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
	bl	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11293:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv:
.LFB11400:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11400:
	.size	_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv:
.LFB11399:
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
	bl	_ZNK9__gnu_cxx13new_allocatorIPiE11_M_max_sizeEv
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
	beq	.L141
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L142
	bl	_ZSt28__throw_bad_array_new_lengthv
.L142:
	bl	_ZSt17__throw_bad_allocv
.L141:
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
.LFE11399:
	.size	_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, %function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim:
.LFB11401:
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
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11401:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.section	.text._ZN9__gnu_cxx13new_allocatorIPiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPiEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPiEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPiEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPiEC2Ev:
.LFB11403:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11403:
	.size	_ZN9__gnu_cxx13new_allocatorIPiEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPiEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPiEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPiEC1Ev,_ZN9__gnu_cxx13new_allocatorIPiEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_:
.LFB11406:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11406:
	.size	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.section	.text._ZSt4copyIPPiS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPiS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt4copyIPPiS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPiS1_ET0_T_S3_S2_, %function
_ZSt4copyIPPiS1_ET0_T_S3_S2_:
.LFB11407:
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
	bl	_ZSt12__miter_baseIPPiET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPiET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11407:
	.size	_ZSt4copyIPPiS1_ET0_T_S3_S2_, .-_ZSt4copyIPPiS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_, %function
_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_:
.LFB11408:
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
	bl	_ZSt12__miter_baseIPPiET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPiET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11408:
	.size	_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv:
.LFB11410:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 2305843009213693951
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11410:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv:
.LFB11409:
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
	bl	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
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
	beq	.L156
	ldr	x1, [sp, 32]
	mov	x0, 4611686018427387903
	cmp	x1, x0
	bls	.L157
	bl	_ZSt28__throw_bad_array_new_lengthv
.L157:
	bl	_ZSt17__throw_bad_allocv
.L156:
	ldr	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11409:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv:
.LFB11478:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11478:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.section	.text._ZSt12__miter_baseIPPiET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPiET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPPiET_S2_
	.type	_ZSt12__miter_baseIPPiET_S2_, %function
_ZSt12__miter_baseIPPiET_S2_:
.LFB11479:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11479:
	.size	_ZSt12__miter_baseIPPiET_S2_, .-_ZSt12__miter_baseIPPiET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11480:
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
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPiET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11480:
	.size	_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11482:
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
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPiET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPiET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11482:
	.size	_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_baseIPPiET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPiET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPPiET_S2_
	.type	_ZSt12__niter_baseIPPiET_S2_, %function
_ZSt12__niter_baseIPPiET_S2_:
.LFB11512:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11512:
	.size	_ZSt12__niter_baseIPPiET_S2_, .-_ZSt12__niter_baseIPPiET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11513:
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
	bl	_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11513:
	.size	_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPiET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPiET_RKS2_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPPiET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPiET_RKS2_S2_, %function
_ZSt12__niter_wrapIPPiET_RKS2_S2_:
.LFB11514:
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
.LFE11514:
	.size	_ZSt12__niter_wrapIPPiET_RKS2_S2_, .-_ZSt12__niter_wrapIPPiET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11515:
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
	bl	_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11515:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11519:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11519:
	.size	_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_:
.LFB11520:
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
	bl	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11520:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_:
.LFB11532:
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
	beq	.L180
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L180:
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
.LFE11532:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_, %function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_:
.LFB11534:
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
	beq	.L183
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
.L183:
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
.LFE11534:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11573:
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
	bne	.L187
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L187
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
.L187:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11573:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11596:
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
.LFE11596:
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
