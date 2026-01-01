	.arch armv8-a
	.file	"A_Letter.cpp"
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
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, %function
_ZdlPvS_:
.LFB40:
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
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	2
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, %function
_ZSt17__size_to_integerm:
.LFB371:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE371:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
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
	bcs	.L7
	ldr	x0, [sp]
	b	.L8
.L7:
	ldr	x0, [sp, 8]
.L8:
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
	.string	"r"
	.align	3
.LC1:
	.string	"input.txt"
	.align	3
.LC2:
	.string	"w"
	.align	3
.LC3:
	.string	"output.txt"
	.text
	.align	2
	.global	_Z5setupv
	.type	_Z5setupv, %function
_Z5setupv:
.LFB9696:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 0
	bl	_ZNSt8ios_base15sync_with_stdioEb
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	add	x0, x0, 16
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	add	x0, x0, 8
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	adrp	x0, :got:stdin
	ldr	x0, [x0, #:got_lo12:stdin]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	freopen
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	freopen
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9696:
	.size	_Z5setupv, .-_Z5setupv
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9697:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9697
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -128
	.cfi_offset 20, -120
.LEHB0:
	bl	_Z5setupv
	mov	w0, 2147483647
	str	w0, [sp, 84]
	mov	w0, 2147483647
	str	w0, [sp, 80]
	mov	w0, -2147483648
	str	w0, [sp, 76]
	mov	w0, -2147483648
	str	w0, [sp, 72]
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 88
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
.LEHE0:
	ldr	w0, [sp, 92]
	sxtw	x19, w0
	ldr	w0, [sp, 88]
	sxtw	x20, w0
	add	x0, sp, 120
	bl	_ZNSaIcEC1Ev
	add	x1, sp, 120
	add	x0, sp, 96
	mov	x2, x1
	mov	x1, x20
.LEHB1:
	bl	_ZNSt6vectorIcSaIcEEC1EmRKS0_
.LEHE1:
	add	x0, sp, 128
	bl	_ZNSaISt6vectorIcSaIcEEEC1Ev
	add	x2, sp, 128
	add	x1, sp, 96
	add	x0, sp, 48
	mov	x3, x2
	mov	x2, x1
	mov	x1, x19
.LEHB2:
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EmRKS1_RKS2_
.LEHE2:
	add	x0, sp, 128
	bl	_ZNSaISt6vectorIcSaIcEEED1Ev
	add	x0, sp, 96
	bl	_ZNSt6vectorIcSaIcEED1Ev
	add	x0, sp, 120
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 44]
	b	.L11
.L15:
	str	wzr, [sp, 40]
	b	.L12
.L14:
	ldr	w0, [sp, 44]
	sxtw	x1, w0
	add	x0, sp, 48
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	mov	x2, x0
	ldr	w0, [sp, 40]
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIcSaIcEEixEm
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB3:
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	ldr	w0, [sp, 44]
	sxtw	x1, w0
	add	x0, sp, 48
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	mov	x2, x0
	ldr	w0, [sp, 40]
	sxtw	x0, w0
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIcSaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 42
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L13
	add	x1, sp, 44
	add	x0, sp, 84
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 84]
	add	x1, sp, 40
	add	x0, sp, 80
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 80]
	add	x1, sp, 44
	add	x0, sp, 76
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 76]
	add	x1, sp, 40
	add	x0, sp, 72
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 72]
.L13:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L12:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 88]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 92]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 84]
	str	w0, [sp, 140]
	b	.L16
.L19:
	ldr	w0, [sp, 80]
	str	w0, [sp, 136]
	b	.L17
.L18:
	ldrsw	x1, [sp, 140]
	add	x0, sp, 48
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	mov	x2, x0
	ldrsw	x0, [sp, 136]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSt6vectorIcSaIcEEixEm
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
.L17:
	ldr	w0, [sp, 72]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	ble	.L18
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE3:
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L16:
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	ble	.L19
	mov	w19, 0
	add	x0, sp, 48
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	mov	w0, w19
	b	.L27
.L25:
	mov	x19, x0
	add	x0, sp, 128
	bl	_ZNSaISt6vectorIcSaIcEEED1Ev
	add	x0, sp, 96
	bl	_ZNSt6vectorIcSaIcEED1Ev
	b	.L22
