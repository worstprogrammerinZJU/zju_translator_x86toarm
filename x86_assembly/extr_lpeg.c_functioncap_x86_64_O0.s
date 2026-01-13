	.text
	.p2align	4, 0x90                         # -- Begin function functioncap
functioncap:                            # @functioncap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	lua_gettop@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	pushluaval@PLT
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	pushallcaptures@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	-12(%rbp), %esi
	movl	LUA_MULTRET(%rip), %edx
	callq	lua_call@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	lua_gettop@PLT
	subl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_MULTRET
	.p2align	2
LUA_MULTRET:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym functioncap
	.addrsig_sym lua_gettop
	.addrsig_sym pushluaval
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym LUA_MULTRET