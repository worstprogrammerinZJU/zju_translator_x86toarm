	.text
	.globl	jv_null                         // -- Begin function jv_null
	.p2align	2
	.type	jv_null,@function
jv_null:                                // @jv_null
// %bb.0:
	adrp	x8, JV_NULL
	ldr	w0, [x8, :lo12:JV_NULL]
	ret
.Lfunc_end0:
	.size	jv_null, .Lfunc_end0-jv_null
                                        // -- End function
	.type	JV_NULL,@object                 // @JV_NULL
	.bss
	.globl	JV_NULL
	.p2align	2
JV_NULL:
	.word	0                               // 0x0
	.size	JV_NULL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_NULL