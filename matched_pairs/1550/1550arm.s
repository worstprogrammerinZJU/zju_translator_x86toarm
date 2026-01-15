	.text
	.p2align	2                               // -- Begin function adddyncaptures
	.type	adddyncaptures,@function
adddyncaptures:                         // @adddyncaptures
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	adrp	x8, Cruntime
	ldr	x10, [x8, :lo12:Cruntime]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #12]
	mov	w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	mov	x11, #24
	mul	x9, x9, x11
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	x8, [x9, #16]
	adrp	x8, Cruntime
	ldr	x8, [x8, :lo12:Cruntime]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	str	x8, [x9, x10]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	add	w8, w8, w9
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #12]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_6:
	adrp	x8, Cclose
	ldr	x8, [x8, :lo12:Cclose]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	x11, #24
	mul	x10, x10, x11
	str	x8, [x9, x10]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	mul	x9, x9, x11
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	adddyncaptures, .Lfunc_end0-adddyncaptures
                                        // -- End function
	.type	Cruntime,@object                // @Cruntime
	.bss
	.globl	Cruntime
	.p2align	3
Cruntime:
	.xword	0                               // 0x0
	.size	Cruntime, 8
	.type	Cclose,@object                  // @Cclose
	.globl	Cclose
	.p2align	3
Cclose:
	.xword	0                               // 0x0
	.size	Cclose, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym adddyncaptures
	.addrsig_sym assert
	.addrsig_sym Cruntime
	.addrsig_sym Cclose