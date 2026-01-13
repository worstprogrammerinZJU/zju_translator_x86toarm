	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_append_challenge_packet
lua_proto_append_challenge_packet:      # @lua_proto_append_challenge_packet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	LUA_TTABLE(%rip), %edx
	movl	$1, %esi
	callq	luaL_checktype@PLT
	movb	$0, %al
	callq	network_mysqld_auth_challenge_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	protocol_version(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	server_version(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	thread_id(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	capabilities(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	charset(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	server_status(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	challenge(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	network_mysqld_proto_append_auth_challenge@PLT
	movq	-24(%rbp), %rdi
	callq	network_mysqld_auth_challenge_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	S@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushlstring@PLT
	movq	-16(%rbp), %rdi
	movl	TRUE(%rip), %esi
	callq	g_string_free@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.long	0                               # 0x0
	.globl	protocol_version
	.p2align	2
protocol_version:
	.long	0                               # 0x0
	.globl	server_version
	.p2align	2
server_version:
	.long	0                               # 0x0
	.globl	thread_id
	.p2align	2
thread_id:
	.long	0                               # 0x0
	.globl	capabilities
	.p2align	2
capabilities:
	.long	0                               # 0x0
	.globl	charset
	.p2align	2
charset:
	.long	0                               # 0x0
	.globl	server_status
	.p2align	2
server_status:
	.long	0                               # 0x0
	.globl	challenge
	.p2align	2
challenge:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_challenge_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_auth_challenge_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_append_auth_challenge
	.addrsig_sym network_mysqld_auth_challenge_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym protocol_version
	.addrsig_sym server_version
	.addrsig_sym thread_id
	.addrsig_sym capabilities
	.addrsig_sym charset
	.addrsig_sym server_status
	.addrsig_sym challenge
	.addrsig_sym TRUE