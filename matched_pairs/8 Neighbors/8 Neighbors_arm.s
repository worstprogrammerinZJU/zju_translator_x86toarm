	.arch armv8-a
	.file	"8 Neighbors.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	"yes"
	.align	3
.LC1:
	.string	"no"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	mov	x12, 11088
	sub	sp, sp, x12
	.cfi_def_cfa_offset 11088
	stp	x29, x30, [sp]
	.cfi_offset 29, -11088
	.cfi_offset 30, -11080
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 11084]
	add	x0, sp, 8192
	add	x0, x0, 2872
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 8192
	add	x0, x0, 2868
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 11080]
	b	.L2
.L5:
	str	wzr, [sp, 11076]
	b	.L3
.L4:
	add	x2, sp, 24
	ldrsw	x3, [sp, 11076]
	ldrsw	x1, [sp, 11080]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x3, x1
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	ldr	w0, [sp, 11076]
	add	w0, w0, 1
	str	w0, [sp, 11076]
.L3:
	ldr	w0, [sp, 11060]
	ldr	w1, [sp, 11076]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 11080]
	add	w0, w0, 1
	str	w0, [sp, 11080]
.L2:
	ldr	w0, [sp, 11064]
	ldr	w1, [sp, 11080]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 8192
	add	x0, x0, 2864
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 8192
	add	x0, x0, 2860
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 11056]
	sub	w0, w0, #2
	str	w0, [sp, 11072]
	b	.L6
.L11:
	ldr	w0, [sp, 11052]
	sub	w0, w0, #2
	str	w0, [sp, 11068]
	b	.L7
.L10:
	ldr	w0, [sp, 11072]
	cmp	w0, 0
	blt	.L8
	ldr	w0, [sp, 11064]
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 11068]
	cmp	w0, 0
	blt	.L8
	ldr	w0, [sp, 11060]
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	bge	.L8
	ldrsw	x2, [sp, 11068]
	ldrsw	x1, [sp, 11072]
	mov	x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, x1
	lsl	x1, x0, 4
	sub	x1, x1, x0
	add	x0, x1, 8192
	add	x0, x0, 2896
	add	x0, sp, x0
	add	x0, x0, x2
	sub	x0, x0, #12288
	ldrb	w0, [x0, 1224]
	cmp	w0, 120
	beq	.L8
	ldr	w0, [sp, 11056]
	sub	w0, w0, #1
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 11052]
	sub	w0, w0, #1
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	beq	.L8
.L9:
	str	wzr, [sp, 11084]
.L8:
	ldr	w0, [sp, 11068]
	add	w0, w0, 1
	str	w0, [sp, 11068]
.L7:
	ldr	w0, [sp, 11052]
	ldr	w1, [sp, 11068]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 11072]
	add	w0, w0, 1
	str	w0, [sp, 11072]
.L6:
	ldr	w0, [sp, 11056]
	ldr	w1, [sp, 11072]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 11084]
	cmp	w0, 1
	bne	.L12
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L13
.L12:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.L13:
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 11088
	add	sp, sp, x12
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1729:
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2232:
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
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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
.L17:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2232:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2233:
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
.LFE2233:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
