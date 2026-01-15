	.text
	.globl	encode_box                      // -- Begin function encode_box
	.p2align	2
	.type	encode_box,@function
encode_box:                             // @encode_box
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	w8, [sp, #16]
	ldr	w9, [sp]
	subs	w8, w8, w9
	ldr	w9, [sp, #4]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-16]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	ldr	w9, [sp, #12]
	sdiv	w8, w8, w9
	stur	w8, [x29, #-8]
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #4]
	sdiv	w0, w8, w9
	bl	log2
	mov	w8, w0
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	sdiv	w0, w8, w9
	bl	log2
	mov	w8, w0
	stur	w8, [x29, #-4]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	encode_box, .Lfunc_end0-encode_box
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym log2