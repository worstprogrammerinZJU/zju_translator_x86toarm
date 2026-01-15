	.text
	.p2align	4, 0x90                         # -- Begin function read_alignas
read_alignas:                           # @read_alignas
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
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB0_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
	movl	%eax, -4(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_alignas
	.addrsig_sym expect
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym read_intexpr