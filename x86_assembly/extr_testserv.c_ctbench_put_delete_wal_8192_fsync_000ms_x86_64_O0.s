	.text
	.globl	ctbench_put_delete_wal_8192_fsync_000ms # -- Begin function ctbench_put_delete_wal_8192_fsync_000ms
	.p2align	4, 0x90
ctbench_put_delete_wal_8192_fsync_000ms: # @ctbench_put_delete_wal_8192_fsync_000ms
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$8192, %esi                     # imm = 0x2000
	movl	$512000, %edx                   # imm = 0x7D000
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	bench_put_delete_size@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size