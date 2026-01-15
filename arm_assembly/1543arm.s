	.text
	.globl	locfile_init                    // -- Begin function locfile_init
	.p2align	2
	.type	locfile_init,@function
locfile_init:                           // @locfile_init
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	w3, [x29, #-28]
	mov	w0, #48
	bl	jv_mem_alloc
	str	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	str	x8, [x9, #40]
	ldur	x0, [x29, #-16]
	bl	jv_string
	ldr	x8, [sp, #24]
	str	w0, [x8, #32]
	ldur	w0, [x29, #-28]
	bl	jv_mem_alloc
	ldr	x8, [sp, #24]
	str	x0, [x8, #24]
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #24]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-28]
	bl	memcpy
	ldur	w8, [x29, #-28]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x9, [sp, #24]
	mov	w8, #1
	str	w8, [x9, #4]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #10
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #4]
	add	w8, w8, #1
	str	w8, [x9, #4]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_6:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #4]
	mov	w9, #1
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	add	w1, w8, #1
	mov	w0, #4
	bl	jv_mem_calloc
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #24]
	str	x0, [x9, #16]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	str	wzr, [x9]
	str	w8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #10
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_12:
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	ldr	x10, [sp, #24]
	ldrsw	x10, [x10, #4]
	str	w8, [x9, x10, lsl #2]
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	locfile_init, .Lfunc_end0-locfile_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym jv_string
	.addrsig_sym memcpy
	.addrsig_sym jv_mem_calloc