.L24:
	mov	x19, x0
.L22:
	add	x0, sp, 120
	bl	_ZNSaIcED1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.L26:
	mov	x19, x0
	add	x0, sp, 48
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE4:
.L27:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9697:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9697:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9697-.LLSDACSB9697
.LLSDACSB9697:
	.uleb128 .LEHB0-.LFB9697
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9697
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L24-.LFB9697
	.uleb128 0
	.uleb128 .LEHB2-.LFB9697
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L25-.LFB9697
	.uleb128 0
	.uleb128 .LEHB3-.LFB9697
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L26-.LFB9697
	.uleb128 0
	.uleb128 .LEHB4-.LFB9697
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9697:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.type	_ZNSt6vectorIcSaIcEEC2EmRKS0_, %function
_ZNSt6vectorIcSaIcEEC2EmRKS0_:
.LFB10387:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10387
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
.LEHB5:
	bl	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
.LEHE5:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB6:
	bl	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
.LEHE6:
	b	.L31
.L30:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIcSaIcEED2Ev
	mov	x0, x19
.LEHB7:
	bl	_Unwind_Resume
.LEHE7:
.L31:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10387:
	.section	.gcc_except_table
.LLSDA10387:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10387-.LLSDACSB10387
.LLSDACSB10387:
	.uleb128 .LEHB5-.LFB10387
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB10387
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L30-.LFB10387
	.uleb128 0
	.uleb128 .LEHB7-.LFB10387
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE10387:
	.section	.text._ZNSt6vectorIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIcSaIcEEC2EmRKS0_, .-_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.weak	_ZNSt6vectorIcSaIcEEC1EmRKS0_
	.set	_ZNSt6vectorIcSaIcEEC1EmRKS0_,_ZNSt6vectorIcSaIcEEC2EmRKS0_
	.section	.text._ZNSt6vectorIcSaIcEED2Ev,"axG",@progbits,_ZNSt6vectorIcSaIcEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEED2Ev
	.type	_ZNSt6vectorIcSaIcEED2Ev, %function
_ZNSt6vectorIcSaIcEED2Ev:
.LFB10390:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10390
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIcSaIcEED2Ev
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
.LFE10390:
	.section	.gcc_except_table
.LLSDA10390:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10390-.LLSDACSB10390
.LLSDACSB10390:
.LLSDACSE10390:
	.section	.text._ZNSt6vectorIcSaIcEED2Ev,"axG",@progbits,_ZNSt6vectorIcSaIcEED5Ev,comdat
	.size	_ZNSt6vectorIcSaIcEED2Ev, .-_ZNSt6vectorIcSaIcEED2Ev
	.weak	_ZNSt6vectorIcSaIcEED1Ev
	.set	_ZNSt6vectorIcSaIcEED1Ev,_ZNSt6vectorIcSaIcEED2Ev
	.section	.text._ZNSaISt6vectorIcSaIcEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIcSaIcEEEC5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIcSaIcEEEC2Ev
	.type	_ZNSaISt6vectorIcSaIcEEEC2Ev, %function
_ZNSaISt6vectorIcSaIcEEEC2Ev:
.LFB10393:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10393:
	.size	_ZNSaISt6vectorIcSaIcEEEC2Ev, .-_ZNSaISt6vectorIcSaIcEEEC2Ev
	.weak	_ZNSaISt6vectorIcSaIcEEEC1Ev
	.set	_ZNSaISt6vectorIcSaIcEEEC1Ev,_ZNSaISt6vectorIcSaIcEEEC2Ev
	.section	.text._ZNSaISt6vectorIcSaIcEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIcSaIcEEED5Ev,comdat
	.align	2
	.weak	_ZNSaISt6vectorIcSaIcEEED2Ev
	.type	_ZNSaISt6vectorIcSaIcEEED2Ev, %function
_ZNSaISt6vectorIcSaIcEEED2Ev:
.LFB10396:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10396:
	.size	_ZNSaISt6vectorIcSaIcEEED2Ev, .-_ZNSaISt6vectorIcSaIcEEED2Ev
	.weak	_ZNSaISt6vectorIcSaIcEEED1Ev
	.set	_ZNSaISt6vectorIcSaIcEEED1Ev,_ZNSaISt6vectorIcSaIcEEED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_:
