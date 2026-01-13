	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_append_err_packet
lua_proto_append_err_packet:            # @lua_proto_append_err_packet
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
	callq	network_mysqld_err_packet_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	errmsg(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	sqlstate(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movl	errcode(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	network_mysqld_proto_append_err_packet@PLT
	movq	-24(%rbp), %rdi
	callq	network_mysqld_err_packet_free@PLT
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
	.globl	errmsg
	.p2align	2
errmsg:
	.long	0                               # 0x0
	.globl	sqlstate
	.p2align	2
sqlstate:
	.long	0                               # 0x0
	.globl	errcode
	.p2align	2
errcode:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_err_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_err_packet_new
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_append_err_packet
	.addrsig_sym network_mysqld_err_packet_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym errmsg
	.addrsig_sym sqlstate
	.addrsig_sym errcode
	.addrsig_sym TRUE