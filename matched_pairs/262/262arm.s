	.text
	.globl	block_has_main                  // -- Begin function block_has_main
	.p2align	2
	.type	block_has_main,@function
block_has_main:                         // @block_has_main
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TOP
	ldr	x9, [x9, :lo12:TOP]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	str	wzr, [sp, #28]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_has_main, .Lfunc_end0-block_has_main
                                        // -- End function
	.type	TOP,@object                     // @TOP
	.bss
	.globl	TOP
	.p2align	3
TOP:
	.xword	0                               // 0x0
	.size	TOP, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TOP