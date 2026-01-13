	.text
	.p2align	4, 0x90                         # -- Begin function update_union_offset
update_union_offset:                    # @update_union_offset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movb	$0, %al
	callq	make_dict@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	36(%rax), %esi
	callq	MAX@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-72(%rbp), %rax
	movl	32(%rax), %esi
	callq	MAX@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	xorl	%edx, %edx
	callq	squash_unnamed_struct@PLT
	jmp	.LBB0_10
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	jl	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	dict_put@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	movl	-80(%rbp), %ecx                 # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_union_offset
	.addrsig_sym make_dict
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym MAX
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_put
	.addrsig_sym compute_padding
	.addrsig_sym KIND_STRUCT