	.text
	.globl	jv_dump_string                  // -- Begin function jv_dump_string
	.p2align	2
	.type	jv_dump_string,@function
jv_dump_string:                         // @jv_dump_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string
	sub	x8, x29, #12
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w0, [x29, #-12]
	bl	tsd_dtoa_context_get
	ldr	x5, [sp, #8]                    // 8-byte Folded Reload
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	mov	w4, wzr
	mov	w3, w4
	bl	jv_dump_term
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_dump_string, .Lfunc_end0-jv_dump_string
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_string
	.addrsig_sym jv_dump_term
	.addrsig_sym tsd_dtoa_context_get