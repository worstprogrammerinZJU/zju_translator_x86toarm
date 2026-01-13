	.text
	.globl	jv_false                        // -- Begin function jv_false
	.p2align	2
	.type	jv_false,@function
jv_false:                               // @jv_false
// %bb.0:
	adrp	x8, JV_FALSE
	ldr	w0, [x8, :lo12:JV_FALSE]
	ret
.Lfunc_end0:
	.size	jv_false, .Lfunc_end0-jv_false
                                        // -- End function
	.type	JV_FALSE,@object                // @JV_FALSE
	.bss
	.globl	JV_FALSE
	.p2align	2
JV_FALSE:
	.word	0                               // 0x0
	.size	JV_FALSE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_FALSE