	.text
	.p2align	4, 0x90                         # -- Begin function lua_password_check
lua_password_check:                     # @lua_password_check
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
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
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	network_mysqld_proto_password_check@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushboolean@PLT
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_password_check
	.addrsig_sym luaL_checklstring
	.addrsig_sym lua_pushboolean
	.addrsig_sym network_mysqld_proto_password_check