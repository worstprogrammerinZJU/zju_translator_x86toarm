	.arch armv8-a
	.file	"81A.cpp"
	.text
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
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, %function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB1062:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	mov	w0, 0
	cmp	w0, 0
	beq	.L5
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	b	.L6
.L5:
	ldr	x0, [sp, 24]
	bl	strlen
	nop
.L6:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1062:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
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
	bcs	.L8
	ldr	x0, [sp]
	b	.L9
.L8:
	ldr	x0, [sp, 8]
.L9:
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
	bhi	.L11
	mov	x1, 512
	ldr	x0, [sp, 8]
	udiv	x0, x1, x0
	b	.L13
.L11:
	mov	x0, 1
.L13:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4244:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
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
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEED2Ev,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEED5Ev,comdat
	.align	2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev, %function
_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev:
.LFB9699:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9699:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev, .-_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	.set	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev,_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
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
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -176
	mov	w0, 0
.LEHB0:
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
.LEHE0:
	add	x0, sp, 72
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	add	x0, sp, 72
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	sub	w0, w0, #1
	str	w0, [sp, 188]
	b	.L16
.L21:
	add	x0, sp, 104
	bl	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 188]
	add	x0, sp, 72
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w19, w0
	bne	.L17
	mov	w0, 1
	b	.L18
.L17:
	mov	w0, 0
.L18:
	cmp	w0, 0
	beq	.L19
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	b	.L20
.L19:
	ldrsw	x1, [sp, 188]
	add	x0, sp, 72
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
.LEHE1:
.L20:
	ldr	w0, [sp, 188]
	sub	w0, w0, #1
	str	w0, [sp, 188]
.L16:
	ldr	w0, [sp, 188]
	cmp	w0, 0
	bge	.L21
	add	x0, sp, 184
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 184
	add	x3, sp, 40
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	add	x0, sp, 184
	bl	_ZNSaIcED1Ev
	b	.L22
.L23:
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	ldrb	w1, [x0]
	add	x0, sp, 40
.LEHB3:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
.L22:
	add	x0, sp, 104
	bl	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE3:
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 72
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	mov	w0, 0
	b	.L31
.L29:
	mov	x19, x0
	add	x0, sp, 184
	bl	_ZNSaIcED1Ev
	b	.L26
.L30:
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L26
.L28:
	mov	x19, x0
.L26:
	add	x0, sp, 72
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 104
	bl	_ZNSt5stackIcSt5dequeIcSaIcEEED1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L31:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 192
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
	.uleb128 .L30-.LFB9696
	.uleb128 0
	.uleb128 .LEHB4-.LFB9696
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9696:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, %function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB9753:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0]
	ldr	x0, [sp]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9753:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align	2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, %function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB9752:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	xzr, [sp, 40]
	b	.L35
.L36:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L35:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [sp, 39]
	add	x1, sp, 39
	bl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9752:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB9860:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9860:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
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
	bcs	.L40
	ldr	x0, [sp]
	b	.L41
.L40:
	ldr	x0, [sp, 8]
.L41:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10012:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB10291:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10291
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
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
.LEHB5:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE5:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L43
	ldr	x0, [sp, 48]
.LEHB6:
	bl	_ZNSt11char_traitsIcE6lengthEPKc
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	b	.L44
.L43:
	mov	x0, 1
.L44:
	str	x0, [sp, 72]
	mov	w3, w20
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE6:
	b	.L47
.L46:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB7:
	bl	_Unwind_Resume
.LEHE7:
.L47:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10291:
	.section	.gcc_except_table
.LLSDA10291:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10291-.LLSDACSB10291
.LLSDACSB10291:
	.uleb128 .LEHB5-.LFB10291
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10291
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L46-.LFB10291
	.uleb128 0
	.uleb128 .LEHB7-.LFB10291
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE10291:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt5dequeIcSaIcEEC2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEEC5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEEC2Ev
	.type	_ZNSt5dequeIcSaIcEEC2Ev, %function
