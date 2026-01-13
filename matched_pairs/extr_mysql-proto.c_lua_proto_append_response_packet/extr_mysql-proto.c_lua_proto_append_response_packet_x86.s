	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_append_response_packet
lua_proto_append_response_packet:       # @lua_proto_append_response_packet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	LUA_TTABLE(%rip), %edx
	movl	$1, %esi
	callq	luaL_checktype@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	network_mysqld_auth_response_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	capabilities(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-32(%rbp), %rdi
	movl	max_packet_size(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-32(%rbp), %rdi
	movl	charset(%rip), %esi
	callq	LUA_IMPORT_INT@PLT
	movq	-32(%rbp), %rdi
	movl	username(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-32(%rbp), %rdi
	movl	response(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-32(%rbp), %rdi
	movl	database(%rip), %esi
	callq	LUA_IMPORT_STR@PLT
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	network_mysqld_proto_append_auth_response@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	network_mysqld_auth_response_free@PLT
	movq	-24(%rbp), %rdi
	movl	TRUE(%rip), %esi
	callq	g_string_free@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movq	-24(%rbp), %rdi
	movl	TRUE(%rip), %esi
	callq	g_string_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-32(%rbp), %rdi
	callq	network_mysqld_auth_response_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	S@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_pushlstring@PLT
	movq	-24(%rbp), %rdi
	movl	TRUE(%rip), %esi
	callq	g_string_free@PLT
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.long	0                               # 0x0
	.globl	capabilities
	.p2align	2
capabilities:
	.long	0                               # 0x0
	.globl	max_packet_size
	.p2align	2
max_packet_size:
	.long	0                               # 0x0
	.globl	charset
	.p2align	2
charset:
	.long	0                               # 0x0
	.globl	username
	.p2align	2
username:
	.long	0                               # 0x0
	.globl	response
	.p2align	2
response:
	.long	0                               # 0x0
	.globl	database
	.p2align	2
database:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"to_response_packet() failed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_response_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_auth_response_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym network_mysqld_proto_append_auth_response
	.addrsig_sym network_mysqld_auth_response_free
	.addrsig_sym g_string_free
	.addrsig_sym luaL_error
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym LUA_TTABLE
	.addrsig_sym capabilities
	.addrsig_sym max_packet_size
	.addrsig_sym charset
	.addrsig_sym username
	.addrsig_sym response
	.addrsig_sym database
	.addrsig_sym TRUE