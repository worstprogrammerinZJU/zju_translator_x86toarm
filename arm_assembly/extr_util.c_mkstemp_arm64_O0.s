	.text
	.globl	mkstemp                         // -- Begin function mkstemp
	.p2align	2
	.type	mkstemp,@function
mkstemp:                                // @mkstemp
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	strlen
	stur	x0, [x29, #-16]
	mov	w8, #5
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-16]
	add	x0, x8, #1
	bl	alloca
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	strcpy
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	strcpy
	ldur	x0, [x29, #-8]
	bl	mktemp
	ldur	x0, [x29, #-8]
	adrp	x8, O_CREAT
	ldr	w8, [x8, :lo12:O_CREAT]
	adrp	x9, O_EXCL
	ldr	w9, [x9, :lo12:O_EXCL]
	orr	w8, w8, w9
	adrp	x9, O_RDWR
	ldr	w9, [x9, :lo12:O_RDWR]
	orr	w1, w8, w9
	mov	w2, #384
	bl	open
	str	w0, [sp, #24]
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #24]
	mov	w8, #0
	adds	w9, w9, #1
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	subs	w9, w8, #1
	stur	w9, [x29, #-20]
	subs	w8, w8, #0
	cset	w8, gt
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbnz	w8, #0, .LBB0_1
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	mkstemp, .Lfunc_end0-mkstemp
                                        // -- End function
	.type	O_CREAT,@object                 // @O_CREAT
	.bss
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.word	0                               // 0x0
	.size	O_CREAT, 4
	.type	O_EXCL,@object                  // @O_EXCL
	.globl	O_EXCL
	.p2align	2
O_EXCL:
	.word	0                               // 0x0
	.size	O_EXCL, 4
	.type	O_RDWR,@object                  // @O_RDWR
	.globl	O_RDWR
	.p2align	2
O_RDWR:
	.word	0                               // 0x0
	.size	O_RDWR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym alloca
	.addrsig_sym assert
	.addrsig_sym strcpy
	.addrsig_sym mktemp
	.addrsig_sym open
	.addrsig_sym O_CREAT
	.addrsig_sym O_EXCL
	.addrsig_sym O_RDWR