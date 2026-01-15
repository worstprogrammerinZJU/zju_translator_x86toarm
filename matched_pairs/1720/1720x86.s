	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_append_masterinfo_string
lua_proto_append_masterinfo_string:     # @lua_proto_append_masterinfo_string
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
	callq	network_mysqld_masterinfo_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	master_lines(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	master_log_file(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_log_pos(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	master_host(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_user(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_password(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_port(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	master_connect_retry(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_ca(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_capath(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_cert(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_cipher(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_key(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	master_ssl_verify_server_cert(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	network_mysqld_masterinfo_append@PLT
	movq	-24(%rbp), %rdi
	callq	network_mysqld_masterinfo_free@PLT
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
	.globl	master_lines
	.p2align	2
master_lines:
	.long	0                               # 0x0
	.globl	master_log_file
	.p2align	2
master_log_file:
	.long	0                               # 0x0
	.globl	master_log_pos
	.p2align	2
master_log_pos:
	.long	0                               # 0x0
	.globl	master_host
	.p2align	2
master_host:
	.long	0                               # 0x0
	.globl	master_user
	.p2align	2
master_user:
	.long	0                               # 0x0
	.globl	master_password
	.p2align	2
master_password:
	.long	0                               # 0x0
	.globl	master_port
	.p2align	2
master_port:
	.long	0                               # 0x0
	.globl	master_connect_retry
	.p2align	2
master_connect_retry:
	.long	0                               # 0x0
	.globl	master_ssl
	.p2align	2
master_ssl:
	.long	0                               # 0x0
	.globl	master_ssl_ca
	.p2align	2
master_ssl_ca:
	.long	0                               # 0x0
	.globl	master_ssl_capath
	.p2align	2
master_ssl_capath:
	.long	0                               # 0x0
	.globl	master_ssl_cert
	.p2align	2
master_ssl_cert:
	.long	0                               # 0x0
	.globl	master_ssl_cipher
	.p2align	2
master_ssl_cipher:
	.long	0                               # 0x0
	.globl	master_ssl_key
	.p2align	2
master_ssl_key:
	.long	0                               # 0x0
	.globl	master_ssl_verify_server_cert
	.p2align	2
master_ssl_verify_server_cert:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_masterinfo_string
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_masterinfo_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_masterinfo_append
	.addrsig_sym network_mysqld_masterinfo_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym master_lines
	.addrsig_sym master_log_file
	.addrsig_sym master_log_pos
	.addrsig_sym master_host
	.addrsig_sym master_user
	.addrsig_sym master_password
	.addrsig_sym master_port
	.addrsig_sym master_connect_retry
	.addrsig_sym master_ssl
	.addrsig_sym master_ssl_ca
	.addrsig_sym master_ssl_capath
	.addrsig_sym master_ssl_cert
	.addrsig_sym master_ssl_cipher
	.addrsig_sym master_ssl_key
	.addrsig_sym master_ssl_verify_server_cert
	.addrsig_sym TRUE