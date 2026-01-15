	.text
	.p2align	4, 0x90                         # -- Begin function squash_unnamed_struct
squash_unnamed_struct:                  # @squash_unnamed_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	dict_keys@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-60(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movq	-48(%rbp), %rsi
	callq	dict_get@PLT
	movl	%eax, %edi
	callq	copy_type@PLT
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %ecx
	movq	-56(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	dict_put@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_keys
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym copy_type
	.addrsig_sym dict_get
	.addrsig_sym dict_put