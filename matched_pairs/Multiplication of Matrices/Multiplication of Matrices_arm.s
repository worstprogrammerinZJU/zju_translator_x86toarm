	.arch armv8-a
	.file	"Multiplication of Matrices.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1729:
	.cfi_startproc
	sub	sp, sp, #656
	.cfi_def_cfa_offset 656
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -640
	.cfi_offset 30, -632
	add	x29, sp, 16
	.cfi_def_cfa 29, 640
	stp	x19, x20, [sp, 32]
	stp	x21, x22, [sp, 48]
	stp	x23, x24, [sp, 64]
	stp	x25, x26, [sp, 80]
	stp	x27, x28, [sp, 96]
	.cfi_offset 19, -624
	.cfi_offset 20, -616
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	.cfi_offset 23, -592
	.cfi_offset 24, -584
	.cfi_offset 25, -576
	.cfi_offset 26, -568
	.cfi_offset 27, -560
	.cfi_offset 28, -552
	mov	x0, sp
	mov	x28, x0
	add	x0, x29, 524
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 520
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w3, [x29, 520]
	sxtw	x0, w3
	sub	x0, x0, #1
	str	x0, [x29, 592]
	sxtw	x0, w3
	mov	x22, x0
	mov	x23, 0
	lsr	x0, x22, 59
	lsl	x21, x23, 5
	orr	x21, x0, x21
	lsl	x20, x22, 5
	sxtw	x0, w3
	lsl	x21, x0, 2
	ldr	w2, [x29, 524]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 584]
	sxtw	x0, w3
	mov	x26, x0
	mov	x27, 0
	sxtw	x0, w2
	mov	x24, x0
	mov	x25, 0
	mul	x1, x26, x24
	umulh	x0, x26, x24
	madd	x0, x27, x24, x0
	madd	x0, x26, x25, x0
	str	x1, [x29, 368]
	str	x0, [x29, 376]
	ldp	x4, x5, [x29, 368]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 504]
	ldr	x1, [x29, 504]
	orr	x0, x0, x1
	str	x0, [x29, 504]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 496]
	sxtw	x0, w3
	str	x0, [x29, 352]
	str	xzr, [x29, 360]
	sxtw	x0, w2
	str	x0, [x29, 336]
	str	xzr, [x29, 344]
	ldp	x6, x7, [x29, 352]
	mov	x0, x6
	ldp	x4, x5, [x29, 336]
	mov	x1, x4
	mul	x1, x0, x1
	mov	x0, x6
	mov	x8, x4
	umulh	x0, x0, x8
	mov	x8, x7
	mov	x9, x4
	madd	x0, x8, x9, x0
	mov	x4, x5
	madd	x0, x6, x4, x0
	str	x1, [x29, 320]
	str	x0, [x29, 328]
	ldp	x4, x5, [x29, 320]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 488]
	ldr	x1, [x29, 488]
	orr	x0, x0, x1
	str	x0, [x29, 488]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 480]
	sxtw	x1, w3
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x1, x0, 4
	and	x0, x1, -65536
	sub	x0, sp, x0
.L2:
	cmp	sp, x0
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
.L3:
	and	x0, x1, 65535
	sub	sp, sp, x0
	str	xzr, [sp]
	and	x0, x1, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
.L4:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 576]
	str	wzr, [x29, 636]
	b	.L5
.L8:
	str	wzr, [x29, 632]
	b	.L6
.L7:
	lsr	x2, x21, 2
	ldrsw	x1, [x29, 632]
	ldrsw	x0, [x29, 636]
	mul	x0, x0, x2
	add	x0, x1, x0
	lsl	x1, x0, 2
	ldr	x0, [x29, 576]
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 632]
	add	w0, w0, 1
	str	w0, [x29, 632]
.L6:
	ldr	w1, [x29, 520]
	ldr	w0, [x29, 632]
	cmp	w0, w1
	blt	.L7
	ldr	w0, [x29, 636]
	add	w0, w0, 1
	str	w0, [x29, 636]
