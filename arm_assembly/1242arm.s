	.text
	.globl	jv_object_iter_valid            // -- Begin function jv_object_iter_valid
	.p2align	2
	.type	jv_object_iter_valid,@function
jv_object_iter_valid:                   // @jv_object_iter_valid
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #8]
	adrp	x9, ITER_FINISHED
	ldr	w9, [x9, :lo12:ITER_FINISHED]
	subs	w8, w8, w9
	cset	w8, ne
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jv_object_iter_valid, .Lfunc_end0-jv_object_iter_valid
                                        // -- End function
	.type	ITER_FINISHED,@object           // @ITER_FINISHED
	.bss
	.globl	ITER_FINISHED
	.p2align	2
ITER_FINISHED:
	.word	0                               // 0x0
	.size	ITER_FINISHED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ITER_FINISHED