	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function forward_crop_layer
.LCPI0_0:
	.long	0xbf800000                      # float -1
.LCPI0_1:
	.long	0x40000000                      # float 2
.LCPI0_2:
	.long	0x3f800000                      # float 1
	.text
	.globl	forward_crop_layer
	.p2align	4, 0x90
forward_crop_layer:                     # @forward_crop_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	16(%rbp), %rcx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -48(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, 40(%rcx)
	movb	%al, -69(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	rand@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	setne	%al
	movb	%al, -69(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-69(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movq	-80(%rbp), %rdx                 # 8-byte Reload
	movl	(%rdx), %ecx
	subl	4(%rdx), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -56(%rbp)
	movb	$0, %al
	callq	rand@PLT
	movq	-80(%rbp), %rdx                 # 8-byte Reload
	movl	8(%rdx), %ecx
	subl	12(%rdx), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -60(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	cmpq	$0, 32(%rax)
	je	.LBB0_4
# %bb.3:
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
.LBB0_4:
	cmpl	$0, -8(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	$0, -52(%rbp)
	movl	(%rcx), %eax
	subl	4(%rcx), %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	%eax, -56(%rbp)
	movl	8(%rcx), %eax
	subl	12(%rcx), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -60(%rbp)
.LBB0_6:
	movl	$0, -32(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	-32(%rbp), %eax
	cmpl	16(%rcx), %eax
	jge	.LBB0_25
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$0, -28(%rbp)
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_23
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$0, -20(%rbp)
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_13 Depth 4
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_21
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movl	$0, -24(%rbp)
.LBB0_13:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=4
	cmpl	$0, -52(%rbp)
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=4
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %eax
	subl	-60(%rbp), %eax
	subl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=4
	movl	-24(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=4
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %ecx
	movl	8(%rax), %edx
	movl	-36(%rbp), %esi
	movl	(%rax), %edi
	movl	-28(%rbp), %r8d
	movl	20(%rax), %r9d
	imull	-32(%rbp), %r9d
	addl	%r9d, %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	24(%rax), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_13
.LBB0_19:                               #   in Loop: Header=BB0_11 Depth=3
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_9
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_25:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand