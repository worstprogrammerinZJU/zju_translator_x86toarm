	.arch armv8-a
	.file	"ultra_fast_math.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1729
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -128
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE0:
	add	x0, sp, 96
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	str	w0, [sp, 132]
	ldrsw	x19, [sp, 132]
	add	x0, sp, 128
	bl	_ZNSaIcEC1Ev
	add	x1, sp, 128
	add	x0, sp, 32
	mov	x3, x1
	mov	w2, 48
	mov	x1, x19
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
.LEHE1:
	add	x0, sp, 128
	bl	_ZNSaIcED1Ev
	str	wzr, [sp, 140]
	b	.L2
.L10:
	ldrsw	x1, [sp, 140]
	add	x0, sp, 96
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L3
	ldrsw	x1, [sp, 140]
	add	x0, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L3
	mov	w0, 1
	b	.L4
.L3:
	mov	w0, 0
.L4:
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 140]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	mov	w0, 48
	strb	w0, [x1]
	b	.L6
.L5:
	ldrsw	x1, [sp, 140]
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L7
	ldrsw	x1, [sp, 140]
	add	x0, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 49
	bne	.L7
	mov	w0, 1
	b	.L8
.L7:
	mov	w0, 0
.L8:
	cmp	w0, 0
	beq	.L9
	ldrsw	x1, [sp, 140]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	mov	w0, 48
	strb	w0, [x1]
	b	.L6
.L9:
	ldrsw	x1, [sp, 140]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	mov	w0, 49
	strb	w0, [x1]
.L6:
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
.L2:
	ldr	w1, [sp, 140]
	ldr	w0, [sp, 132]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 136]
	b	.L11
.L12:
	ldrsw	x1, [sp, 136]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE2:
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
.L11:
	ldr	w1, [sp, 136]
	ldr	w0, [sp, 132]
	cmp	w1, w0
	blt	.L12
	mov	w19, 0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	w0, w19
	b	.L20
.L18:
	mov	x19, x0
	add	x0, sp, 128
	bl	_ZNSaIcED1Ev
	b	.L15
.L19:
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L15
.L17:
	mov	x19, x0
.L15:
	add	x0, sp, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
.LEHB3:
	bl	_Unwind_Resume
.LEHE3:
.L20:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1729:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1729-.LLSDACSB1729
.LLSDACSB1729:
	.uleb128 .LEHB0-.LFB1729
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L17-.LFB1729
	.uleb128 0
	.uleb128 .LEHB1-.LFB1729
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB1729
	.uleb128 0
	.uleb128 .LEHB2-.LFB1729
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L19-.LFB1729
	.uleb128 0
	.uleb128 .LEHB3-.LFB1729
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1729:
	.text
	.size	main, .-main
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB1839:
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
.LFE1839:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_:
.LFB1841:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1841
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
.LEHB4:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	ldr	x2, [sp, 32]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE4:
	ldrb	w2, [sp, 47]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
.LEHB5:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc
.LEHE5:
	b	.L25
.L24:
	mov	x19, x0
	ldr	x0, [sp, 56]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	mov	x0, x19
.LEHB6:
	bl	_Unwind_Resume
.LEHE6:
.L25:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1841:
	.section	.gcc_except_table
.LLSDA1841:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1841-.LLSDACSB1841
.LLSDACSB1841:
	.uleb128 .LEHB4-.LFB1841
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1841
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L24-.LFB1841
	.uleb128 0
	.uleb128 .LEHB6-.LFB1841
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1841:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEmcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2229:
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
	bne	.L28
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L28
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
.L28:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2229:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2230:
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
.LFE2230:
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
