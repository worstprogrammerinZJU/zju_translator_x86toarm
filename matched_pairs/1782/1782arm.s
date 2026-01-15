	.text
	.globl	visualize_network               // -- Begin function visualize_network
	.p2align	2
	.type	visualize_network,@function
visualize_network:                      // @visualize_network
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	stur	x0, [x29, #-8]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w2, [x29, #-20]
	add	x0, sp, #12
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x8, [sp]
	adrp	x9, CONVOLUTIONAL
	ldr	x9, [x9, :lo12:CONVOLUTIONAL]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x2, [x29, #-16]
	ldr	x0, [sp]
	add	x1, sp, #12
	bl	visualize_convolutional_layer
	stur	x0, [x29, #-16]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_6:
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	visualize_network, .Lfunc_end0-visualize_network
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Layer %d"
	.size	.L.str, 9
	.type	CONVOLUTIONAL,@object           // @CONVOLUTIONAL
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	CONVOLUTIONAL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym visualize_convolutional_layer
	.addrsig_sym CONVOLUTIONAL