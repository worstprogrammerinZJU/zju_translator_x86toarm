	.text
	.p2align	2                               // -- Begin function read_args
	.type	read_args,@function
read_args:                              // @read_args
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	bl	peek_token
	mov	w1, #41
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	bl	make_vector
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_3:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	do_read_args
	str	x0, [sp]
	ldr	x0, [sp]
	bl	vec_len
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x0, x8
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_args, .Lfunc_end0-read_args
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"macro argument number does not match"
	.size	.L.str, 37
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_args
	.addrsig_sym is_keyword
	.addrsig_sym peek_token
	.addrsig_sym make_vector
	.addrsig_sym do_read_args
	.addrsig_sym vec_len
	.addrsig_sym errort