	.text
	.globl	load_network                    # -- Begin function load_network
	.p2align	4, 0x90
load_network:                           # @load_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_network_cfg@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	load_weights@PLT
.LBB0_3:
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
.LBB0_5:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_network_cfg
	.addrsig_sym load_weights