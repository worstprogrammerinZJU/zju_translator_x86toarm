	.text
	.globl	stbiw__write_dump_data          // -- Begin function stbiw__write_dump_data
	.p2align	2
	.type	stbiw__write_dump_data,@function
stbiw__write_dump_data:                 // @stbiw__write_dump_data
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	ldur	w0, [x29, #-12]
	bl	STBIW_UCHAR
	add	x8, sp, #23
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	strb	w0, [sp, #23]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
	cset	w8, le
	mov	w9, #1
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	STBIW_ASSERT
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	w2, [sp, #16]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	blr	x8
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w0, [x9]
	ldr	x1, [sp, #24]
	ldur	w2, [x29, #-12]
	blr	x8
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbiw__write_dump_data, .Lfunc_end0-stbiw__write_dump_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym STBIW_ASSERT