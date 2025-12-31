	.arch armv8-a
	.file	"Permutation with arrays.cpp"
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
	mov	x12, 8096
	sub	sp, sp, x12
	.cfi_def_cfa_offset 8096
	stp	x29, x30, [sp]
	.cfi_offset 29, -8096
	.cfi_offset 30, -8088
	mov	x29, sp
	add	x0, sp, 4096
	add	x0, x0, 3956
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	str	wzr, [sp, 8092]
	b	.L2
.L3:
	add	x1, sp, 4040
	ldrsw	x0, [sp, 8092]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [sp, 8092]
	add	w0, w0, 1
	str	w0, [sp, 8092]
.L2:
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8092]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 8088]
	b	.L4
.L5:
	add	x1, sp, 24
	ldrsw	x0, [sp, 8088]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [sp, 8088]
	add	w0, w0, 1
	str	w0, [sp, 8088]
.L4:
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8088]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 8084]
	b	.L6
.L10:
	str	wzr, [sp, 8080]
	b	.L7
.L9:
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 4040
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L8
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w0, [x1, x0]
	str	w0, [sp, 8056]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 8080]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	str	w2, [x1, x0]
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w2, [sp, 8056]
	str	w2, [x1, x0]
.L8:
	ldr	w0, [sp, 8080]
	add	w0, w0, 1
	str	w0, [sp, 8080]
.L7:
	ldr	w1, [sp, 8052]
	ldr	w0, [sp, 8084]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 8080]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 8084]
	add	w0, w0, 1
	str	w0, [sp, 8084]
.L6:
	ldr	w0, [sp, 8052]
	sub	w0, w0, #1
	ldr	w1, [sp, 8084]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 8076]
	b	.L11
.L15:
	str	wzr, [sp, 8072]
	b	.L12
.L14:
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L13
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 8060]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 8072]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [sp, 8060]
	str	w2, [x1, x0]
.L13:
	ldr	w0, [sp, 8072]
	add	w0, w0, 1
	str	w0, [sp, 8072]
.L12:
	ldr	w1, [sp, 8052]
	ldr	w0, [sp, 8076]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 8072]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 8076]
	add	w0, w0, 1
	str	w0, [sp, 8076]
.L11:
	ldr	w0, [sp, 8052]
	sub	w0, w0, #1
	ldr	w1, [sp, 8076]
	cmp	w1, w0
	blt	.L15
	mov	w0, 1
	add	x1, sp, 4096
	strb	w0, [x1, 3975]
	str	wzr, [sp, 8064]
	b	.L16
.L19:
	ldrsw	x0, [sp, 8064]
	lsl	x0, x0, 2
	add	x1, sp, 4040
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 8064]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L17
	add	x0, sp, 4096
	strb	wzr, [x0, 3975]
	b	.L18
.L17:
	ldr	w0, [sp, 8064]
	add	w0, w0, 1
	str	w0, [sp, 8064]
.L16:
	ldr	w0, [sp, 8052]
	ldr	w1, [sp, 8064]
	cmp	w1, w0
	blt	.L19
.L18:
	add	x0, sp, 4096
	ldrb	w0, [x0, 3975]
	cmp	w0, 0
	beq	.L20
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
	b	.L21
.L20:
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
.L21:
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 8096
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
	bne	.L25
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L25
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
.L25:
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
