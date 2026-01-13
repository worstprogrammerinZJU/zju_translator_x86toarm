	.text
	.p2align	4, 0x90                         # -- Begin function lua_g_checksum_md5
lua_g_checksum_md5:                     # @lua_g_checksum_md5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-16(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -24(%rbp)
	movl	G_CHECKSUM_MD5(%rip), %edi
	callq	g_checksum_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	g_checksum_update@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	g_checksum_get_string@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushstring@PLT
	movq	-32(%rbp), %rdi
	callq	g_checksum_free@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	G_CHECKSUM_MD5
	.p2align	2
G_CHECKSUM_MD5:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_checksum_md5
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_checksum_new
	.addrsig_sym g_checksum_update
	.addrsig_sym lua_pushstring
	.addrsig_sym g_checksum_get_string
	.addrsig_sym g_checksum_free
	.addrsig_sym G_CHECKSUM_MD5