_ZNSt5dequeIcSaIcEEC2Ev:
.LFB10391:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10391:
	.size	_ZNSt5dequeIcSaIcEEC2Ev, .-_ZNSt5dequeIcSaIcEEC2Ev
	.weak	_ZNSt5dequeIcSaIcEEC1Ev
	.set	_ZNSt5dequeIcSaIcEEC1Ev,_ZNSt5dequeIcSaIcEEC2Ev
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEEC5IS2_vEEv,comdat
	.align	2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, %function
_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv:
.LFB10393:
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
	bl	_ZNSt5dequeIcSaIcEEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10393:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv
	.set	_ZNSt5stackIcSt5dequeIcSaIcEEEC1IS2_vEEv,_ZNSt5stackIcSt5dequeIcSaIcEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEED2Ev
	.type	_ZNSt5dequeIcSaIcEED2Ev, %function
_ZNSt5dequeIcSaIcEED2Ev:
.LFB10396:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10396
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE5beginEv
	add	x0, sp, 64
	mov	x8, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE3endEv
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	add	x1, sp, 64
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEED2Ev
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10396:
	.section	.gcc_except_table
.LLSDA10396:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10396-.LLSDACSB10396
.LLSDACSB10396:
.LLSDACSE10396:
	.section	.text._ZNSt5dequeIcSaIcEED2Ev,"axG",@progbits,_ZNSt5dequeIcSaIcEED5Ev,comdat
	.size	_ZNSt5dequeIcSaIcEED2Ev, .-_ZNSt5dequeIcSaIcEED2Ev
	.weak	_ZNSt5dequeIcSaIcEED1Ev
	.set	_ZNSt5dequeIcSaIcEED1Ev,_ZNSt5dequeIcSaIcEED2Ev
	.section	.text._ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,"axG",@progbits,_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.type	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, %function
_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv:
.LFB10398:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt5dequeIcSaIcEE5emptyEv
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10398:
	.size	_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv, .-_ZNKSt5stackIcSt5dequeIcSaIcEEE5emptyEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv,comdat
	.align	2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, %function
_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv:
.LFB10399:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE4backEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10399:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEE3topEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE3popEv,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv,comdat
	.align	2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv, %function
_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv:
.LFB10400:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE8pop_backEv
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10400:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv, .-_ZNSt5stackIcSt5dequeIcSaIcEEE3popEv
	.section	.text._ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,"axG",@progbits,_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc,comdat
	.align	2
	.weak	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.type	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, %function
_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc:
.LFB10401:
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
	bl	_ZNSt5dequeIcSaIcEE9push_backERKc
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10401:
	.size	_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc, .-_ZNSt5stackIcSt5dequeIcSaIcEEE4pushERKc
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.align	2
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, %function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB10676:
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
	ldr	x19, [sp, 40]
	add	x0, sp, 40
	bl	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	mov	w2, w20
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10676:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align	3
.LC2:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB10675:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10675
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
	strb	w3, [sp, 32]
	ldr	x0, [sp, 48]
	bl	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L60
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	beq	.L60
	mov	w0, 1
	b	.L61
.L60:
	mov	w0, 0
.L61:
	cmp	w0, 0
	beq	.L62
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
.LEHB8:
	bl	_ZSt19__throw_logic_errorPKc
.L62:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 48]
	bl	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 15
	bls	.L63
	add	x0, sp, 72
	mov	x2, 0
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	ldr	x0, [sp, 72]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
.LEHE8:
.L63:
	ldr	x0, [sp, 56]
.LEHB9:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
.LEHE9:
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	ldr	x0, [sp, 72]
	mov	x1, x0
	ldr	x0, [sp, 56]
.LEHB10:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
.LEHE10:
	b	.L68
.L66:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 56]
.LEHB11:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	bl	__cxa_rethrow
.LEHE11:
.L67:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB12:
	bl	_Unwind_Resume
.LEHE12:
.L68:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10675:
	.section	.gcc_except_table
	.align	2
.LLSDA10675:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10675-.LLSDATTD10675
.LLSDATTD10675:
	.byte	0x1
	.uleb128 .LLSDACSE10675-.LLSDACSB10675
.LLSDACSB10675:
	.uleb128 .LEHB8-.LFB10675
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB10675
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L66-.LFB10675
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB10675
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB10675
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L67-.LFB10675
	.uleb128 0
	.uleb128 .LEHB12-.LFB10675
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE10675:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10675:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, %function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev:
.LFB10798:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10798:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEEC2Ev, %function
_ZNSt11_Deque_baseIcSaIcEEC2Ev:
.LFB10800:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10800
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev
	mov	x1, 0
	ldr	x0, [sp, 40]
.LEHB13:
	bl	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
.LEHE13:
	b	.L73
.L72:
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	mov	x0, x19
.LEHB14:
	bl	_Unwind_Resume
.LEHE14:
.L73:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10800:
	.section	.gcc_except_table
.LLSDA10800:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10800-.LLSDACSB10800
.LLSDACSB10800:
	.uleb128 .LEHB13-.LFB10800
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L72-.LFB10800
	.uleb128 0
	.uleb128 .LEHB14-.LFB10800
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10800:
	.section	.text._ZNSt11_Deque_baseIcSaIcEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEEC2Ev, .-_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEEC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEEC1Ev,_ZNSt11_Deque_baseIcSaIcEEC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEED5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEED2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEED2Ev, %function
_ZNSt11_Deque_baseIcSaIcEED2Ev:
.LFB10803:
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
	beq	.L75
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
.L75:
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10803:
	.size	_ZNSt11_Deque_baseIcSaIcEED2Ev, .-_ZNSt11_Deque_baseIcSaIcEED2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEED1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEED1Ev,_ZNSt11_Deque_baseIcSaIcEED2Ev
	.section	.text._ZNSt5dequeIcSaIcEE5beginEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE5beginEv,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE5beginEv
	.type	_ZNSt5dequeIcSaIcEE5beginEv, %function
_ZNSt5dequeIcSaIcEE5beginEv:
.LFB10805:
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
	bl	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10805:
	.size	_ZNSt5dequeIcSaIcEE5beginEv, .-_ZNSt5dequeIcSaIcEE5beginEv
	.section	.text._ZNSt5dequeIcSaIcEE3endEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE3endEv,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE3endEv
	.type	_ZNSt5dequeIcSaIcEE3endEv, %function
_ZNSt5dequeIcSaIcEE3endEv:
.LFB10806:
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
	bl	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10806:
	.size	_ZNSt5dequeIcSaIcEE3endEv, .-_ZNSt5dequeIcSaIcEE3endEv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, %function
_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB10807:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10807:
	.size	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.type	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, %function
_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_:
.LFB10808:
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
.LFE10808:
	.size	_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_, .-_ZNSt5dequeIcSaIcEE15_M_destroy_dataESt15_Deque_iteratorIcRcPcES5_RKS0_
	.section	.text._ZNKSt5dequeIcSaIcEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE5emptyEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIcSaIcEE5emptyEv
	.type	_ZNKSt5dequeIcSaIcEE5emptyEv, %function
_ZNKSt5dequeIcSaIcEE5emptyEv:
.LFB10809:
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
	bl	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10809:
	.size	_ZNKSt5dequeIcSaIcEE5emptyEv, .-_ZNKSt5dequeIcSaIcEE5emptyEv
	.section	.text._ZNSt5dequeIcSaIcEE4backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE4backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE4backEv
	.type	_ZNSt5dequeIcSaIcEE4backEv, %function
_ZNSt5dequeIcSaIcEE4backEv:
.LFB10810:
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
	bl	_ZNSt5dequeIcSaIcEE3endEv
	add	x0, sp, 32
	bl	_ZNSt15_Deque_iteratorIcRcPcEmmEv
	add	x0, sp, 32
	bl	_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10810:
	.size	_ZNSt5dequeIcSaIcEE4backEv, .-_ZNSt5dequeIcSaIcEE4backEv
	.section	.text._ZNSt5dequeIcSaIcEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE8pop_backEv,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE8pop_backEv
	.type	_ZNSt5dequeIcSaIcEE8pop_backEv, %function
_ZNSt5dequeIcSaIcEE8pop_backEv:
.LFB10811:
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
	beq	.L88
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	b	.L90
.L88:
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
.L90:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt5dequeIcSaIcEE8pop_backEv, .-_ZNSt5dequeIcSaIcEE8pop_backEv
	.section	.text._ZNSt5dequeIcSaIcEE9push_backERKc,"axG",@progbits,_ZNSt5dequeIcSaIcEE9push_backERKc,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE9push_backERKc
	.type	_ZNSt5dequeIcSaIcEE9push_backERKc, %function
_ZNSt5dequeIcSaIcEE9push_backERKc:
.LFB10812:
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
	sub	x0, x0, #1
	cmp	x1, x0
	beq	.L92
	ldr	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	ldr	x2, [sp, 16]
	mov	x1, x0
	mov	x0, x3
	bl	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	b	.L94
.L92:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
.L94:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10812:
	.size	_ZNSt5dequeIcSaIcEE9push_backERKc, .-_ZNSt5dequeIcSaIcEE9push_backERKc
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, %function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB10956:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10956:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, %function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB10957:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10957:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, %function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB10958:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 8]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10958:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, %function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
.LFB10981:
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
	bl	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10981:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
.LFB10982:
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
	bl	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10982:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.section	.text._ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, %function
_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev:
.LFB11010:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaIcEC2Ev
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11010:
	.size	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIcSaIcEE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, %function
_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm:
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
	mov	x0, 1
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
.LEHB15:
	bl	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
.LEHE15:
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
.LEHB16:
	bl	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
.LEHE16:
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	ldr	x1, [sp, 80]
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 40]
	str	x1, [x0, 16]
	ldr	x0, [sp, 40]
	ldr	x19, [x0, 56]
	mov	x0, 1
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	ldr	x0, [sp, 32]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	x1, x19, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 48]
	b	.L110
.L108:
	bl	__cxa_begin_catch
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	ldr	x0, [sp, 40]
	str	xzr, [x0]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 8]
.LEHB17:
	bl	__cxa_rethrow
.LEHE17:
.L109:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB18:
	bl	_Unwind_Resume
.LEHE18:
.L110:
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
	.uleb128 .LEHB15-.LFB11012
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB11012
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L108-.LFB11012
	.uleb128 0x1
	.uleb128 .LEHB17-.LFB11012
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L109-.LFB11012
	.uleb128 0
	.uleb128 .LEHB18-.LFB11012
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE11012:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11012:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, %function
_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_:
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
	b	.L112
.L113:
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	str	x0, [sp, 56]
.L112:
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L113
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11013:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.type	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, %function
_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm:
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
	bl	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	add	x0, sp, 56
	bl	_ZNSaIPcED1Ev
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
	.section	.text._ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm, .-_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5ERKS2_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, %function
_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_:
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
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_, .-_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1ERKS2_,_ZNSt15_Deque_iteratorIcRcPcEC2ERKS2_
	.section	.text._ZSteqRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.align	2
	.weak	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, %function
_ZSteqRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11019:
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
.LFE11019:
	.size	_ZSteqRKSt15_Deque_iteratorIcRcPcES4_, .-_ZSteqRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEmmEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.type	_ZNSt15_Deque_iteratorIcRcPcEmmEv, %function
