	.text
	.globl	parse_yolo_mask                 # -- Begin function parse_yolo_mask
	.p2align	4, 0x90
parse_yolo_mask:                        # @parse_yolo_mask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_12
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$44, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_2
.LBB0_7:
	movl	-32(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rdi
	movl	$44, %esi
	callq	strchr@PLT
	addq	$1, %rax
	movq	%rax, -8(%rbp)
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_8
.LBB0_11:
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_12:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym calloc
	.addrsig_sym atoi
	.addrsig_sym strchr