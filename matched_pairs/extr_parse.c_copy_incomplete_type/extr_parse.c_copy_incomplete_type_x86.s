	.text
	.p2align	4, 0x90                         # -- Begin function copy_incomplete_type
copy_incomplete_type:                   # @copy_incomplete_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	copy_type@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB0_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_incomplete_type
	.addrsig_sym copy_type