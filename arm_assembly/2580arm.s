	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function rand_normal
.LCPI0_0:
	.xword	0x2b2bff2ee48e0530              // double 1.0E-100
	.text
	.globl	rand_normal
	.p2align	2
	.type	rand_normal,@function
rand_normal:                            // @rand_normal
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, rand_normal.haveSpare
	ldr	w8, [x8, :lo12:rand_normal.haveSpare]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, rand_normal.haveSpare
	str	wzr, [x8, :lo12:rand_normal.haveSpare]
	adrp	x8, rand_normal.rand1
	ldr	d0, [x8, :lo12:rand_normal.rand1]
	bl	sqrt
	stur	s0, [x29, #-8]                  // 4-byte Folded Spill
	adrp	x8, rand_normal.rand2
	ldr	d0, [x8, :lo12:rand_normal.rand2]
	bl	sin
	fmov	s1, s0
	ldur	s0, [x29, #-8]                  // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	mov	w8, #1
	adrp	x9, rand_normal.haveSpare
	str	w8, [x9, :lo12:rand_normal.haveSpare]
	bl	rand
	adrp	x8, RAND_MAX
	ldr	d1, [x8, :lo12:RAND_MAX]
	scvtf	d1, d1
	fdiv	d0, d0, d1
	adrp	x8, rand_normal.rand1
	str	d0, [x8, :lo12:rand_normal.rand1]
	ldr	d0, [x8, :lo12:rand_normal.rand1]
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fcmp	d0, d1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	adrp	x8, rand_normal.rand1
	str	d0, [x8, :lo12:rand_normal.rand1]
	b	.LBB0_4
.LBB0_4:
	adrp	x8, rand_normal.rand1
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	d0, [x8, :lo12:rand_normal.rand1]
	bl	log
	ldr	x8, [sp]                        // 8-byte Folded Reload
	mov	w9, #-2
	mul	w9, w9, w0
	scvtf	d0, w9
	str	d0, [x8, :lo12:rand_normal.rand1]
	bl	rand
	ldr	x8, [sp]                        // 8-byte Folded Reload
	adrp	x9, RAND_MAX
	ldr	d1, [x9, :lo12:RAND_MAX]
	scvtf	d1, d1
	fdiv	d0, d0, d1
	adrp	x9, TWO_PI
	ldr	d1, [x9, :lo12:TWO_PI]
	fmul	d0, d0, d1
	adrp	x9, rand_normal.rand2
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	str	d0, [x9, :lo12:rand_normal.rand2]
	ldr	d0, [x8, :lo12:rand_normal.rand1]
	bl	sqrt
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	s0, [x29, #-12]                 // 4-byte Folded Spill
	ldr	d0, [x8, :lo12:rand_normal.rand2]
	bl	cos
	fmov	s1, s0
	ldur	s0, [x29, #-12]                 // 4-byte Folded Reload
	fmul	s0, s0, s1
	stur	s0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	rand_normal, .Lfunc_end0-rand_normal
                                        // -- End function
	.type	rand_normal.haveSpare,@object   // @rand_normal.haveSpare
	.local	rand_normal.haveSpare
	.comm	rand_normal.haveSpare,4,4
	.type	rand_normal.rand1,@object       // @rand_normal.rand1
	.local	rand_normal.rand1
	.comm	rand_normal.rand1,8,8
	.type	rand_normal.rand2,@object       // @rand_normal.rand2
	.local	rand_normal.rand2
	.comm	rand_normal.rand2,8,8
	.type	RAND_MAX,@object                // @RAND_MAX
	.bss
	.globl	RAND_MAX
	.p2align	3
RAND_MAX:
	.xword	0                               // 0x0
	.size	RAND_MAX, 8
	.type	TWO_PI,@object                  // @TWO_PI
	.globl	TWO_PI
	.p2align	3
TWO_PI:
	.xword	0x0000000000000000              // double 0
	.size	TWO_PI, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym sin
	.addrsig_sym rand
	.addrsig_sym log
	.addrsig_sym cos
	.addrsig_sym rand_normal.haveSpare
	.addrsig_sym rand_normal.rand1
	.addrsig_sym rand_normal.rand2
	.addrsig_sym RAND_MAX
	.addrsig_sym TWO_PI