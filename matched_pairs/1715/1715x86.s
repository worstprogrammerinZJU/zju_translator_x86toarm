	.text
	.p2align	4, 0x90                         # -- Begin function lua_password_unscramble
lua_password_unscramble:                # @lua_password_unscramble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-16(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	leaq	-32(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	$3, %esi
	leaq	-48(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	network_mysqld_proto_password_unscramble@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rdi
	callq	S@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushlstring@PLT
	movq	-64(%rbp), %rdi
	movl	TRUE(%rip), %esi
	callq	g_string_free@PLT
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_password_unscramble
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_password_unscramble
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym TRUE