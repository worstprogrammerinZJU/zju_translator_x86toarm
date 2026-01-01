	.arch armv8-a
	.file	"fair_playoff.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.text._ZSt3maxIiERKT_S2_S2_,"axG",@progbits,_ZSt3maxIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIiERKT_S2_S2_
	.type	_ZSt3maxIiERKT_S2_S2_, %function
_ZSt3maxIiERKT_S2_S2_:
.LFB1731:
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
	bge	.L2
	ldr	x0, [sp]
	b	.L3
.L2:
	ldr	x0, [sp, 8]
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1731:
	.size	_ZSt3maxIiERKT_S2_S2_, .-_ZSt3maxIiERKT_S2_S2_
	.section	.text._ZSt3minIiERKT_S2_S2_,"axG",@progbits,_ZSt3minIiERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minIiERKT_S2_S2_
	.type	_ZSt3minIiERKT_S2_S2_, %function
_ZSt3minIiERKT_S2_S2_:
.LFB1732:
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
	bge	.L5
	ldr	x0, [sp]
	b	.L6
.L5:
	ldr	x0, [sp, 8]
.L6:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1732:
	.size	_ZSt3minIiERKT_S2_S2_, .-_ZSt3minIiERKT_S2_S2_
	.section	.rodata
	.align	3
.LC0:
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1729
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	sub	sp, sp, #16
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	mov	x0, sp
	str	x0, [x29, 104]
	add	x0, x29, 132
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB0:
	bl	_ZNSirsERi
.LEHE0:
	ldr	w28, [x29, 132]
	sxtw	x0, w28
	sub	x0, x0, #1
	str	x0, [x29, 160]
	sxtw	x0, w28
	mov	x26, x0
	mov	x27, 0
	lsr	x0, x26, 56
	lsl	x23, x27, 8
	orr	x23, x0, x23
	lsl	x22, x26, 8
	sxtw	x0, w28
	mov	x24, x0
	mov	x25, 0
	lsr	x0, x24, 56
	lsl	x21, x25, 8
	orr	x21, x0, x21
	lsl	x20, x24, 8
	sxtw	x0, w28
	lsl	x0, x0, 5
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L8:
	cmp	sp, x1
	beq	.L9
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L8
.L9:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L10
	str	xzr, [sp, 1024]
.L10:
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 152]
	ldr	x1, [x29, 152]
	sxtw	x0, w28
	sub	x19, x0, #1
	mov	x20, x1
	b	.L11
.L12:
	mov	x0, x20
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	add	x20, x20, 32
	sub	x19, x19, #1
.L11:
	cmp	x19, 0
	bge	.L12
	str	wzr, [x29, 172]
	b	.L13
.L16:
	add	x0, x29, 128
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
.LEHB1:
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 124
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 120
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 116
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, x29, 124
	add	x0, x29, 128
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [x29, 148]
	add	x1, x29, 124
	add	x0, x29, 128
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [x29, 144]
	add	x1, x29, 116
	add	x0, x29, 120
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [x29, 140]
	add	x1, x29, 116
	add	x0, x29, 120
	bl	_ZSt3minIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [x29, 136]
	ldr	w1, [x29, 144]
	ldr	w0, [x29, 140]
	cmp	w1, w0
	bgt	.L14
	ldr	w1, [x29, 136]
	ldr	w0, [x29, 148]
	cmp	w1, w0
	bgt	.L14
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 5
	ldr	x1, [x29, 152]
	add	x2, x1, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
	b	.L15
.L14:
	ldrsw	x0, [x29, 172]
	lsl	x0, x0, 5
	ldr	x1, [x29, 152]
	add	x2, x1, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.L15:
	ldr	w0, [x29, 172]
	add	w0, w0, 1
	str	w0, [x29, 172]
.L13:
	ldr	w0, [x29, 132]
	ldr	w1, [x29, 172]
	cmp	w1, w0
	blt	.L16
	str	wzr, [x29, 168]
	b	.L17
.L18:
	ldrsw	x0, [x29, 168]
	lsl	x0, x0, 5
	ldr	x1, [x29, 152]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE1:
	ldr	w0, [x29, 168]
	add	w0, w0, 1
	str	w0, [x29, 168]
.L17:
	ldr	w0, [x29, 132]
	ldr	w1, [x29, 168]
	cmp	w1, w0
	blt	.L18
	mov	w20, 0
	sxtw	x0, w28
	lsl	x0, x0, 5
	ldr	x1, [x29, 152]
	add	x19, x1, x0
.L20:
	ldr	x0, [x29, 152]
	cmp	x0, x19
	beq	.L27
	sub	x19, x19, #32
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L20
.L27:
	nop
	ldr	x0, [x29, 104]
	mov	sp, x0
	mov	w0, w20
	b	.L26
.L25:
	mov	x20, x0
	sxtw	x0, w28
	lsl	x0, x0, 5
	ldr	x1, [x29, 152]
	add	x19, x1, x0
.L24:
	ldr	x0, [x29, 152]
	cmp	x0, x19
	beq	.L28
	sub	x19, x19, #32
	mov	x0, x19
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	b	.L24
.L28:
	nop
	mov	x0, x20
.LEHB2:
	bl	_Unwind_Resume
.LEHE2:
.L26:
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
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
	.uleb128 .L25-.LFB1729
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
.LFB2236:
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
	bne	.L31
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L31
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
.L31:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2236:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2237:
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
.LFE2237:
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
