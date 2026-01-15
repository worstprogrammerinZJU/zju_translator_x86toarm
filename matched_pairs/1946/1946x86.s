	.text
	.p2align	4, 0x90                         # -- Begin function same_arith_type
same_arith_type:                        # @same_arith_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	(%rdx), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
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
	.addrsig_sym same_arith_type