	.text
	.globl	collapse_image_layers           # -- Begin function collapse_image_layers
	.p2align	4, 0x90
collapse_image_layers:                  # @collapse_image_layers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	%edx, -52(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %edx
	imull	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	$1, %edx
	callq	make_image@PLT
	movl	%edx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -76(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	get_image_layer@PLT
	movl	%edx, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-52(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %r9d
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdx
	movl	-152(%rbp), %ecx
	xorl	%r8d, %r8d
	callq	embed_image@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movl	-168(%rbp), %esi
	callq	free_image@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-8(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movl	-184(%rbp), %edx
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_image_layer
	.addrsig_sym embed_image
	.addrsig_sym free_image