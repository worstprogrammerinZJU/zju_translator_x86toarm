	.text
	.globl	image_distance                  # -- Begin function image_distance
	.p2align	4, 0x90
image_distance:                         # @image_distance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	leaq	40(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	$1, %ecx
	callq	make_image@PLT
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	4(%rdx), %ecx
	imull	(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rdx), %rcx
	movl	-4(%rbp), %esi
	imull	4(%rdx), %esi
	imull	(%rdx), %esi
	addl	-8(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rcx,%rsi,8), %rdi
	movq	16(%rax), %rax
	movl	-4(%rbp), %ecx
	imull	4(%rdx), %ecx
	imull	(%rdx), %ecx
	addl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	(%rax,%rcx,8), %rdi
	movl	$2, %esi
	callq	pow@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	addq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movl	$0, -8(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	4(%rdx), %ecx
	imull	(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	sqrt@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym pow
	.addrsig_sym sqrt