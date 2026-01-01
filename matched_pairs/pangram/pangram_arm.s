	.arch armv8-a
	.file	"pangram.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"YES \n"
	.align	3
.LC1:
	.string	"NO \n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1729
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZNSirsERi
.LEHE0:
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	str	wzr, [sp, 92]
	b	.L2
.L6:
	ldrsw	x1, [sp, 92]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 64
	bls	.L3
	ldrsw	x1, [sp, 92]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w0, 90
	bhi	.L3
	mov	w0, 1
	b	.L4
.L3:
	mov	w0, 0
.L4:
	cmp	w0, 0
	beq	.L5
	ldrsw	x1, [sp, 92]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w1, [x0]
	add	w1, w1, 32
	and	w1, w1, 255
	strb	w1, [x0]
.L5:
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L2:
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 88]
	b	.L7
.L11:
	str	wzr, [sp, 84]
	b	.L8
.L10:
	ldrsw	x1, [sp, 84]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w19, [x0]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldrsw	x1, [sp, 84]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	strb	w0, [sp, 75]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 84]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	w1, w19
	strb	w1, [x0]
	ldrb	w19, [sp, 75]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	sxtw	x1, w0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	mov	w1, w19
	strb	w1, [x0]
.L9:
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L8:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 88]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 84]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L7:
	ldr	w0, [sp, 68]
	sub	w0, w0, #1
	ldr	w1, [sp, 88]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
	strb	w0, [sp, 83]
	mov	w0, 97
	strb	w0, [sp, 82]
	b	.L12
.L19:
	strb	wzr, [sp, 81]
	str	wzr, [sp, 76]
	b	.L13
.L16:
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	ldrb	w0, [x0]
	ldrb	w1, [sp, 82]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L14
	mov	w0, 1
	strb	w0, [sp, 81]
	b	.L15
.L14:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L13:
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L16
.L15:
	ldrb	w0, [sp, 81]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	strb	wzr, [sp, 83]
	b	.L18
.L17:
	ldrb	w0, [sp, 82]
	add	w0, w0, 1
	strb	w0, [sp, 82]
.L12:
	ldrb	w0, [sp, 82]
	cmp	w0, 122
	bls	.L19
.L18:
	ldrb	w0, [sp, 83]
	cmp	w0, 0
	beq	.L20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.L21
.L20:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE1:
.L21:
	mov	w19, 0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	w0, w19
	b	.L25
.L24:
	mov	x19, x0
	add	x0, sp, 32
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x19
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L25:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
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
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1729
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L24-.LFB1729
	.uleb128 0
	.uleb128 .LEHB2-.LFB1729
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1729:
	.text
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2231:
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
.LFE2231:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2232:
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
.LFE2232:
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
