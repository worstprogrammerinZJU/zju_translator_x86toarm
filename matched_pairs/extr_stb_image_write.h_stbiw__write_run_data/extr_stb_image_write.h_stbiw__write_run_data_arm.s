	.text
	.globl	stbiw__write_run_data           // -- Begin function stbiw__write_run_data
	.p2align	2
	.type	stbiw__write_run_data,@function
stbiw__write_run_data:                  // @stbiw__write_run_data
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	sub	x8, x29, #13
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	sturb	w2, [x29, #-13]
	ldur	w8, [x29, #-12]
	add	w0, w8, #128
	bl	STBIW_UCHAR
	sub	x8, x29, #14
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	sturb	w0, [x29, #-14]
	ldur	w8, [x29, #-12]
	add	w8, w8, #128
	subs	w8, w8, #255
	cset	w8, le
	mov	w9, #1
	stur	w9, [x29, #-20]                 // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	STBIW_ASSERT
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w2, [x29, #-20]                 // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	blr	x8
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w2, [x29, #-20]                 // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	blr	x8
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbiw__write_run_data, .Lfunc_end0-stbiw__write_run_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym STBIW_ASSERT