	.text
	.p2align	4, 0x90                         # -- Begin function do_read_args
do_read_args:                           # @do_read_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, 8(%rcx)
	movb	%al, -33(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %edx
	leaq	-28(%rbp), %rsi
	callq	read_one_arg@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_5:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_8
# %bb.6:
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_8
# %bb.7:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	make_vector@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
.LBB0_8:
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_read_args
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym read_one_arg