.LFB10399:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10399
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
	str	x3, [sp, 32]
	ldr	x19, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 48]
.LEHB8:
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_
.LEHE8:
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB9:
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_
.LEHE9:
	b	.L38
.L37:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
.L38:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	.uleb128 .LEHB8-.LFB10399
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB10399
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L37-.LFB10399
	.uleb128 0
	.uleb128 .LEHB10-.LFB10399
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE10399:
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EEC5EmRKS1_RKS2_,comdat
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EmRKS1_RKS2_
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EEC1EmRKS1_RKS2_,_ZNSt6vectorIS_IcSaIcEESaIS1_EEC2EmRKS1_RKS2_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev:
.LFB10402:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10402
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x19, [x0]
	ldr	x0, [sp, 40]
	ldr	x20, [x0, 8]
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
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
.LFE10402:
	.section	.gcc_except_table
.LLSDA10402:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10402-.LLSDACSB10402
.LLSDACSB10402:
.LLSDACSE10402:
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev
	.set	_ZNSt6vectorIS_IcSaIcEESaIS1_EED1Ev,_ZNSt6vectorIS_IcSaIcEESaIS1_EED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm:
.LFB10404:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [x0]
	ldr	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10404:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EEixEm
	.section	.text._ZNSt6vectorIcSaIcEEixEm,"axG",@progbits,_ZNSt6vectorIcSaIcEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEEixEm
	.type	_ZNSt6vectorIcSaIcEEixEm, %function
_ZNSt6vectorIcSaIcEEixEm:
.LFB10405:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	add	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10405:
	.size	_ZNSt6vectorIcSaIcEEixEm, .-_ZNSt6vectorIcSaIcEEixEm
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB10406:
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
	bge	.L45
	ldr	x0, [sp]
	b	.L46
.L45:
	ldr	x0, [sp, 8]
.L46:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10406:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, %function
_ZSt3maxIiERKT_S2_S2_:
.LFB10407:
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
	bge	.L48
	ldr	x0, [sp]
	b	.L49
.L48:
	ldr	x0, [sp, 8]
.L49:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10407:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, %function
_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_:
.LFB10735:
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
	mov	x8, x19
	ldr	x0, [sp, 40]
	bl	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10735:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.section	.rodata
	.align	3
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_:
.LFB10800:
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
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaIcEC1ERKS_
	add	x0, sp, 56
	bl	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaIcED1Ev
	cmp	w19, 0
	beq	.L53
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	_ZSt20__throw_length_errorPKc
.L53:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10800:
	.size	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev:
.LFB10803:
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
.LFE10803:
	.size	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_, %function
_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_:
.LFB10805:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10805
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
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB11:
	bl	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
.LEHE11:
	b	.L59
.L58:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	mov	x0, x19
.LEHB12:
	bl	_Unwind_Resume
.LEHE12:
.L59:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10805:
	.section	.gcc_except_table
.LLSDA10805:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10805-.LLSDACSB10805
.LLSDACSB10805:
	.uleb128 .LEHB11-.LFB10805
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L58-.LFB10805
	.uleb128 0
	.uleb128 .LEHB12-.LFB10805
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE10805:
	.section	.text._ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_, .-_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIcSaIcEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIcSaIcEEC1EmRKS0_,_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEED2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEED2Ev, %function
_ZNSt12_Vector_baseIcSaIcEED2Ev:
.LFB10808:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10808
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10808:
	.section	.gcc_except_table
.LLSDA10808:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10808-.LLSDACSB10808
.LLSDACSB10808:
.LLSDACSE10808:
	.section	.text._ZNSt12_Vector_baseIcSaIcEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIcSaIcEED2Ev, .-_ZNSt12_Vector_baseIcSaIcEED2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEED1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEED1Ev,_ZNSt12_Vector_baseIcSaIcEED2Ev
	.section	.text._ZNSt6vectorIcSaIcEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIcSaIcEE21_M_default_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
	.type	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm, %function
