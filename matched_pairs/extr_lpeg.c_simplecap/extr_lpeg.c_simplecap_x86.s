	.text
	.p2align	4, 0x90                         # -- Begin function simplecap
simplecap:                              # @simplecap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	lua_pushnil@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	pushallcaptures@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	xorl	%esi, %esi
	subl	%eax, %esi
	callq	lua_replace@PLT
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simplecap
	.addrsig_sym lua_pushnil
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_replace