	.text
	.globl	jv_dump                         // -- Begin function jv_dump
	.p2align	2
	.type	jv_dump,@function
jv_dump:                                // @jv_dump
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w0, [x29, #-4]
	adrp	x8, stdout
	ldr	w1, [x8, :lo12:stdout]
	ldr	w2, [sp, #8]
	bl	jv_dumpf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_dump, .Lfunc_end0-jv_dump
                                        // -- End function
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dumpf
	.addrsig_sym stdout