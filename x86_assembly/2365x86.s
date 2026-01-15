	.text
	.p2align	4, 0x90                         # -- Begin function shift
shift:                                  # @shift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	av_sample_fmt_is_planar@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movl	-20(%rbp), %edi
	xorl	%esi, %esi
	callq	av_get_alt_sample_fmt@PLT
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	-28(%rbp), %esi                 # 4-byte Reload
	imull	%eax, %esi
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movslq	%esi, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rax,%rcx,8)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	-32(%rbp), %edx                 # 4-byte Reload
	imull	%eax, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym shift
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_alt_sample_fmt
	.addrsig_sym av_get_bytes_per_sample