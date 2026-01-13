	.text
	.globl	jq_dump_disassembly             // -- Begin function jq_dump_disassembly
	.p2align	2
	.type	jq_dump_disassembly,@function
jq_dump_disassembly:                    // @jq_dump_disassembly
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	dump_disassembly
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_dump_disassembly, .Lfunc_end0-jq_dump_disassembly
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dump_disassembly