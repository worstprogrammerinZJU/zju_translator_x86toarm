	.text
	.p2align	4, 0x90                         # -- Begin function _skip
_skip:                                  # @_skip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdi
	callq	fill_extra_data@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	STATE_SEND_WORD(%rip), %ecx
	callq	reply@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movl	STATE_BITBUCKET(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STATE_SEND_WORD
	.p2align	2
STATE_SEND_WORD:
	.long	0                               # 0x0
	.globl	STATE_BITBUCKET
	.p2align	2
STATE_BITBUCKET:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _skip
	.addrsig_sym fill_extra_data
	.addrsig_sym reply
	.addrsig_sym STATE_SEND_WORD
	.addrsig_sym STATE_BITBUCKET