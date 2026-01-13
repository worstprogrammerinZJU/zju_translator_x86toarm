	.text
	.globl	jv_true                         // -- Begin function jv_true
	.p2align	2
	.type	jv_true,@function
jv_true:                                // @jv_true
// %bb.0:
	adrp	x8, JV_TRUE
	ldr	w0, [x8, :lo12:JV_TRUE]
	ret
.Lfunc_end0:
	.size	jv_true, .Lfunc_end0-jv_true
                                        // -- End function
	.type	JV_TRUE,@object                 // @JV_TRUE
	.bss
	.globl	JV_TRUE
	.p2align	2
JV_TRUE:
	.word	0                               // 0x0
	.size	JV_TRUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_TRUE