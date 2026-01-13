	.text
	.p2align	4, 0x90                         # -- Begin function push_st_blksize
push_st_blksize:                        # @push_st_blksize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %esi
	callq	lua_pushnumber@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_st_blksize
	.addrsig_sym lua_pushnumber