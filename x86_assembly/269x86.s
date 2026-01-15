	.text
	.globl	block_is_single                 # -- Begin function block_is_single
	.p2align	4, 0x90
block_is_single:                        # @block_is_single
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -16(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig