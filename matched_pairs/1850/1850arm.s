	.text
	.p2align	2                               // -- Begin function read_alignas
	.type	read_alignas,@function
read_alignas:                           // @read_alignas
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #40
	bl	expect
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	read_cast_type
	ldr	w0, [x0]
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	bl	read_intexpr
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	mov	w0, #41
	bl	expect
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_alignas, .Lfunc_end0-read_alignas
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_alignas
	.addrsig_sym expect
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym read_intexpr