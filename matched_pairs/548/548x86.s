	.text
	.globl	load_rle                        # -- Begin function load_rle
	.p2align	4, 0x90
load_rle:                               # @load_rle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -28(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edx
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -16(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	imull	16(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-20(%rbp), %edx
	movq	(%rax), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig