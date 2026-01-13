	.text
	.globl	swr_set_channel_mapping         # -- Begin function swr_set_channel_mapping
	.p2align	4, 0x90
swr_set_channel_mapping:                # @swr_set_channel_mapping
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_3
.LBB0_2:
	movl	EINVAL(%rip), %edi
	callq	AVERROR@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$0, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
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
	.addrsig_sym EINVAL