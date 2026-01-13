	.text
	.p2align	4, 0x90                         # -- Begin function addpatt
addpatt:                                # @addpatt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_touserdata@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	pattsize@PLT
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	jointable@PLT
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	addl	$1, %edx
	callq	copypatt@PLT
	cmpl	$0, -40(%rbp)
	je	.LBB0_9
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-48(%rbp), %rdi
	callq	isfenvoff@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movslq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-48(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_2
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym addpatt
	.addrsig_sym lua_touserdata
	.addrsig_sym pattsize
	.addrsig_sym jointable
	.addrsig_sym copypatt
	.addrsig_sym isfenvoff
	.addrsig_sym sizei