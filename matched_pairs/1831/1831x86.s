	.text
	.p2align	4, 0x90                         # -- Begin function is_same_struct
is_same_struct:                         # @is_same_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_7
	jmp	.LBB0_20
.LBB0_20:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_6
	jmp	.LBB0_21
.LBB0_21:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	jne	.LBB0_18
	jmp	.LBB0_3
.LBB0_3:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	24(%rdx), %ecx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	is_same_struct
	cmpl	$0, %eax
	setne	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB0_5:
	movb	-49(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	is_same_struct
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB0_9
# %bb.8:
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	dict_keys@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	dict_keys@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-56(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	je	.LBB0_11
# %bb.10:
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_11:
	movl	$0, -44(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-60(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	is_same_struct
	cmpl	$0, %eax
	jne	.LBB0_15
# %bb.14:
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_12
.LBB0_17:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movl	$1, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_same_struct
	.addrsig_sym dict_keys
	.addrsig_sym vec_len
	.addrsig_sym vec_get