_ZNSt6vectorIcSaIcEE21_M_default_initializeEm:
.LFB10810:
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
	ldr	x0, [sp, 40]
	bl	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x2, x0
	ldr	x1, [sp, 32]
	mov	x0, x19
	bl	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10810:
	.size	_ZNSt6vectorIcSaIcEE21_M_default_initializeEm, .-_ZNSt6vectorIcSaIcEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB10811:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10811:
	.size	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPccEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPccEvT_S1_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E, %function
_ZSt8_DestroyIPccEvT_S1_RSaIT0_E:
.LFB10812:
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
	bl	_ZSt8_DestroyIPcEvT_S1_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10812:
	.size	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev:
.LFB10814:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10814:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev:
.LFB10817:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10817:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB10819:
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
	add	x0, sp, 56
	ldr	x1, [sp, 32]
	bl	_ZNSaISt6vectorIcSaIcEEEC1ERKS2_
	add	x0, sp, 56
	bl	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	mov	x1, x0
	ldr	x0, [sp, 40]
	cmp	x0, x1
	cset	w0, hi
	and	w19, w0, 255
	add	x0, sp, 56
	bl	_ZNSaISt6vectorIcSaIcEEED1Ev
	cmp	w19, 0
	beq	.L68
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	_ZSt20__throw_length_errorPKc
.L68:
	ldr	x0, [sp, 40]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10819:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev:
.LFB10822:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSaISt6vectorIcSaIcEEED2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10822:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC5EmRKS3_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_:
.LFB10824:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10824
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
	ldr	x1, [sp, 40]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB13:
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm
.LEHE13:
	b	.L74
.L73:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	mov	x0, x19
.LEHB14:
	bl	_Unwind_Resume
.LEHE14:
.L74:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10824:
	.section	.gcc_except_table
.LLSDA10824:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10824-.LLSDACSB10824
.LLSDACSB10824:
	.uleb128 .LEHB13-.LFB10824
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L73-.LFB10824
	.uleb128 0
	.uleb128 .LEHB14-.LFB10824
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE10824:
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC5EmRKS3_,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC1EmRKS3_
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC1EmRKS3_,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EEC2EmRKS3_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev:
.LFB10827:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10827
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x3, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	sub	x0, x1, x0
	asr	x1, x0, 3
	mov	x0, -6148914691236517206
	movk	x0, 0xaaab, lsl 0
	mul	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implD1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10827:
	.section	.gcc_except_table
.LLSDA10827:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10827-.LLSDACSB10827
.LLSDACSB10827:
.LLSDACSE10827:
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EED2Ev
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_:
.LFB10829:
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
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	mov	x3, x0
	ldr	x2, [sp, 40]
	ldr	x1, [sp, 48]
	mov	x0, x19
	bl	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10829:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE18_M_fill_initializeEmRKS1_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB10830:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10830:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E, %function
_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E:
.LFB10831:
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
	bl	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10831:
	.size	_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt6vectorIcSaIcEES2_EvT_S4_RSaIT0_E
	.section	.text._ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, %function
_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_:
.LFB10992:
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
	bl	_ZNSaIcEC1ERKS_
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10992:
	.size	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.type	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, %function
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
.LFB10998:
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
.LFE10998:
	.size	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm, .-_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	.section	.text._ZNSt16allocator_traitsISaIcEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8allocateERS0_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, %function
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
.LFB10999:
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
.LFE10999:
	.size	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	.section	.text._ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_:
.LFB11027:
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
.LFE11027:
	.size	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_, %function
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_:
.LFB11029:
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
	bl	_ZNSaIcEC2ERKS_
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11029:
	.size	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm, %function
_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm:
.LFB11031:
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
	bl	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 16]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11031:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	.type	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm, %function
_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm:
.LFB11032:
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
	cmp	x0, 0
	beq	.L91
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
.L91:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11032:
	.size	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm, .-_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm
	.section	.text._ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E:
.LFB11033:
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
	bl	_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11033:
	.size	_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPcEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPcEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPcEvT_S1_
	.type	_ZSt8_DestroyIPcEvT_S1_, %function
_ZSt8_DestroyIPcEvT_S1_:
.LFB11034:
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
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11034:
	.size	_ZSt8_DestroyIPcEvT_S1_, .-_ZSt8_DestroyIPcEvT_S1_
	.section	.text._ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_,comdat
	.align	2
	.weak	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_, %function
