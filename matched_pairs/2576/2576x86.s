	.text
	.globl	parse_csv_line                  # -- Begin function parse_csv_line
	.p2align	4, 0x90
parse_csv_line:                         # @parse_csv_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_list@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$34, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$44, %eax
	jne	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	copy_string@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	list_insert@PLT
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	copy_string@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	list_insert@PLT
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_list
	.addrsig_sym list_insert
	.addrsig_sym copy_string