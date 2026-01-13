	.text
	.p2align	4, 0x90                         # -- Begin function sort_cmp
sort_cmp:                               # @sort_cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	4(%rax), %edi
	callq	jv_copy@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_cmp@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_cmp
	.addrsig_sym jv_cmp
	.addrsig_sym jv_copy