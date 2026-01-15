	.text
	.p2align	4, 0x90                         # -- Begin function pushallcaptures
pushallcaptures:                        # @pushallcaptures
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, (%rcx)
	movl	%eax, %edi
	callq	isfullcap@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pushsubject@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	pushcapture@PLT
	movq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_7
# %bb.6:
	cmpl	$0, -36(%rbp)
	jne	.LBB0_8
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	(%rax), %rdx
	callq	lua_pushlstring@PLT
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pushallcaptures
	.addrsig_sym isfullcap
	.addrsig_sym pushsubject
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pushlstring