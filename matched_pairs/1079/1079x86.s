	.text
	.globl	collapse_images_horz            # -- Begin function collapse_images_horz
	.p2align	4, 0x90
collapse_images_horz:                   # @collapse_images_horz
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
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	addl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB0_2
# %bb.1:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_3
.LBB0_2:
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	imull	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$1, -48(%rbp)
.LBB0_3:
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -76(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_15
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-36(%rbp), %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	8(%rax,%rcx,4), %edx
	movl	%edx, -104(%rbp)
	movq	(%rax,%rcx,4), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	copy_image@PLT
	movl	%edx, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$3, -48(%rbp)
	jne	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-84(%rbp), %r8d
	movq	-96(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdx
	movl	-152(%rbp), %ecx
	xorl	%r9d, %r9d
	callq	embed_image@PLT
	jmp	.LBB0_13
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$0, -80(%rbp)
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-80(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-36(%rbp), %edx
	addl	%edx, %ecx
	imull	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-80(%rbp), %edx
	movl	-88(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movl	-184(%rbp), %esi
	callq	get_image_layer@PLT
	movl	%edx, -200(%rbp)
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-84(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movq	-176(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -216(%rbp)
	movq	-224(%rbp), %rdi
	movl	-216(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-240(%rbp), %rdx
	movl	-232(%rbp), %ecx
	callq	embed_image@PLT
	movq	-176(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -248(%rbp)
	movq	-256(%rbp), %rdi
	movl	-248(%rbp), %esi
	callq	free_image@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -264(%rbp)
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	callq	free_image@PLT
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_4
.LBB0_15:
	movl	-8(%rbp), %eax
	movl	%eax, -280(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movl	-280(%rbp), %edx
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