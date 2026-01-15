	.text
	.globl	ctbench_put_delete_wal_1024_no_fsync # -- Begin function ctbench_put_delete_wal_1024_no_fsync
	.p2align	4, 0x90
ctbench_put_delete_wal_1024_no_fsync:   # @ctbench_put_delete_wal_1024_no_fsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$1024, %esi                     # imm = 0x400
	movl	$512000, %edx                   # imm = 0x7D000
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	bench_put_delete_size@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size