_ZNSt15_Deque_iteratorIcRcPcEmmEv:
.LFB11020:
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
	bne	.L119
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	sub	x0, x0, #8
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x1, [x0]
.L119:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11020:
	.size	_ZNSt15_Deque_iteratorIcRcPcEmmEv, .-_ZNSt15_Deque_iteratorIcRcPcEmmEv
	.section	.text._ZNKSt15_Deque_iteratorIcRcPcEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIcRcPcEdeEv,comdat
	.align	2
	.weak	_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	.type	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, %function
_ZNKSt15_Deque_iteratorIcRcPcEdeEv:
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
	.size	_ZNKSt15_Deque_iteratorIcRcPcEdeEv, .-_ZNKSt15_Deque_iteratorIcRcPcEdeEv
	.section	.text._ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_, %function
_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_:
.LFB11022:
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
	bl	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11022:
	.size	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	.section	.text._ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, %function
_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv:
.LFB11023:
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
	bl	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	ldr	x0, [sp, 24]
	add	x2, x0, 48
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 72]
	sub	x0, x0, #8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 64]
	sub	x1, x0, #1
	ldr	x0, [sp, 24]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	bl	_ZNSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt16allocator_traitsISaIcEE7destroyIcEEvRS0_PT_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11023:
	.size	_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv, .-_ZNSt5dequeIcSaIcEE15_M_pop_back_auxEv
	.section	.text._ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, %function
_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_:
.LFB11024:
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
	bl	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11024:
	.size	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	.section	.rodata
	.align	3
.LC3:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.type	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, %function
_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_:
.LFB11025:
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
	bl	_ZNKSt5dequeIcSaIcEE4sizeEv
	mov	x19, x0
	ldr	x0, [sp, 40]
	bl	_ZNKSt5dequeIcSaIcEE8max_sizeEv
	cmp	x19, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L127
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_ZSt20__throw_length_errorPKc
.L127:
	mov	x1, 1
	ldr	x0, [sp, 40]
	bl	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x19, x0, 8
	mov	x0, x1
	bl	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	str	x0, [x19]
	ldr	x19, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 48]
	ldr	x0, [sp, 32]
	bl	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIcEE9constructIcJRKcEEEvRS0_PT_DpOT0_
	ldr	x0, [sp, 40]
	add	x2, x0, 48
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
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
.LFE11025:
	.size	_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_, .-_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, %function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB11131:
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
	ldr	x0, [sp, 32]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11131:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB11133:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 9223372036854775807
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11133:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
.LFB11132:
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
	bl	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
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
	beq	.L133
	bl	_ZSt17__throw_bad_allocv
.L133:
	ldr	x0, [sp, 32]
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11132:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, %function
_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev:
.LFB11164:
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
	bl	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	ldr	x0, [sp, 24]
	add	x0, x0, 48
	bl	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11164:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, %function
_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm:
.LFB11166:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11166
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
	bl	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	add	x0, sp, 56
	ldr	x1, [sp, 32]
.LEHB19:
	bl	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
.LEHE19:
	mov	x19, x0
	nop
	add	x0, sp, 56
	bl	_ZNSaIPcED1Ev
	mov	x0, x19
	b	.L140
.L139:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSaIPcED1Ev
	mov	x0, x19
.LEHB20:
	bl	_Unwind_Resume
.LEHE20:
.L140:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11166:
	.section	.gcc_except_table
.LLSDA11166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11166-.LLSDACSB11166
.LLSDACSB11166:
	.uleb128 .LEHB19-.LFB11166
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L139-.LFB11166
	.uleb128 0
	.uleb128 .LEHB20-.LFB11166
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE11166:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.type	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, %function
_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_:
.LFB11167:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11167
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
	b	.L142
.L143:
	ldr	x0, [sp, 56]
.LEHB21:
	bl	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
.LEHE21:
	mov	x1, x0
	ldr	x0, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 8
	str	x0, [sp, 72]
.L142:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 40]
	cmp	x1, x0
	bcc	.L143
	b	.L148
