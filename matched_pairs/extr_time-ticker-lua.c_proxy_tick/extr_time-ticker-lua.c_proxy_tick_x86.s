	.text
	.globl	proxy_tick                      # -- Begin function proxy_tick
	.p2align	4, 0x90
proxy_tick:                             # @proxy_tick
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_pushnumber@PLT
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	lua_pushnumber@PLT
	movl	$2, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday
	.addrsig_sym lua_pushnumber