_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_:
.LFB11035:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
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
.LFE11035:
	.size	_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIS_IcSaIcEESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaISt6vectorIcSaIcEEEC2ERKS2_,"axG",@progbits,_ZNSaISt6vectorIcSaIcEEEC5ERKS2_,comdat
	.align	2
	.weak	_ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	.type	_ZNSaISt6vectorIcSaIcEEEC2ERKS2_, %function
_ZNSaISt6vectorIcSaIcEEEC2ERKS2_:
.LFB11037:
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
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11037:
	.size	_ZNSaISt6vectorIcSaIcEEEC2ERKS2_, .-_ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	.weak	_ZNSaISt6vectorIcSaIcEEEC1ERKS2_
	.set	_ZNSaISt6vectorIcSaIcEEEC1ERKS2_,_ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC5ERKS3_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_:
.LFB11040:
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
	bl	_ZNSaISt6vectorIcSaIcEEEC2ERKS2_
	ldr	x0, [sp, 24]
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11040:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC1ERKS3_,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE12_Vector_implC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm:
.LFB11042:
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
	bl	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x1, [sp, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [sp, 24]
	str	x1, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11042:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m:
.LFB11043:
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
	cmp	x0, 0
	beq	.L102
	ldr	x0, [sp, 40]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	bl	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
.L102:
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11043:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.align	2
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, %function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E:
.LFB11044:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11044:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt6vectorIcSaIcEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	.type	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_, %function
_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_:
.LFB11045:
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
	bl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11045:
	.size	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_, .-_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, %function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB11151:
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
.LFE11151:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB11153:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 9223372036854775807
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11153:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
.LFB11152:
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
	beq	.L111
	bl	_ZSt17__throw_bad_allocv
.L111:
	ldr	x0, [sp, 32]
	bl	_Znwm
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11152:
	.size	_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	.section	.text._ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, %function
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB11183:
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
.LFE11183:
	.size	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev:
.LFB11185:
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
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11185:
	.size	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm:
.LFB11187:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L117
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	b	.L119
.L117:
	mov	x0, 0
.L119:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11187:
	.size	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm, .-_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPcmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPcmET_S1_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPcmET_S1_T0_, %function
_ZSt25__uninitialized_default_nIPcmET_S1_T0_:
.LFB11188:
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
	bl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11188:
	.size	_ZSt25__uninitialized_default_nIPcmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPcmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_:
.LFB11189:
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
.LFE11189:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_, %function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_:
.LFB11190:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11190:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8max_sizeERKS3_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC5ERKS4_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_:
.LFB11192:
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
.LFE11192:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1ERKS4_
	.set	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC1ERKS4_,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEEC2ERKS4_
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB11195:
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
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11195:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm, %function
_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm:
.LFB11197:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L128
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	b	.L130
.L128:
	mov	x0, 0
.L130:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11197:
	.size	_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m, %function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m:
.LFB11198:
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
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11198:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE10deallocateERS3_PS2_m
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_, %function
_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_:
.LFB11199:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11199:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt6vectorIcSaIcEEmS2_ET_S4_T0_RKT1_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_, %function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_:
.LFB11200:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	b	.L135
.L136:
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	bl	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 24]
.L135:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bne	.L136
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11200:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIcSaIcEEEEvT_S6_
	.section	.text._ZSt11__addressofIcEPT_RS0_,"axG",@progbits,_ZSt11__addressofIcEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofIcEPT_RS0_
	.type	_ZSt11__addressofIcEPT_RS0_, %function
_ZSt11__addressofIcEPT_RS0_:
.LFB11201:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11201:
	.size	_ZSt11__addressofIcEPT_RS0_, .-_ZSt11__addressofIcEPT_RS0_
	.section	.text._ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.align	2
	.weak	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_, %function
_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB11272:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	w0, w1
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11272:
	.size	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
.LFB11284:
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
.LFE11284:
	.size	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_:
.LFB11285:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L144
	ldr	x0, [sp, 24]
	bl	_ZSt11__addressofIcEPT_RS0_
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	_ZSt10_ConstructIcJEEvPT_DpOT0_
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	ldr	x2, [sp, 40]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	str	x0, [sp, 24]
.L144:
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11285:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcmEET_S3_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv:
.LFB11286:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11286:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m,comdat
	.align	2
	.weak	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m, %function
