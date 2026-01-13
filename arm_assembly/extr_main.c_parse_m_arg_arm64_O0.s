	.text
	.p2align	2                               // -- Begin function parse_m_arg
	.type	parse_m_arg,@function
parse_m_arg:                            // @parse_m_arg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parse_m_arg, .Lfunc_end0-parse_m_arg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"64"
	.size	.L.str, 3
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Only 64 is allowed for -m, but got %s"
	.size	.L.str.1, 38
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_m_arg
	.addrsig_sym strcmp
	.addrsig_sym error