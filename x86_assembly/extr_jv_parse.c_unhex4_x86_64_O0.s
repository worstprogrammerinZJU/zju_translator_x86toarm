	.text
	.p2align	4, 0x90                         # -- Begin function unhex4
unhex4:                                 # @unhex4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -24(%rbp)
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %al
	movb	%al, -25(%rbp)
	movsbl	-25(%rbp), %ecx
	movl	$48, %eax
	cmpl	%ecx, %eax
	jg	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %ecx
	movl	$97, %eax
	cmpl	%ecx, %eax
	jg	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$102, %eax
	jg	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_13
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %ecx
	movl	$65, %eax
	cmpl	%ecx, %eax
	jg	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$70, %eax
	jg	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unhex4