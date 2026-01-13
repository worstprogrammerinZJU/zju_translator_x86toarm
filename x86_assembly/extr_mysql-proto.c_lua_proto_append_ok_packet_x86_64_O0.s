	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_append_ok_packet
lua_proto_append_ok_packet:             # @lua_proto_append_ok_packet
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
	callq	network_mysqld_ok_packet_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	server_status(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	insert_id(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	warnings(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-24(%rbp), %rdi
	movl	affected_rows(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	network_mysqld_proto_append_ok_packet@PLT
	movq	-24(%rbp), %rdi
	callq	network_mysqld_ok_packet_free@PLT
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
	.globl	server_status
	.p2align	2
server_status:
	.long	0                               # 0x0
	.globl	insert_id
	.p2align	2
insert_id:
	.long	0                               # 0x0
	.globl	warnings
	.p2align	2
warnings:
	.long	0                               # 0x0
	.globl	affected_rows
	.p2align	2
affected_rows:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_ok_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_ok_packet_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_append_ok_packet
	.addrsig_sym network_mysqld_ok_packet_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym server_status
	.addrsig_sym insert_id
	.addrsig_sym warnings
	.addrsig_sym affected_rows
	.addrsig_sym TRUE