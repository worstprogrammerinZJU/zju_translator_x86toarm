	.text
	.globl	censor_image                    # -- Begin function censor_image
	.p2align	4, 0x90
censor_image:                           # @censor_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	$32, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
.LBB0_2:
	cmpl	$0, -8(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	$0, -8(%rbp)
.LBB0_4:
	movl	$0, -28(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_20
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movl	-24(%rbp), %ecx
	movl	-8(%rbp), %edx
	addl	-16(%rbp), %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %eax
	cmpl	4(%rcx), %eax
	setl	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_18
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	-12(%rbp), %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	8(%rcx), %eax
	setl	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=3
	movb	-42(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	movq	-40(%rbp), %r8                  # 8-byte Reload
	movq	16(%r8), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	%eax, %ecx
	imull	-32(%rbp), %ecx
	movl	8(%r8), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movl	-60(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %esi
	movq	-56(%rbp), %rax                 # 8-byte Reload
	imull	-32(%rbp), %esi
	movl	4(%r8), %edi
	imull	-28(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	16(%r8), %rax
	movl	-20(%rbp), %ecx
	movl	8(%r8), %esi
	movl	-24(%rbp), %edi
	movl	4(%r8), %r8d
	imull	-28(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_11
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_5
.LBB0_20:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig