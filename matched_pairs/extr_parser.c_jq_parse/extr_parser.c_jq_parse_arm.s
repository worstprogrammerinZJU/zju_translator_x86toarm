	.text
	.globl	jq_parse                        // -- Begin function jq_parse
	.p2align	2
	.type	jq_parse,@function
jq_parse:                               // @jq_parse
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	w0, wzr
	sub	x1, x29, #20
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	jq_yylex_init_extra
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	ldur	w2, [x29, #-20]
	bl	jq_yy_scan_bytes
	str	w0, [sp, #24]
	add	x8, sp, #20
	str	x8, [sp]                        // 8-byte Folded Spill
	str	wzr, [sp, #20]
	bl	gen_noop
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	yyparse
	ldr	w0, [sp, #24]
	ldur	w1, [x29, #-20]
	bl	jq_yy_delete_buffer
	ldur	w0, [x29, #-20]
	bl	jq_yylex_destroy
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	bl	block_free
	bl	gen_noop
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #20]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jq_parse, .Lfunc_end0-jq_parse
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_yylex_init_extra
	.addrsig_sym jq_yy_scan_bytes
	.addrsig_sym gen_noop
	.addrsig_sym yyparse
	.addrsig_sym jq_yy_delete_buffer
	.addrsig_sym jq_yylex_destroy
	.addrsig_sym block_free