_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m:
.LFB11287:
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
	bl	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11287:
	.size	_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt6vectorIcSaIcEEEE8allocateERS3_m
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m:
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
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
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
.LFE11288:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE10deallocateEPS3_m
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,comdat
	.align	2
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_, %function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_:
.LFB11289:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11289
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
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	b	.L153
.L154:
	ldr	x0, [sp, 72]
	bl	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	ldr	x1, [sp, 40]
.LEHB15:
	bl	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
.LEHE15:
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x0, 24
	str	x0, [sp, 72]
.L153:
	ldr	x0, [sp, 48]
	cmp	x0, 0
	bne	.L154
	ldr	x0, [sp, 72]
	b	.L160
.L158:
	bl	__cxa_begin_catch
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
.LEHB16:
	bl	_ZSt8_DestroyIPSt6vectorIcSaIcEEEvT_S4_
	bl	__cxa_rethrow
.LEHE16:
.L159:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB17:
	bl	_Unwind_Resume
.LEHE17:
.L160:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11289:
	.section	.gcc_except_table
	.align	2
.LLSDA11289:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11289-.LLSDATTD11289
.LLSDATTD11289:
	.byte	0x1
	.uleb128 .LLSDACSE11289-.LLSDACSB11289
.LLSDACSB11289:
	.uleb128 .LEHB15-.LFB11289
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L158-.LFB11289
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB11289
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L159-.LFB11289
	.uleb128 0
	.uleb128 .LEHB17-.LFB11289
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11289:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11289:
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_,comdat
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIcSaIcEEmS4_EET_S6_T0_RKT1_
	.section	.text._ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_,comdat
	.align	2
	.weak	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	.type	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_, %function
_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_:
.LFB11290:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11290:
	.size	_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_, .-_ZSt11__addressofISt6vectorIcSaIcEEEPT_RS3_
	.section	.text._ZSt8_DestroyISt6vectorIcSaIcEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_,comdat
	.align	2
	.weak	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	.type	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_, %function
_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_:
.LFB11291:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	_ZNSt6vectorIcSaIcEED1Ev
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11291:
	.size	_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_, .-_ZSt8_DestroyISt6vectorIcSaIcEEEvPT_
	.section	.text._ZSt10_ConstructIcJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIcJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructIcJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIcJEEvPT_DpOT0_, %function
_ZSt10_ConstructIcJEEvPT_DpOT0_:
.LFB11396:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11396:
	.size	_ZSt10_ConstructIcJEEvPT_DpOT0_, .-_ZSt10_ConstructIcJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPcmcET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPcmcET_S1_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPcmcET_S1_T0_RKT1_, %function
_ZSt6fill_nIPcmcET_S1_T0_RKT1_:
.LFB11397:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	ldr	x19, [sp, 72]
	ldr	x0, [sp, 64]
	bl	_ZSt17__size_to_integerm
	mov	x20, x0
	add	x0, sp, 72
	bl	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	mov	w3, w21
	ldr	x2, [sp, 56]
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11397:
	.size	_ZSt6fill_nIPcmcET_S1_T0_RKT1_, .-_ZSt6fill_nIPcmcET_S1_T0_RKT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv:
.LFB11398:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	mov	x0, 6148914691236517205
	movk	x0, 0x555, lsl 48
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11398:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv, %function
_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv:
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
	bl	_ZNK9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE11_M_max_sizeEv
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
	beq	.L170
	ldr	x1, [sp, 32]
	mov	x0, -6148914691236517206
	movk	x0, 0xaaa, lsl 48
	cmp	x1, x0
	bls	.L171
	bl	_ZSt28__throw_bad_array_new_lengthv
.L171:
	bl	_ZSt17__throw_bad_allocv
.L170:
	ldr	x1, [sp, 32]
	mov	x0, x1
	lsl	x0, x0, 1
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
.LFE11399:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6vectorIcSaIcEEE8allocateEmPKv
	.section	.text._ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_, %function
