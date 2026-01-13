	.text
	.globl	draw_label                      # -- Begin function draw_label
	.p2align	4, 0x90
draw_label:                             # @draw_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB0_2
# %bb.1:
	movl	-68(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB0_2:
	movl	$0, -88(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movl	-88(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-80(%rbp), %ecx
	movb	%al, -129(%rbp)                 # 1-byte Spill
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-88(%rbp), %eax
	addl	-68(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setl	%al
	movb	%al, -129(%rbp)                 # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-129(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_18
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -84(%rbp)
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movl	-84(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-76(%rbp), %ecx
	movb	%al, -130(%rbp)                 # 1-byte Spill
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-84(%rbp), %eax
	addl	-72(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setl	%al
	movb	%al, -130(%rbp)                 # 1-byte Spill
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	movb	-130(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_16
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movl	$0, -92(%rbp)
.LBB0_11:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-112(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	get_pixel@PLT
	movss	%xmm0, -96(%rbp)
	movl	-84(%rbp), %edx
	addl	-72(%rbp), %edx
	movl	-88(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movq	16(%rbp), %rax
	movslq	-92(%rbp), %rsi
	movss	(%rax,%rsi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	-96(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	set_pixel@PLT
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_7
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_3
.LBB0_18:
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel