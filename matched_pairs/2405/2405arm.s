	.text
	.globl	ctbench_put_delete_8192         // -- Begin function ctbench_put_delete_8192
	.p2align	2
	.type	ctbench_put_delete_8192,@function
ctbench_put_delete_8192:                // @ctbench_put_delete_8192
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #8192
	mov	w4, wzr
	mov	w2, w4
	mov	w3, w4
	bl	bench_put_delete_size
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ctbench_put_delete_8192, .Lfunc_end0-ctbench_put_delete_8192
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size