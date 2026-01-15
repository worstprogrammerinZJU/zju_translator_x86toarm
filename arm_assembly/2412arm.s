	.text
	.globl	ctbench_put_delete_wal_8192_fsync_050ms // -- Begin function ctbench_put_delete_wal_8192_fsync_050ms
	.p2align	2
	.type	ctbench_put_delete_wal_8192_fsync_050ms,@function
ctbench_put_delete_wal_8192_fsync_050ms: // @ctbench_put_delete_wal_8192_fsync_050ms
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #8192
	mov	w2, #53248
	movk	w2, #7, lsl #16
	mov	w3, #1
	mov	w4, #100
	bl	bench_put_delete_size
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ctbench_put_delete_wal_8192_fsync_050ms, .Lfunc_end0-ctbench_put_delete_wal_8192_fsync_050ms
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size