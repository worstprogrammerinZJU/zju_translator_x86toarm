	.text
	.p2align	2                               // -- Begin function process
	.type	process,@function
process:                                // @process
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	str	x5, [sp, #48]
	ldur	x8, [x29, #-8]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-8]
	mov	w0, w8
	ldur	x8, [x29, #-32]
	ldr	w1, [x8, #4]
	bl	soxr_set_num_channels
	mov	w1, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	soxr_set_error
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	mov	w0, w8
	ldur	x8, [x29, #-32]
	ldr	w1, [x8]
	ldursw	x2, [x29, #-36]
	ldur	x8, [x29, #-16]
	ldr	w4, [x8]
	ldursw	x5, [x29, #-20]
	add	x3, sp, #40
	add	x6, sp, #32
	bl	soxr_process
	str	x0, [sp, #24]
	b	.LBB0_3
.LBB0_2:
	str	xzr, [sp, #40]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	x8, #-1
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w0, w8
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	process, .Lfunc_end0-process
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process
	.addrsig_sym soxr_set_error
	.addrsig_sym soxr_set_num_channels
	.addrsig_sym soxr_process