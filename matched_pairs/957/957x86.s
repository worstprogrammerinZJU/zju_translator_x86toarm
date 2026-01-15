	.text
	.p2align	4, 0x90                         # -- Begin function classify_args
classify_args:                          # @classify_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$6, -44(%rbp)
	movl	$8, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_14
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	-48(%rbp), %eax
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_13
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	-44(%rbp), %eax
	jge	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym classify_args
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym vec_push
	.addrsig_sym is_flotype
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT