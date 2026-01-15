	.text
	.p2align	2                               // -- Begin function parse_size_t
	.type	parse_size_t,@function
parse_size_t:                           // @parse_size_t
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	add	x2, sp, #8
	sub	x3, x29, #10
	bl	sscanf
	sturb	w0, [x29, #-9]
	ldurb	w9, [x29, #-9]
	mov	w8, #1
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	warnx
	mov	w0, #5
	bl	usage
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_size_t, .Lfunc_end0-parse_size_t
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%zu%c"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"invalid size: %s"
	.size	.L.str.1, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_size_t
	.addrsig_sym sscanf
	.addrsig_sym warnx
	.addrsig_sym usage