.L5:
	ldr	w1, [x29, 524]
	ldr	w0, [x29, 636]
	cmp	w0, w1
	blt	.L8
	add	x0, x29, 516
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 512
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w3, [x29, 512]
	sxtw	x0, w3
	sub	x0, x0, #1
	str	x0, [x29, 568]
	sxtw	x0, w3
	str	x0, [x29, 304]
	str	xzr, [x29, 312]
	ldp	x4, x5, [x29, 304]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 472]
	ldr	x1, [x29, 472]
	orr	x0, x0, x1
	str	x0, [x29, 472]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 464]
	sxtw	x0, w3
	lsl	x20, x0, 2
	ldr	w2, [x29, 516]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 560]
	sxtw	x0, w3
	str	x0, [x29, 288]
	str	xzr, [x29, 296]
	sxtw	x0, w2
	str	x0, [x29, 272]
	str	xzr, [x29, 280]
	ldp	x6, x7, [x29, 288]
	mov	x0, x6
	ldp	x4, x5, [x29, 272]
	mov	x1, x4
	mul	x1, x0, x1
	mov	x0, x6
	mov	x8, x4
	umulh	x0, x0, x8
	mov	x8, x7
	mov	x9, x4
	madd	x0, x8, x9, x0
	mov	x4, x5
	madd	x0, x6, x4, x0
	str	x1, [x29, 256]
	str	x0, [x29, 264]
	ldp	x4, x5, [x29, 256]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 456]
	ldr	x1, [x29, 456]
	orr	x0, x0, x1
	str	x0, [x29, 456]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 448]
	sxtw	x0, w3
	str	x0, [x29, 240]
	str	xzr, [x29, 248]
	sxtw	x0, w2
	str	x0, [x29, 224]
	str	xzr, [x29, 232]
	ldp	x6, x7, [x29, 240]
	mov	x0, x6
	ldp	x4, x5, [x29, 224]
	mov	x1, x4
	mul	x1, x0, x1
	mov	x0, x6
	mov	x8, x4
	umulh	x0, x0, x8
	mov	x8, x7
	mov	x9, x4
	madd	x0, x8, x9, x0
	mov	x4, x5
	madd	x0, x6, x4, x0
	str	x1, [x29, 208]
	str	x0, [x29, 216]
	ldp	x4, x5, [x29, 208]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x1, x5
	lsl	x1, x1, 5
	str	x1, [x29, 440]
	ldr	x1, [x29, 440]
	orr	x0, x0, x1
	str	x0, [x29, 440]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 432]
	sxtw	x1, w3
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L9:
	cmp	sp, x1
	beq	.L10
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L9
.L10:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L11
	str	xzr, [sp, 1024]
.L11:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 552]
	str	wzr, [x29, 628]
	b	.L12
.L15:
	str	wzr, [x29, 624]
	b	.L13
.L14:
	lsr	x0, x20, 2
	ldrsw	x1, [x29, 624]
	ldrsw	x2, [x29, 628]
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [x29, 552]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	ldr	x0, [x0, #:got_lo12:_ZSt3cin]
	bl	_ZNSirsERi
	ldr	w0, [x29, 624]
	add	w0, w0, 1
	str	w0, [x29, 624]
.L13:
	ldr	w0, [x29, 512]
	ldr	w1, [x29, 624]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [x29, 628]
	add	w0, w0, 1
	str	w0, [x29, 628]
.L12:
	ldr	w0, [x29, 516]
	ldr	w1, [x29, 628]
	cmp	w1, w0
	blt	.L15
	ldr	w1, [x29, 512]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 544]
	sxtw	x0, w1
	str	x0, [x29, 192]
	str	xzr, [x29, 200]
	ldp	x2, x3, [x29, 192]
	mov	x0, x2
	lsr	x0, x0, 59
	mov	x4, x3
	lsl	x4, x4, 5
	str	x4, [x29, 424]
	ldr	x4, [x29, 424]
	orr	x0, x0, x4
	str	x0, [x29, 424]
	mov	x0, x2
	lsl	x0, x0, 5
	str	x0, [x29, 416]
	sxtw	x0, w1
	lsl	x19, x0, 2
	ldr	w2, [x29, 524]
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 536]
	sxtw	x0, w1
	str	x0, [x29, 176]
	str	xzr, [x29, 184]
	sxtw	x0, w2
	str	x0, [x29, 160]
	str	xzr, [x29, 168]
	ldp	x6, x7, [x29, 176]
	mov	x0, x6
	ldp	x4, x5, [x29, 160]
	mov	x3, x4
	mul	x3, x0, x3
	mov	x0, x6
	mov	x8, x4
	umulh	x0, x0, x8
	mov	x8, x7
	mov	x9, x4
	madd	x0, x8, x9, x0
	mov	x4, x5
	madd	x0, x6, x4, x0
	str	x3, [x29, 144]
	str	x0, [x29, 152]
	ldp	x4, x5, [x29, 144]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x3, x5
	lsl	x3, x3, 5
	str	x3, [x29, 408]
	ldr	x3, [x29, 408]
	orr	x0, x0, x3
	str	x0, [x29, 408]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 400]
	sxtw	x0, w1
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	sxtw	x0, w2
	str	x0, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x6, x7, [x29, 128]
	mov	x0, x6
	ldp	x4, x5, [x29, 112]
	mov	x3, x4
	mul	x3, x0, x3
	mov	x0, x6
	mov	x8, x4
	umulh	x0, x0, x8
	mov	x8, x7
	mov	x9, x4
	madd	x0, x8, x9, x0
	mov	x4, x5
	madd	x0, x6, x4, x0
	str	x3, [x29, 96]
	str	x0, [x29, 104]
	ldp	x4, x5, [x29, 96]
	mov	x0, x4
	lsr	x0, x0, 59
	mov	x3, x5
	lsl	x3, x3, 5
	str	x3, [x29, 392]
	ldr	x3, [x29, 392]
	orr	x0, x0, x3
	str	x0, [x29, 392]
	mov	x0, x4
	lsl	x0, x0, 5
	str	x0, [x29, 384]
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L16:
	cmp	sp, x1
	beq	.L17
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L16
.L17:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L18
	str	xzr, [sp, 1024]
