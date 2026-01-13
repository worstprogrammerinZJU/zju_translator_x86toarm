	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_get_challenge_packet
lua_proto_get_challenge_packet:         # @lua_proto_get_challenge_packet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	leaq	-24(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movb	$0, %al
	callq	network_mysqld_auth_challenge_new@PLT
	movq	%rax, -40(%rbp)
	movb	$1, %al
	cmpl	$0, -76(%rbp)
	movb	%al, -77(%rbp)                  # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	callq	network_mysqld_proto_get_auth_challenge@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -77(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-77(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	network_mysqld_auth_challenge_free@PLT
	movq	-16(%rbp), %rdi
	movl	G_STRLOC(%rip), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-40(%rbp), %rdi
	movl	protocol_version(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	server_version(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	thread_id(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	capabilities(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	charset(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	server_status(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	challenge(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	callq	network_mysqld_auth_challenge_free@PLT
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: network_mysqld_proto_get_auth_challenge() failed"
	.bss
	.globl	G_STRLOC
	.p2align	2
G_STRLOC:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_get_challenge_packet
	.addrsig_sym luaL_checklstring
	.addrsig_sym network_mysqld_auth_challenge_new
	.addrsig_sym network_mysqld_proto_get_auth_challenge
	.addrsig_sym network_mysqld_auth_challenge_free
	.addrsig_sym luaL_error
	.addrsig_sym lua_newtable
	.addrsig_sym LUA_EXPORT_INT
	.addrsig_sym LUA_EXPORT_STR
	.addrsig_sym G_STRLOC
	.addrsig_sym protocol_version
	.addrsig_sym server_version
	.addrsig_sym thread_id
	.addrsig_sym capabilities
	.addrsig_sym charset
	.addrsig_sym server_status
	.addrsig_sym challenge