	.text
	.p2align	4, 0x90                         # -- Begin function stbi__create_png_image
stbi__create_png_image:                 # @stbi__create_png_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %edx
	movl	$1, %eax
	movl	$2, %ecx
	cmpl	$16, %edx
	cmovel	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %r9d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	stbi__create_png_image_raw@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_20
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %esi
	movl	-48(%rbp), %edx
	xorl	%ecx, %ecx
	callq	stbi__malloc_mad3@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	cmpl	$7, -60(%rbp)
	jge	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	.L__const.stbi__create_png_image.xorig(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.L__const.stbi__create_png_image.xorig+8(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	.L__const.stbi__create_png_image.xorig+16(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	.L__const.stbi__create_png_image.xorig+24(%rip), %eax
	movl	%eax, -72(%rbp)
	movq	.L__const.stbi__create_png_image.yorig(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	.L__const.stbi__create_png_image.yorig+8(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	.L__const.stbi__create_png_image.yorig+16(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	.L__const.stbi__create_png_image.yorig+24(%rip), %eax
	movl	%eax, -104(%rbp)
	movq	.L__const.stbi__create_png_image.xspc(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	.L__const.stbi__create_png_image.xspc+8(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	.L__const.stbi__create_png_image.xspc+16(%rip), %rax
	movq	%rax, -144(%rbp)
	movl	.L__const.stbi__create_png_image.xspc+24(%rip), %eax
	movl	%eax, -136(%rbp)
	movq	.L__const.stbi__create_png_image.yspc(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	.L__const.stbi__create_png_image.yspc+8(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	.L__const.stbi__create_png_image.yspc+16(%rip), %rax
	movq	%rax, -176(%rbp)
	movl	.L__const.stbi__create_png_image.yspc+24(%rip), %eax
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	-60(%rbp), %rcx
	subl	-96(%rbp,%rcx,4), %eax
	movslq	-60(%rbp), %rcx
	addl	-160(%rbp,%rcx,4), %eax
	subl	$1, %eax
	movslq	-60(%rbp), %rcx
	cltd
	idivl	-160(%rbp,%rcx,4)
	movl	%eax, -204(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	movslq	-60(%rbp), %rcx
	subl	-128(%rbp,%rcx,4), %eax
	movslq	-60(%rbp), %rcx
	addl	-192(%rbp,%rcx,4), %eax
	subl	$1, %eax
	movslq	-60(%rbp), %rcx
	cltd
	idivl	-192(%rbp,%rcx,4)
	movl	%eax, -208(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_17
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -208(%rbp)
	je	.LBB0_17
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %eax
	imull	-204(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	addl	$1, %eax
	imull	-208(%rbp), %eax
	movl	%eax, -212(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-204(%rbp), %r8d
	movl	-208(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	-40(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	stbi__create_png_image_raw@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movq	-56(%rbp), %rdi
	callq	STBI_FREE@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_20
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -200(%rbp)
.LBB0_9:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movl	-200(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB0_16
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$0, -196(%rbp)
.LBB0_11:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-200(%rbp), %eax
	movslq	-60(%rbp), %rcx
	imull	-192(%rbp,%rcx,4), %eax
	movslq	-60(%rbp), %rcx
	addl	-128(%rbp,%rcx,4), %eax
	movl	%eax, -216(%rbp)
	movl	-196(%rbp), %eax
	movslq	-60(%rbp), %rcx
	imull	-160(%rbp,%rcx,4), %eax
	movslq	-60(%rbp), %rcx
	addl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -220(%rbp)
	movq	-56(%rbp), %rdi
	movl	-216(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	imull	(%rcx), %eax
	imull	-48(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-220(%rbp), %eax
	imull	-48(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-200(%rbp), %eax
	imull	-204(%rbp), %eax
	addl	-196(%rbp), %eax
	imull	-48(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-48(%rbp), %edx
	callq	memcpy@PLT
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB0_9
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	STBI_FREE@PLT
	movl	-212(%rbp), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	-212(%rbp), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_3
.LBB0_19:
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_20:
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.stbi__create_png_image.xorig:
	.long	0                               # 0x0
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.p2align	4
.L__const.stbi__create_png_image.yorig:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	1                               # 0x1
	.p2align	4
.L__const.stbi__create_png_image.xspc:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.p2align	4
.L__const.stbi__create_png_image.yspc:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__create_png_image
	.addrsig_sym stbi__create_png_image_raw
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym STBI_FREE
	.addrsig_sym memcpy