	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function rmtSetTick
.LCPI0_0:
	.xword	0x408f400000000000              // double 1000
	.text
	.globl	rmtSetTick
	.p2align	2
	.type	rmtSetTick,@function
rmtSetTick:                             // @rmtSetTick
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	s0, [x29, #-20]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	stur	s0, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldur	s0, [x29, #-20]
	fcvt	d0, s0
	fmov	d1, #12.50000000
	str	d1, [sp, #16]                   // 8-byte Folded Spill
	fdiv	d0, d0, d1
	fcvt	s0, d0
	mov	w0, #256
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	_LIMIT
	mov	w8, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	stur	w8, [x29, #-24]
	ldur	s0, [x29, #-20]
	mov	w8, #1148846080
	fmov	s1, w8
	fdiv	s0, s0, s1
	bl	_LIMIT
	ldr	d0, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	s2, [x29, #-24]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fmul	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-32]
	ldur	s1, [x29, #-28]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	fmul	d0, d0, d1
	fcvt	s0, d0
	stur	s0, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldur	s0, [x29, #-32]
	ldur	s1, [x29, #-20]
	fsub	s0, s0, s1
	bl	_ABS
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	ldur	s0, [x29, #-36]
	ldur	s1, [x29, #-20]
	fsub	s0, s0, s1
	bl	_ABS
	mov	x8, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldurb	w9, [x29, #-24]
	adrp	x8, RMT
	ldr	x10, [x8, :lo12:RMT]
	ldr	x11, [sp, #32]
	add	x10, x10, x11, lsl #3
	str	w9, [x10, #4]
	ldr	x9, [x8, :lo12:RMT]
	ldr	x8, [sp, #32]
	lsl	x10, x8, #3
	mov	w8, #1
	str	w8, [x9, x10]
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldurb	w9, [x29, #-28]
	adrp	x8, RMT
	ldr	x10, [x8, :lo12:RMT]
	ldr	x11, [sp, #32]
	add	x10, x10, x11, lsl #3
	str	w9, [x10, #4]
	ldr	x9, [x8, :lo12:RMT]
	ldr	x8, [sp, #32]
	lsl	x10, x8, #3
	mov	w8, wzr
	str	w8, [x9, x10]
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	rmtSetTick, .Lfunc_end0-rmtSetTick
                                        // -- End function
	.type	RMT,@object                     // @RMT
	.bss
	.globl	RMT
	.p2align	3
RMT:
	.zero	8
	.size	RMT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _LIMIT
	.addrsig_sym _ABS
	.addrsig_sym RMT