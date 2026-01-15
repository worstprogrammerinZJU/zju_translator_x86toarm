	.text
	.p2align	4, 0x90                         # -- Begin function lua_getpid
lua_getpid:                             # @lua_getpid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	getpid@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushinteger@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_getpid
	.addrsig_sym lua_pushinteger
	.addrsig_sym getpid