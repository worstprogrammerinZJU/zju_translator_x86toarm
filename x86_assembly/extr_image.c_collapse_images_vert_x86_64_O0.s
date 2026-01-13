	.text
	.globl	collapse_images_vert            # -- Begin function collapse_images_vert
	.p2align	4, 0x90
collapse_images_vert:                   # @collapse_images_vert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	addl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB0_2
# %bb.1:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_3
.LBB0_2:
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	imull	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$1, -48(%rbp)
.LBB0_3:
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -68(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_15
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %ecx
	movl	-36(%rbp), %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rax
	movslq	-68(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	8(%rax,%rcx,4), %edx
	movl	%edx, -96(%rbp)
	movq	(%rax,%rcx,4), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	copy_image@PLT
	movl	%edx, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-136(%rbp), %rdi
	movl	-128(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rdx
	movl	-144(%rbp), %ecx
	xorl	%r8d, %r8d
	callq	embed_image@PLT
	jmp	.LBB0_13
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, -72(%rbp)
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	-36(%rbp), %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-72(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movl	-176(%rbp), %esi
	callq	get_image_layer@PLT
	movl	%edx, -192(%rbp)
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-156(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movq	-168(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-160(%rbp), %eax
	movl	%eax, -208(%rbp)
	movq	-216(%rbp), %rdi
	movl	-208(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -224(%rbp)
	movq	-232(%rbp), %rdx
	movl	-224(%rbp), %ecx
	callq	embed_image@PLT
	movq	-168(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-160(%rbp), %eax
	movl	%eax, -240(%rbp)
	movq	-248(%rbp), %rdi
	movl	-240(%rbp), %esi
	callq	free_image@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-264(%rbp), %rdi
	movl	-256(%rbp), %esi
	callq	free_image@PLT
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_4
.LBB0_15:
	movl	-8(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movl	-272(%rbp), %edx
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym copy_image
	.addrsig_sym embed_image
	.addrsig_sym get_image_layer
	.addrsig_sym free_image