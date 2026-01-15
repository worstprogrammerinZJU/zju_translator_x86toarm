	.text
	.globl	jv_invalid                      // -- Begin function jv_invalid
	.p2align	2
	.type	jv_invalid,@function
jv_invalid:                             // @jv_invalid
// %bb.0:
	adrp	x8, JV_INVALID
	ldr	w0, [x8, :lo12:JV_INVALID]
	ret
.Lfunc_end0:
	.size	jv_invalid, .Lfunc_end0-jv_invalid
                                        // -- End function
	.type	JV_INVALID,@object              // @JV_INVALID
	.bss
	.globl	JV_INVALID
	.p2align	2
JV_INVALID:
	.word	0                               // 0x0
	.size	JV_INVALID, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_INVALID