.L18:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 528]
	str	wzr, [x29, 620]
	b	.L19
.L24:
	str	wzr, [x29, 616]
	b	.L20
.L23:
	lsr	x1, x19, 2
	ldr	x0, [x29, 528]
	ldrsw	x2, [x29, 616]
	ldrsw	x3, [x29, 620]
	mul	x1, x3, x1
	add	x1, x2, x1
	str	wzr, [x0, x1, lsl 2]
	str	wzr, [x29, 612]
	b	.L21
.L22:
	lsr	x1, x19, 2
	ldr	x0, [x29, 528]
	ldrsw	x2, [x29, 616]
	ldrsw	x3, [x29, 620]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w2, [x0, x1, lsl 2]
	lsr	x1, x21, 2
	ldr	x0, [x29, 576]
	ldrsw	x3, [x29, 612]
	ldrsw	x4, [x29, 620]
	mul	x1, x4, x1
	add	x1, x3, x1
	ldr	w1, [x0, x1, lsl 2]
	lsr	x3, x20, 2
	ldr	x0, [x29, 552]
	ldrsw	x4, [x29, 616]
	ldrsw	x5, [x29, 612]
	mul	x3, x5, x3
	add	x3, x4, x3
	ldr	w0, [x0, x3, lsl 2]
	mul	w0, w1, w0
	lsr	x1, x19, 2
	add	w2, w2, w0
	ldr	x0, [x29, 528]
	ldrsw	x3, [x29, 616]
	ldrsw	x4, [x29, 620]
	mul	x1, x4, x1
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 612]
	add	w0, w0, 1
	str	w0, [x29, 612]
.L21:
	ldr	w0, [x29, 520]
	ldr	w1, [x29, 612]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [x29, 616]
	add	w0, w0, 1
	str	w0, [x29, 616]
.L20:
	ldr	w0, [x29, 512]
	ldr	w1, [x29, 616]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [x29, 620]
	add	w0, w0, 1
	str	w0, [x29, 620]
.L19:
	ldr	w0, [x29, 524]
	ldr	w1, [x29, 620]
	cmp	w1, w0
	blt	.L24
	str	wzr, [x29, 608]
	b	.L25
.L28:
	str	wzr, [x29, 604]
	b	.L26
.L27:
	lsr	x1, x19, 2
	ldr	x0, [x29, 528]
	ldrsw	x2, [x29, 604]
	ldrsw	x3, [x29, 608]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w0, [x29, 604]
	add	w0, w0, 1
	str	w0, [x29, 604]
.L26:
	ldr	w0, [x29, 512]
	ldr	w1, [x29, 604]
	cmp	w1, w0
	blt	.L27
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [x29, 608]
	add	w0, w0, 1
	str	w0, [x29, 608]
.L25:
	ldr	w0, [x29, 524]
	ldr	w1, [x29, 608]
	cmp	w1, w0
	blt	.L28
	mov	sp, x28
	mov	w0, 0
	sub	sp, x29, #16
	.cfi_def_cfa 31, 656
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 656
	.cfi_restore 29
	.cfi_restore 30
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
	bne	.L32
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L32
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
.L32:
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
