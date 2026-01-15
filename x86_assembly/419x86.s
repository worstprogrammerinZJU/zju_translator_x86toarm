	.text
	.p2align	4, 0x90                         # -- Begin function make_token_pushback
make_token_pushback:                    # @make_token_pushback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	copy_token@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	ENC_NONE(%rip), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rdi
	callq	unget_token@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_token_pushback
	.addrsig_sym copy_token
	.addrsig_sym strlen
	.addrsig_sym unget_token
	.addrsig_sym ENC_NONE