_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_:
.LFB11400:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11400
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x0, [sp, 48]
	bl	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	mov	x21, x0
	ldr	x19, [sp, 56]
	mov	x1, x19
	mov	x0, 24
	bl	_ZnwmPv
	mov	x20, x0
	mov	x1, x21
	mov	x0, x20
.LEHB18:
	bl	_ZNSt6vectorIcSaIcEEC1ERKS1_
.LEHE18:
	b	.L176
.L175:
	mov	x21, x0
	mov	x1, x19
	mov	x0, x20
	bl	_ZdlPvS_
	mov	x0, x21
.LEHB19:
	bl	_Unwind_Resume
.LEHE19:
.L176:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11400:
	.section	.gcc_except_table
.LLSDA11400:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11400-.LLSDACSB11400
.LLSDACSB11400:
	.uleb128 .LEHB18-.LFB11400
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L175-.LFB11400
	.uleb128 0
	.uleb128 .LEHB19-.LFB11400
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE11400:
	.section	.text._ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt6vectorIcSaIcEEJRKS2_EEvPT_DpOT0_
	.section	.text._ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag, %function
_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB11468:
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
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L178
	ldr	x0, [sp, 40]
	b	.L179
.L178:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	ldr	x2, [sp, 24]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	_ZSt8__fill_aIPccEvT_S1_RKT0_
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
.L179:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11468:
	.size	_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPcmcET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE, %function
_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB11469:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11469:
	.size	_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt6vectorIcSaIcEEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNSt6vectorIcSaIcEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5ERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIcSaIcEEC2ERKS1_
	.type	_ZNSt6vectorIcSaIcEEC2ERKS1_, %function
_ZNSt6vectorIcSaIcEEC2ERKS1_:
.LFB11471:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11471
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	ldr	x19, [sp, 56]
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIcSaIcEE4sizeEv
	mov	x20, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x1, x0
	add	x0, sp, 72
	mov	x8, x0
	mov	x0, x1
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	add	x0, sp, 72
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
.LEHB20:
	bl	_ZNSt12_Vector_baseIcSaIcEEC2EmRKS0_
.LEHE20:
	add	x0, sp, 72
	bl	_ZNSaIcED1Ev
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIcSaIcEE5beginEv
	mov	x20, x0
	ldr	x0, [sp, 48]
	bl	_ZNKSt6vectorIcSaIcEE3endEv
	mov	x21, x0
	ldr	x0, [sp, 56]
	ldr	x19, [x0]
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	mov	x3, x0
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
.LEHB21:
	bl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
.LEHE21:
	mov	x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0, 8]
	b	.L187
.L185:
	mov	x19, x0
	add	x0, sp, 72
	bl	_ZNSaIcED1Ev
	mov	x0, x19
.LEHB22:
	bl	_Unwind_Resume
.L186:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt12_Vector_baseIcSaIcEED2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE22:
.L187:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11471:
	.section	.gcc_except_table
.LLSDA11471:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11471-.LLSDACSB11471
.LLSDACSB11471:
	.uleb128 .LEHB20-.LFB11471
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L185-.LFB11471
	.uleb128 0
	.uleb128 .LEHB21-.LFB11471
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L186-.LFB11471
	.uleb128 0
	.uleb128 .LEHB22-.LFB11471
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE11471:
	.section	.text._ZNSt6vectorIcSaIcEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIcSaIcEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIcSaIcEEC2ERKS1_, .-_ZNSt6vectorIcSaIcEEC2ERKS1_
	.weak	_ZNSt6vectorIcSaIcEEC1ERKS1_
	.set	_ZNSt6vectorIcSaIcEEC1ERKS1_,_ZNSt6vectorIcSaIcEEC2ERKS1_
	.section	.text._ZSt8__fill_aIPccEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPccEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPccEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPccEvT_S1_RKT0_, %function
_ZSt8__fill_aIPccEvT_S1_RKT0_:
.LFB11502:
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
	bl	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11502:
	.size	_ZSt8__fill_aIPccEvT_S1_RKT0_, .-_ZSt8__fill_aIPccEvT_S1_RKT0_
	.section	.text._ZNKSt6vectorIcSaIcEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIcSaIcEE4sizeEv
	.type	_ZNKSt6vectorIcSaIcEE4sizeEv, %function
