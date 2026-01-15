	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function border_image
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	border_image
	.p2align	4, 0x90
border_image:                           # @border_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
                                        # implicit-def: $rcx
	movl	%eax, %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
                                        # implicit-def: $rax
	movl	%esi, %eax
	leal	(%rax,%rcx,2), %edi
                                        # implicit-def: $rax
	movl	%edx, %eax
	leal	(%rax,%rcx,2), %esi
	movl	-24(%rbp), %edx
	callq	make_image@PLT
	movl	%edx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -84(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_17
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -80(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_15
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -76(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_13
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %edx
	subl	-52(%rbp), %edx
	movl	-80(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	get_pixel_extend@PLT
	movss	%xmm0, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-80(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-80(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=3
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movss	-88(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %esi
	callq	set_pixel@PLT
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_5
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_3
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_1
.LBB0_17:
	movl	-8(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	-128(%rbp), %edx
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_pixel_extend
	.addrsig_sym set_pixel