.L146:
	bl	__cxa_begin_catch
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	bl	_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_
.LEHB22:
	bl	__cxa_rethrow
.LEHE22:
.L147:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB23:
	bl	_Unwind_Resume
.LEHE23:
.L148:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11167:
	.section	.gcc_except_table
	.align	2
.LLSDA11167:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11167-.LLSDATTD11167
.LLSDATTD11167:
	.byte	0x1
	.uleb128 .LLSDACSE11167-.LLSDACSB11167
.LLSDACSB11167:
	.uleb128 .LEHB21-.LFB11167
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L146-.LFB11167
	.uleb128 0x1
	.uleb128 .LEHB22-.LFB11167
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L147-.LFB11167
	.uleb128 0
	.uleb128 .LEHB23-.LFB11167
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE11167:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11167:
	.section	.text._ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_,comdat
	.size	_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_, .-_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, %function
_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_:
.LFB11168:
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
	bl	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
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
.LFE11168:
	.size	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	.section	.text._ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.type	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, %function
_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc:
.LFB11169:
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
	ldr	x19, [sp, 40]
	mov	x0, 1
	bl	_ZSt16__deque_buf_sizem
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11169:
	.size	_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc, .-_ZNSt11_Deque_baseIcSaIcEE18_M_deallocate_nodeEPc
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, %function
_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv:
.LFB11170:
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
	bl	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSaIPcEC1IcEERKSaIT_E
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPcED2Ev,"axG",@progbits,_ZNSaIPcED5Ev,comdat
	.align	2
	.weak	_ZNSaIPcED2Ev
	.type	_ZNSaIPcED2Ev, %function
_ZNSaIPcED2Ev:
.LFB11172:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11172:
	.size	_ZNSaIPcED2Ev, .-_ZNSaIPcED2Ev
	.weak	_ZNSaIPcED1Ev
	.set	_ZNSaIPcED1Ev,_ZNSaIPcED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, %function
_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m:
.LFB11174:
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
	bl	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPcEE10deallocateERS1_PS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, %function
_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_:
.LFB11177:
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
.LFE11177:
	.size	_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIcE7destroyIcEEvPT_
	.section	.text._ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11178:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11178:
	.size	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, %function
_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_:
.LFB11179:
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
	bl	_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE
	ldrb	w19, [x0]
	ldr	x0, [sp, 48]
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	mov	w1, w19
	strb	w1, [x0]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11179:
	.size	_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIcE9constructIcJRKcEEEvPT_DpOT0_
	.section	.text._ZNKSt5dequeIcSaIcEE4sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIcSaIcEE4sizeEv
	.type	_ZNKSt5dequeIcSaIcEE4sizeEv, %function
_ZNKSt5dequeIcSaIcEE4sizeEv:
.LFB11180:
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
	bl	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11180:
	.size	_ZNKSt5dequeIcSaIcEE4sizeEv, .-_ZNKSt5dequeIcSaIcEE4sizeEv
	.section	.text._ZNKSt5dequeIcSaIcEE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIcSaIcEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.type	_ZNKSt5dequeIcSaIcEE8max_sizeEv, %function
_ZNKSt5dequeIcSaIcEE8max_sizeEv:
.LFB11181:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	bl	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11181:
	.size	_ZNKSt5dequeIcSaIcEE8max_sizeEv, .-_ZNKSt5dequeIcSaIcEE8max_sizeEv
	.section	.text._ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, %function
_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm:
.LFB11182:
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
	bls	.L165
	mov	w2, 0
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
.L165:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11182:
	.size	_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIcSaIcEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv,comdat
	.align	2
	.weak	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, %function
_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv:
.LFB11183:
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
	mov	x0, 1
	bl	_ZSt16__deque_buf_sizem
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11183:
	.size	_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIcSaIcEE16_M_allocate_nodeEv
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB11215:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11215:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.section	.text._ZNSt15_Deque_iteratorIcRcPcEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcEC5Ev,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.type	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, %function
_ZNSt15_Deque_iteratorIcRcPcEC2Ev:
.LFB11269:
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
.LFE11269:
	.size	_ZNSt15_Deque_iteratorIcRcPcEC2Ev, .-_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.weak	_ZNSt15_Deque_iteratorIcRcPcEC1Ev
	.set	_ZNSt15_Deque_iteratorIcRcPcEC1Ev,_ZNSt15_Deque_iteratorIcRcPcEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, %function
_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m:
.LFB11271:
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
	bl	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11271:
	.size	_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPcEE8allocateERS1_m
	.section	.text._ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv,comdat
	.align	2
	.weak	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, %function
_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv:
.LFB11272:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x0, 1
	bl	_ZSt16__deque_buf_sizem
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11272:
	.size	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, %function
_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB11273:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11273:
	.size	_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPcEC2IcEERKSaIT_E,"axG",@progbits,_ZNSaIPcEC5IcEERKSaIT_E,comdat
	.align	2
	.weak	_ZNSaIPcEC2IcEERKSaIT_E
	.type	_ZNSaIPcEC2IcEERKSaIT_E, %function
_ZNSaIPcEC2IcEERKSaIT_E:
.LFB11275:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11275:
	.size	_ZNSaIPcEC2IcEERKSaIT_E, .-_ZNSaIPcEC2IcEERKSaIT_E
	.weak	_ZNSaIPcEC1IcEERKSaIT_E
	.set	_ZNSaIPcEC1IcEERKSaIT_E,_ZNSaIPcEC2IcEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPcED2Ev:
.LFB11278:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11278:
	.size	_ZN9__gnu_cxx13new_allocatorIPcED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcED1Ev,_ZN9__gnu_cxx13new_allocatorIPcED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, %function
_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m:
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
.LFE11280:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPcE10deallocateEPS1_m
	.section	.text._ZStmiRKSt15_Deque_iteratorIcRcPcES4_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIcRcPcES4_,comdat
	.align	2
	.weak	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.type	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, %function
_ZStmiRKSt15_Deque_iteratorIcRcPcES4_:
.LFB11282:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	bl	_ZNSt15_Deque_iteratorIcRcPcE14_S_buffer_sizeEv
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
	mul	x1, x2, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	sub	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 16]
	ldr	x2, [x0, 16]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	sub	x0, x2, x0
	add	x0, x1, x0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11282:
	.size	_ZStmiRKSt15_Deque_iteratorIcRcPcES4_, .-_ZStmiRKSt15_Deque_iteratorIcRcPcES4_
	.section	.text._ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.type	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, %function
_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_:
.LFB11283:
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
	bl	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
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
.LFE11283:
	.size	_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_, .-_ZNSt5dequeIcSaIcEE11_S_max_sizeERKS0_
	.section	.text._ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb,comdat
	.align	2
	.weak	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb:
.LFB11284:
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
	bls	.L186
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
	beq	.L187
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L188
.L187:
	mov	x0, 0
.L188:
	add	x0, x0, x2
	add	x0, x1, x0
	str	x0, [sp, 104]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 40]
	ldr	x1, [sp, 104]
	cmp	x1, x0
	bcs	.L189
	ldr	x0, [sp, 56]
	ldr	x3, [x0, 40]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 72]
	add	x0, x0, 8
	ldr	x2, [sp, 104]
	mov	x1, x0
	mov	x0, x3
	bl	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	b	.L190
.L189:
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
	bl	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	b	.L190
.L186:
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
	bl	_ZNSt11_Deque_baseIcSaIcEE15_M_allocate_mapEm
	str	x0, [sp, 72]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x0, x0, 1
	lsl	x1, x0, 3
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L191
	ldr	x0, [sp, 48]
	lsl	x0, x0, 3
	b	.L192
.L191:
	mov	x0, 0
.L192:
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
	bl	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	ldr	x3, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	mov	x2, x0
	mov	x0, x3
	bl	_ZNSt11_Deque_baseIcSaIcEE17_M_deallocate_mapEPPcm
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 80]
	str	x1, [x0, 8]
.L190:
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x1, [sp, 104]
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	ldr	x0, [sp, 56]
	add	x2, x0, 48
	ldr	x0, [sp, 96]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt15_Deque_iteratorIcRcPcE11_M_set_nodeEPS1_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11284:
	.size	_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
.LFB11302:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11302:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv:
.LFB11391:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 1152921504606846975
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11391:
	.size	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv:
.LFB11390:
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
	bl	_ZNK9__gnu_cxx13new_allocatorIPcE11_M_max_sizeEv
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
	beq	.L198
	ldr	x1, [sp, 32]
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bls	.L199
	bl	_ZSt28__throw_bad_array_new_lengthv
.L199:
	bl	_ZSt17__throw_bad_allocv
.L198:
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
.LFE11390:
	.size	_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPcE8allocateEmPKv
	.section	.text._ZN9__gnu_cxx13new_allocatorIPcEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPcEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIPcEC2Ev:
.LFB11393:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11393:
	.size	_ZN9__gnu_cxx13new_allocatorIPcEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPcEC1Ev,_ZN9__gnu_cxx13new_allocatorIPcEC2Ev
	.section	.text._ZSt4copyIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPcS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPcS1_ET0_T_S3_S2_, %function
_ZSt4copyIPPcS1_ET0_T_S3_S2_:
.LFB11396:
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
	bl	_ZSt12__miter_baseIPPcET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPcET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11396:
	.size	_ZSt4copyIPPcS1_ET0_T_S3_S2_, .-_ZSt4copyIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_,comdat
	.align	2
	.weak	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, %function
_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_:
.LFB11397:
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
	bl	_ZSt12__miter_baseIPPcET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIPPcET_S2_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11397:
	.size	_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPcS1_ET0_T_S3_S2_
	.section	.text._ZSt12__miter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPcET_S2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPPcET_S2_
	.type	_ZSt12__miter_baseIPPcET_S2_, %function
_ZSt12__miter_baseIPPcET_S2_:
.LFB11465:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11465:
	.size	_ZSt12__miter_baseIPPcET_S2_, .-_ZSt12__miter_baseIPPcET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11466:
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
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11466:
	.size	_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11468:
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
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPPcET_S2_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11468:
	.size	_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_baseIPPcET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPcET_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPPcET_S2_
	.type	_ZSt12__niter_baseIPPcET_S2_, %function
_ZSt12__niter_baseIPPcET_S2_:
.LFB11498:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11498:
	.size	_ZSt12__niter_baseIPPcET_S2_, .-_ZSt12__niter_baseIPPcET_S2_
	.section	.text._ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11499:
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
	bl	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11499:
	.size	_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIPPcET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIPPcET_RKS2_S2_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.type	_ZSt12__niter_wrapIPPcET_RKS2_S2_, %function
_ZSt12__niter_wrapIPPcET_RKS2_S2_:
.LFB11500:
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
.LFE11500:
	.size	_ZSt12__niter_wrapIPPcET_RKS2_S2_, .-_ZSt12__niter_wrapIPPcET_RKS2_S2_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11501:
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
	bl	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11501:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11505:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11505:
	.size	_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, %function
_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_:
.LFB11506:
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
	bl	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11506:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPcS1_ET1_T0_S3_S2_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_:
.LFB11518:
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
	beq	.L225
	ldr	x0, [sp, 56]
	lsl	x0, x0, 3
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L225:
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
.LFE11518:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPcEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, %function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_:
.LFB11519:
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
	beq	.L228
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
.L228:
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
.LFE11519:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPcEEPT_PKS4_S7_S5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11558:
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
	bne	.L232
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L232
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
.L232:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11558:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11581:
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
.LFE11581:
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