_ZNKSt6vectorIcSaIcEE4sizeEv:
.LFB11503:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	sub	x0, x1, x0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11503:
	.size	_ZNKSt6vectorIcSaIcEE4sizeEv, .-_ZNKSt6vectorIcSaIcEE4sizeEv
	.section	.text._ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB11504:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11504:
	.size	_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIcSaIcEE5beginEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE5beginEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIcSaIcEE5beginEv
	.type	_ZNKSt6vectorIcSaIcEE5beginEv, %function
_ZNKSt6vectorIcSaIcEE5beginEv:
.LFB11505:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	add	x0, sp, 40
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11505:
	.size	_ZNKSt6vectorIcSaIcEE5beginEv, .-_ZNKSt6vectorIcSaIcEE5beginEv
	.section	.text._ZNKSt6vectorIcSaIcEE3endEv,"axG",@progbits,_ZNKSt6vectorIcSaIcEE3endEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIcSaIcEE3endEv
	.type	_ZNKSt6vectorIcSaIcEE3endEv, %function
_ZNKSt6vectorIcSaIcEE3endEv:
.LFB11506:
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
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11506:
	.size	_ZNKSt6vectorIcSaIcEE3endEv, .-_ZNKSt6vectorIcSaIcEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E:
.LFB11507:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11507:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E
	.section	.text._ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_,"axG",@progbits,_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	.type	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_, %function
_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_:
.LFB11511:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 63]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	sub	x0, x1, x0
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	cmp	x0, 0
	beq	.L201
	ldrb	w0, [sp, 63]
	ldr	x2, [sp, 48]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	memset
.L201:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11511:
	.size	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_, .-_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_, %function
_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_:
.LFB11513:
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
.LFE11513:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, %function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_:
.LFB11515:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 1
	strb	w0, [sp, 63]
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11515:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_:
.LFB11528:
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
	bl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11528:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcEET0_T_SC_SB_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, %function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_:
.LFB11530:
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
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	ldr	x2, [sp, 40]
	mov	x1, x0
	mov	x0, x19
	bl	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11530:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET0_T_SA_S9_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_, %function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_:
.LFB11532:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11532:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_, %function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_:
.LFB11533:
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
	bl	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x19, x0
	ldr	x0, [sp, 48]
	bl	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	mov	x20, x0
	ldr	x0, [sp, 40]
	bl	_ZSt12__niter_baseIPcET_S1_
	mov	x2, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	mov	x1, x0
	add	x0, sp, 40
	bl	_ZSt12__niter_wrapIPcET_RKS1_S1_
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11533:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPcET1_T0_SA_S9_
	.section	.text._ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, %function
_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB11534:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 24
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11534:
	.size	_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKcSt6vectorIcSaIcEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPcET_S1_,"axG",@progbits,_ZSt12__niter_baseIPcET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPcET_S1_
	.type	_ZSt12__niter_baseIPcET_S1_, %function
_ZSt12__niter_baseIPcET_S1_:
.LFB11535:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11535:
	.size	_ZSt12__niter_baseIPcET_S1_, .-_ZSt12__niter_baseIPcET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_, %function
_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_:
.LFB11536:
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
	bl	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11536:
	.size	_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPcET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPcET_RKS1_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_wrapIPcET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPcET_RKS1_S1_, %function
_ZSt12__niter_wrapIPcET_RKS1_S1_:
.LFB11537:
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
.LFE11537:
	.size	_ZSt12__niter_wrapIPcET_RKS1_S1_, .-_ZSt12__niter_wrapIPcET_RKS1_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv:
.LFB11538:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11538:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_, %function
_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_:
.LFB11539:
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
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11539:
	.size	_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_:
.LFB11540:
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
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 0
	beq	.L226
	ldr	x0, [sp, 56]
	mov	x2, x0
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	bl	memmove
.L226:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11540:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB11577:
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
	bne	.L230
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L230
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
.L230:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11577:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z5setupv, %function
_GLOBAL__sub_I__Z5setupv:
.LFB11600:
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
.LFE11600:
	.size	_GLOBAL__sub_I__Z5setupv, .-_GLOBAL__sub_I__Z5setupv
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I__Z5setupv
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
