	.arch armv8-a
	.file	"Rudolf and the Ugly String.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"mapie"
	.align	3
.LC1:
	.string	"pie"
	.align	3
.LC2:
	.string	"map"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1729
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	.cfi_offset 21, -176
	add	x0, sp, 92
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZNSirsERi
	b	.L2
.L14:
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
.LEHE0:
	add	x0, sp, 56
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	str	wzr, [sp, 204]
	mov	w0, 1
	strb	w0, [sp, 203]
	b	.L3
.L13:
	strb	wzr, [sp, 203]
	str	wzr, [sp, 196]
	b	.L4
.L12:
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 96
	mov	x8, x2
	mov	x2, 4
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	add	x2, sp, 96
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	and	w19, w0, 255
	add	x0, sp, 96
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	cmp	w19, 0
	beq	.L5
	ldr	w0, [sp, 204]
	add	w0, w0, 2
	str	w0, [sp, 204]
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	ldr	w0, [sp, 196]
	add	w0, w0, 3
	sxtw	x1, w0
	add	x0, sp, 56
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE1:
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	mov	w0, 1
	strb	w0, [sp, 203]
	b	.L6
.L5:
	mov	w19, 0
	mov	w20, 0
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 128
	mov	x8, x2
	mov	x2, 3
.LEHB2:
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
	mov	w19, 1
	add	x2, sp, 128
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldrsw	x1, [sp, 196]
	add	x0, sp, 56
	add	x2, sp, 160
	mov	x8, x2
	mov	x2, 3
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE2:
	mov	w20, 1
	add	x2, sp, 160
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
.L7:
	mov	w21, 1
	b	.L9
.L8:
	mov	w21, 0
.L9:
	cmp	w20, 0
	beq	.L10
	add	x0, sp, 160
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L10:
	cmp	w19, 0
	beq	.L11
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L11:
	cmp	w21, 0
	beq	.L6
	ldr	w0, [sp, 204]
	add	w0, w0, 1
	str	w0, [sp, 204]
	ldr	w0, [sp, 196]
	add	w0, w0, 2
	sxtw	x1, w0
	add	x0, sp, 56
.LEHB3:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	x1, x0
	mov	w0, 42
	strb	w0, [x1]
	mov	w0, 1
	strb	w0, [sp, 203]
.L6:
	ldr	w0, [sp, 196]
	add	w0, w0, 1
	str	w0, [sp, 196]
.L4:
	ldr	w0, [sp, 88]
	sub	w0, w0, #2
	ldr	w1, [sp, 196]
	cmp	w1, w0
	blt	.L12
.L3:
	ldrb	w0, [sp, 203]
	cmp	w0, 0
	bne	.L13
	ldr	w1, [sp, 204]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.LEHE3:
	add	x0, sp, 56
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L2:
	ldr	w0, [sp, 92]
	sub	w1, w0, #1
	str	w1, [sp, 92]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	b	.L22
.L21:
	mov	x21, x0
	cmp	w20, 0
	beq	.L17
	add	x0, sp, 160
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L17:
	mov	x20, x21
	cmp	w19, 0
	beq	.L18
	add	x0, sp, 128
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L18:
	mov	x19, x20
	b	.L19
.L20:
	mov	x19, x0
.L19:
	add	x0, sp, 56
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L22:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
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
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1729
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB1729
	.uleb128 0
	.uleb128 .LEHB2-.LFB1729
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB1729
	.uleb128 0
	.uleb128 .LEHB3-.LFB1729
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L20-.LFB1729
	.uleb128 0
	.uleb128 .LEHB4-.LFB1729
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1729:
	.text
	.size	main, .-main
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.align	2
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, %function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB1995:
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
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2238:
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
	bne	.L27
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L27
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
.L27:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2238:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2239:
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
.LFE2239:
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
