	.text
	.p2align	4, 0x90                         # -- Begin function split
split:                                  # @split
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	addq	$1, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_18
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_10
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_18:
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym split
	.addrsig_sym malloc