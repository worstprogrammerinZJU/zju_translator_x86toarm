	.arch armv8-a
	.file	"B_Make_it_Divisible_by_25.cpp"
	.text
	.section	.text._ZNSt7__cxx119to_stringEx,"axG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
	.align	2
	.weak	_ZNSt7__cxx119to_stringEx
	.type	_ZNSt7__cxx119to_stringEx, %function
_ZNSt7__cxx119to_stringEx:
.LFB1744:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1744
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x8
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	lsr	x0, x0, 63
	strb	w0, [sp, 79]
	ldrb	w0, [sp, 79]
	cmp	w0, 0
	beq	.L2
	ldr	x0, [sp, 40]
	neg	x0, x0
	b	.L3
.L2:
	ldr	x0, [sp, 40]
.L3:
	str	x0, [sp, 64]
	mov	w1, 10
	ldr	x0, [sp, 64]
	bl	_ZNSt8__detail14__to_chars_lenIyEEjT_i
	str	w0, [sp, 60]
	ldrb	w1, [sp, 79]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	uxtw	x20, w0
	add	x0, sp, 56
	bl	_ZNSaIcEC1Ev
	add	x0, sp, 56
	mov	x3, x0
	mov	w2, 45
	mov	x1, x20
	mov	x0, x19
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
.LEHE0:
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	ldrb	w0, [sp, 79]
	mov	x1, x0
	mov	x0, x19
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE1:
	ldr	x2, [sp, 64]
	ldr	w1, [sp, 60]
	bl	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	b	.L9
.L7:
	mov	x19, x0
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.L8:
	mov	x20, x0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x20
	bl	_Unwind_Resume
.LEHE2:
.L9:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1744:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt7__cxx119to_stringEx,"aG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
.LLSDA1744:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1744-.LLSDACSB1744
.LLSDACSB1744:
	.uleb128 .LEHB0-.LFB1744
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L7-.LFB1744
	.uleb128 0
	.uleb128 .LEHB1-.LFB1744
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L8-.LFB1744
	.uleb128 0
	.uleb128 .LEHB2-.LFB1744
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1744:
	.section	.text._ZNSt7__cxx119to_stringEx,"axG",@progbits,_ZNSt7__cxx119to_stringEx,comdat
	.size	_ZNSt7__cxx119to_stringEx, .-_ZNSt7__cxx119to_stringEx
	.section	.text._ZNSt8__detail14__to_chars_lenIyEEjT_i,"axG",@progbits,_ZNSt8__detail14__to_chars_lenIyEEjT_i,comdat
	.align	2
	.weak	_ZNSt8__detail14__to_chars_lenIyEEjT_i
	.type	_ZNSt8__detail14__to_chars_lenIyEEjT_i, %function
_ZNSt8__detail14__to_chars_lenIyEEjT_i:
.LFB1746:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 4]
	mul	w0, w0, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 4]
	ldr	w1, [sp, 40]
	mul	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	uxtw	x0, w0
	str	x0, [sp, 24]
.L16:
	ldr	w0, [sp, 4]
	uxtw	x0, w0
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bcs	.L11
	ldr	w0, [sp, 44]
	b	.L12
.L11:
	ldr	w0, [sp, 40]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bcs	.L13
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	b	.L12
.L13:
	ldr	w0, [sp, 36]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bcs	.L14
	ldr	w0, [sp, 44]
	add	w0, w0, 2
	b	.L12
.L14:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcs	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 3
	b	.L12
.L15:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	udiv	x0, x1, x0
	str	x0, [sp, 8]
	ldr	w0, [sp, 44]
	add	w0, w0, 4
	str	w0, [sp, 44]
	b	.L16
.L12:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1746:
	.size	_ZNSt8__detail14__to_chars_lenIyEEjT_i, .-_ZNSt8__detail14__to_chars_lenIyEEjT_i
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
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
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB3:
	bl	_ZNSirsERx
	b	.L18
.L41:
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERx
	ldr	x0, [sp, 80]
	add	x1, sp, 40
	mov	x8, x1
	bl	_ZNSt7__cxx119to_stringEx
.LEHE3:
	add	x0, sp, 40
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	str	w0, [sp, 76]
	strb	wzr, [sp, 111]
	str	wzr, [sp, 72]
	add	x0, sp, 40
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	sub	w0, w0, #1
	str	w0, [sp, 104]
	b	.L19
.L29:
	ldrb	w0, [sp, 111]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldrsw	x1, [sp, 104]
	add	x0, sp, 40
.LEHB4:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 53
	bne	.L20
	mov	w0, 1
	b	.L21
.L20:
	mov	w0, 0
.L21:
	cmp	w0, 0
	beq	.L22
	mov	w0, 1
	strb	w0, [sp, 111]
	b	.L23
.L22:
	ldrb	w0, [sp, 111]
	cmp	w0, 0
	beq	.L24
	ldrsw	x1, [sp, 104]
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 50
	beq	.L25
	ldrsw	x1, [sp, 104]
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 55
	bne	.L24
.L25:
	mov	w0, 1
	b	.L26
.L24:
	mov	w0, 0
.L26:
	cmp	w0, 0
	beq	.L27
	add	x1, sp, 72
	add	x0, sp, 76
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 76]
	b	.L28
.L27:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L23:
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	str	w0, [sp, 104]
.L19:
	ldr	w0, [sp, 104]
	cmp	w0, 0
	bge	.L29
.L28:
	strb	wzr, [sp, 111]
	str	wzr, [sp, 72]
	add	x0, sp, 40
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	sub	w0, w0, #1
	str	w0, [sp, 100]
	b	.L30
.L40:
	ldrb	w0, [sp, 111]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	ldrsw	x1, [sp, 100]
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L31
	mov	w0, 1
	b	.L32
.L31:
	mov	w0, 0
.L32:
	cmp	w0, 0
	beq	.L33
	mov	w0, 1
	strb	w0, [sp, 111]
	b	.L34
.L33:
	ldrb	w0, [sp, 111]
	cmp	w0, 0
	beq	.L35
	ldrsw	x1, [sp, 100]
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 53
	beq	.L36
	ldrsw	x1, [sp, 100]
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L35
.L36:
	mov	w0, 1
	b	.L37
.L35:
	mov	w0, 0
.L37:
	cmp	w0, 0
	beq	.L38
	add	x1, sp, 72
	add	x0, sp, 76
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 76]
	b	.L39
.L38:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L34:
	ldr	w0, [sp, 100]
	sub	w0, w0, #1
	str	w0, [sp, 100]
.L30:
	ldr	w0, [sp, 100]
	cmp	w0, 0
	bge	.L40
.L39:
	ldr	w0, [sp, 76]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE4:
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L18:
	ldr	x0, [sp, 88]
	sub	x1, x0, #1
	str	x1, [sp, 88]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L41
	mov	w0, 0
	b	.L45
.L44:
	mov	x19, x0
	add	x0, sp, 40
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
.LEHB5:
	bl	_Unwind_Resume
.LEHE5:
.L45:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.section	.gcc_except_table,"a",@progbits
.LLSDA9696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9696-.LLSDACSB9696
.LLSDACSB9696:
	.uleb128 .LEHB3-.LFB9696
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB9696
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB9696
	.uleb128 0
	.uleb128 .LEHB5-.LFB9696
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE9696:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB9856:
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
.LFE9856:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_:
.LFB9858:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9858
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 47]
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 56]
.LEHB6:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE6:
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB7:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc
.LEHE7:
	b	.L50
.L49:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB8:
	bl	_Unwind_Resume
.LEHE8:
.L50:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9858:
	.section	.gcc_except_table
.LLSDA9858:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9858-.LLSDACSB9858
.LLSDACSB9858:
	.uleb128 .LEHB6-.LFB9858
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB9858
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L49-.LFB9858
	.uleb128 0
	.uleb128 .LEHB8-.LFB9858
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE9858:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.weak	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	.section	.rodata._ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits,"aG",@progbits,_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits,comdat
	.align	3
	.type	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits, %gnu_unique_object
	.size	_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits, 201
_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.section	.text._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_,"axG",@progbits,_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_,comdat
	.align	2
	.weak	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	.type	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_, %function
_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_:
.LFB9870:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	b	.L52
.L53:
	ldr	x2, [sp, 8]
	lsr	x1, x2, 2
	mov	x0, 62915
	movk	x0, 0x5c28, lsl 16
	movk	x0, 0xc28f, lsl 32
	movk	x0, 0x28f5, lsl 48
	umulh	x0, x1, x0
	lsr	x1, x0, 2
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x1, x2, x0
	lsl	x0, x1, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	lsr	x1, x0, 2
	mov	x0, 62915
	movk	x0, 0x5c28, lsl 16
	movk	x0, 0xc28f, lsl 32
	movk	x0, 0x28f5, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 2
	str	x0, [sp, 8]
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	ldr	w0, [sp, 60]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	adrp	x2, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	add	x2, x2, :lo12:_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	uxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	adrp	x1, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	add	x2, x1, :lo12:_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	ldr	x1, [sp, 40]
	add	x1, x2, x1
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 60]
	sub	w0, w0, #2
	str	w0, [sp, 60]
.L52:
	ldr	x0, [sp, 8]
	cmp	x0, 99
	bhi	.L53
	ldr	x0, [sp, 8]
	cmp	x0, 9
	bls	.L54
	ldr	x0, [sp, 8]
	lsl	x0, x0, 1
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	adrp	x2, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	add	x2, x2, :lo12:_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	adrp	x0, _ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	add	x1, x0, :lo12:_ZZNSt8__detail18__to_chars_10_implIyEEvPcjT_E8__digits
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 24]
	strb	w1, [x0]
	b	.L56
.L54:
	ldr	x0, [sp, 8]
	and	w0, w0, 255
	add	w0, w0, 48
	and	w1, w0, 255
	ldr	x0, [sp, 24]
	strb	w1, [x0]
.L56:
	nop
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9870:
	.size	_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_, .-_ZNSt8__detail18__to_chars_10_implIyEEvPcjT_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB10385:
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
	bge	.L58
	ldr	x0, [sp]
	b	.L59
.L58:
	ldr	x0, [sp, 8]
.L59:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10385:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11449:
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
	bne	.L62
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L62
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
.L62:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11449:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB11472:
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
.LFE11472:
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
