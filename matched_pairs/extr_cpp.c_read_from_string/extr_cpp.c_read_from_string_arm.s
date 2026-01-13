	.text
	.globl	read_from_string                // -- Begin function read_from_string
	.p2align	2
	.type	read_from_string,@function
read_from_string:                       // @read_from_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	make_file_string
	bl	stream_stash
	bl	read_toplevels
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	vec_len
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	vec_get
	bl	emit_toplevel
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	bl	stream_unstash
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_from_string, .Lfunc_end0-read_from_string
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_stash
	.addrsig_sym make_file_string
	.addrsig_sym read_toplevels
	.addrsig_sym vec_len
	.addrsig_sym emit_toplevel
	.addrsig_sym vec_get
	.addrsig_sym stream_unstash