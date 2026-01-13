	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function maybe_rehash
.LCPI0_0:
	.xword	0x3fd6666666666666              // double 0.34999999999999998
.LCPI0_1:
	.xword	0x3fe6666666666666              // double 0.69999999999999996
	.text
	.p2align	2
	.type	maybe_rehash,@function
maybe_rehash:                           // @maybe_rehash
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, INIT_SIZE
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:INIT_SIZE]
	mov	w1, #8
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9]
	ldr	w0, [x8, :lo12:INIT_SIZE]
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	x0, [x9, #8]
	ldr	w8, [x8, :lo12:INIT_SIZE]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	b	.LBB0_20
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	d0, [x8, #24]
	ldur	x8, [x29, #-8]
	ldr	s2, [x8, #16]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	adrp	x8, .LCPI0_1
	ldr	d2, [x8, :lo12:.LCPI0_1]
	fmul	d1, d1, d2
	fcmp	d0, d1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_20
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	d0, [x8, #32]
	ldur	x8, [x29, #-8]
	ldr	s2, [x8, #16]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	adrp	x8, .LCPI0_0
	ldr	d2, [x8, :lo12:.LCPI0_0]
	fmul	d1, d1, d2
	fcmp	d0, d1
	b.pl	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	lsl	w8, w8, #1
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	stur	w8, [x29, #-12]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	stur	x0, [x29, #-24]
	ldur	w0, [x29, #-12]
	bl	calloc
	stur	x0, [x29, #-32]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #1
	stur	w8, [x29, #-36]
	str	wzr, [sp, #40]
	b	.LBB0_8
.LBB0_8:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_13 Depth 2
	ldr	w8, [sp, #40]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, TOMBSTONE
	ldr	x9, [x9, :lo12:TOMBSTONE]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_18
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #40]
	ldr	x0, [x8, x9, lsl #3]
	bl	hash
	ldur	w8, [x29, #-36]
	and	w8, w0, w8
	str	w8, [sp, #36]
	b	.LBB0_13
.LBB0_13:                               //   Parent Loop BB0_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #36]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=2
	b	.LBB0_16
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-24]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	ldur	x9, [x29, #-32]
	ldrsw	x10, [sp, #36]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_13 Depth=2
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	ldur	w9, [x29, #-36]
	and	w8, w8, w9
	str	w8, [sp, #36]
	b	.LBB0_13
.LBB0_17:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_8
.LBB0_19:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	b	.LBB0_20
.LBB0_20:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	maybe_rehash, .Lfunc_end0-maybe_rehash
                                        // -- End function
	.type	INIT_SIZE,@object               // @INIT_SIZE
	.bss
	.globl	INIT_SIZE
	.p2align	2
INIT_SIZE:
	.word	0                               // 0x0
	.size	INIT_SIZE, 4
	.type	TOMBSTONE,@object               // @TOMBSTONE
	.globl	TOMBSTONE
	.p2align	3
TOMBSTONE:
	.xword	0
	.size	TOMBSTONE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_rehash
	.addrsig_sym calloc
	.addrsig_sym hash
	.addrsig_sym INIT_SIZE
	.addrsig_sym TOMBSTONE