	.text
	.globl	update_network                  # -- Begin function update_network
	.p2align	4, 0x90
update_network:                         # @update_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movl	-64(%rbp), %eax
	imull	-60(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_current_rate@PLT
	movl	%eax, -88(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -76(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdi
	movups	-128(%rbp), %xmm0
	movups	-112(%rbp), %xmm1
	movups	-96(%rbp), %xmm2
	movq	%rsp, %rcx
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	callq	*%rax
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_current_rate