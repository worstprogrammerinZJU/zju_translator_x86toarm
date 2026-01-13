	.text
	.p2align	4, 0x90                         # -- Begin function add_hide_set
add_hide_set:                           # @add_hide_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	vec_get@PLT
	movl	%eax, %edi
	callq	copy_token@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	set_union@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	vec_push@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym add_hide_set
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym copy_token
	.addrsig_sym vec_get
	.addrsig_sym set_union
	.addrsig_sym vec_push