	.text
	.p2align	4, 0x90                         # -- Begin function update_struct_offset
update_struct_offset:                   # @update_struct_offset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movb	$0, %al
	callq	make_dict@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_19
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
	cmpq	$0, -64(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	MAX@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	finish_bitfield@PLT
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	squash_unnamed_struct@PLT
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_18
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	finish_bitfield@PLT
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB0_18
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 24(%rax)
	jle	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	shll	$3, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %eax
	shll	$3, %eax
	addl	-32(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	movl	-88(%rbp), %eax                 # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-32(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 36(%rax)
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	finish_bitfield@PLT
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 36(%rax)
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	-32(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	finish_bitfield@PLT
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	dict_put@PLT
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	finish_bitfield@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	compute_padding@PLT
	movl	-92(%rbp), %ecx                 # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	addq	$96, %rsp
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
	.addrsig_sym update_struct_offset
	.addrsig_sym make_dict
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym MAX
	.addrsig_sym finish_bitfield
	.addrsig_sym compute_padding
	.addrsig_sym squash_unnamed_struct
	.addrsig_sym dict_put
	.addrsig_sym KIND_STRUCT