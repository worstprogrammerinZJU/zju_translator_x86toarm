	.text
	.p2align	4, 0x90                         # -- Begin function read_typeof
read_typeof:                            # @read_typeof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	read_cast_type@PLT
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	read_comma_expr@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB0_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_typeof
	.addrsig_sym expect
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym read_comma_expr