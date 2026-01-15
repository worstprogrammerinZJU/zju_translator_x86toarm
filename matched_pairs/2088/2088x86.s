	.text
	.globl	swr_set_matrix                  # -- Begin function swr_set_matrix
	.p2align	4, 0x90
swr_set_matrix:                         # @swr_set_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_3
.LBB0_2:
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	32(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
.LBB0_6:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	28(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movl	%eax, -52(%rbp)                 # 4-byte Spill
.LBB0_9:
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -40(%rbp)
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_12
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_10
.LBB0_17:
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	movl	$0, -4(%rbp)
.LBB0_18:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AVERROR
	.addrsig_sym memset
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym EINVAL