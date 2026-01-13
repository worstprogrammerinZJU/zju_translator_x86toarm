	.text
	.globl	lex_string                      // -- Begin function lex_string
	.p2align	2
	.type	lex_string,@function
lex_string:                             // @lex_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	make_file_string
	bl	stream_stash
	bl	do_read_token
	str	x0, [sp, #16]
	mov	w0, #10
	bl	next
	mov	w0, wzr
	bl	get_pos
	str	w0, [sp, #12]
	bl	peek
	adrp	x8, EOF
	ldr	x8, [x8, :lo12:EOF]
	subs	x8, x0, x8
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w0, [sp, #12]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errorp
	b	.LBB0_2
.LBB0_2:
	bl	stream_unstash
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	lex_string, .Lfunc_end0-lex_string
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	3
EOF:
	.xword	0                               // 0x0
	.size	EOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unconsumed input: %s"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_stash
	.addrsig_sym make_file_string
	.addrsig_sym do_read_token
	.addrsig_sym next
	.addrsig_sym get_pos
	.addrsig_sym peek
	.addrsig_sym errorp
	.addrsig_sym stream_unstash
	.addrsig_sym EOF