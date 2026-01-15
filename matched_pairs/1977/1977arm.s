	.text
	.globl	parse_avgpool                   // -- Begin function parse_avgpool
	.p2align	2
	.type	parse_avgpool,@function
parse_avgpool:                          // @parse_avgpool
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x0, [sp, #24]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #16]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #20]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #20]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	ldr	w3, [sp, #8]
	bl	make_avgpool_layer
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	parse_avgpool, .Lfunc_end0-parse_avgpool
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Layer before avgpool layer must output image."
	.size	.L.str, 46
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym error
	.addrsig_sym make_avgpool_layer