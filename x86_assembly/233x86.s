	.text
	.p2align	4, 0x90                         # -- Begin function chassis_stats_setluaval
chassis_stats_setluaval:                # @chassis_stats_setluaval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	GPOINTER_TO_UINT@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_istable@PLT
	movl	%eax, %edi
	callq	g_assert@PLT
	movq	-48(%rbp), %rdi
	movl	$2, %esi
	callq	lua_checkstack@PLT
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lua_pushstring@PLT
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	lua_pushinteger@PLT
	movq	-48(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_settable@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym chassis_stats_setluaval
	.addrsig_sym GPOINTER_TO_UINT
	.addrsig_sym g_assert
	.addrsig_sym lua_istable
	.addrsig_sym lua_checkstack
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_settable