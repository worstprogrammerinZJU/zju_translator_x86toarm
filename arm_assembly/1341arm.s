	.text
	.p2align	2                               // -- Begin function Bfree
	.type	Bfree,@function
Bfree:                                  // @Bfree
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, Kmax
	ldr	x9, [x9, :lo12:Kmax]
	subs	x8, x8, x9
	b.ls	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	bl	free
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x10, [sp]
	ldr	x10, [x10]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	Bfree, .Lfunc_end0-Bfree
                                        // -- End function
	.type	Kmax,@object                    // @Kmax
	.bss
	.globl	Kmax
	.p2align	3
Kmax:
	.xword	0                               // 0x0
	.size	Kmax, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Bfree
	.addrsig_sym free
	.addrsig_sym Kmax