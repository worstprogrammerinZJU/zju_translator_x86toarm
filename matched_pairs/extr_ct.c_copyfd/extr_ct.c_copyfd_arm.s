	.text
	.p2align	2                               // -- Begin function copyfd
	.type	copyfd,@function
copyfd:                                 // @copyfd
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1056
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w0, [x29, #-12]
	add	x1, sp, #8
	mov	w2, #1024
	bl	read
	stur	x0, [x29, #-24]
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-8]
	add	x0, sp, #8
	mov	w1, #1
	bl	fwrite
	ldur	x8, [x29, #-24]
	subs	x8, x0, x8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	die
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_5:
	add	sp, sp, #1056
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	copyfd, .Lfunc_end0-copyfd
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fwrite"
	.size	.L.str, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copyfd
	.addrsig_sym read
	.addrsig_sym fwrite
	.addrsig_sym die
	.addrsig_sym errno