	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_get_masterinfo_string
lua_proto_get_masterinfo_string:        # @lua_proto_get_masterinfo_string
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
	callq	network_mysqld_masterinfo_new@PLT
	movq	%rax, -40(%rbp)
	movb	$1, %al
	cmpl	$0, -76(%rbp)
	movb	%al, -77(%rbp)                  # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	callq	network_mysqld_masterinfo_get@PLT
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
	callq	network_mysqld_masterinfo_free@PLT
	movq	-16(%rbp), %rdi
	movl	G_STRLOC(%rip), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-40(%rbp), %rdi
	movl	master_lines(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	master_log_file(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_log_pos(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	master_host(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_user(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_password(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_port(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	master_connect_retry(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl_ca(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl_capath(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl_cert(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl_cipher(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rdi
	movl	master_ssl_key(%rip), %esi
	callq	LUA_EXPORT_STR@PLT
	movq	-40(%rbp), %rax
	cmpl	$15, (%rax)
	jl	.LBB0_6
# %bb.5:
	movq	-40(%rbp), %rdi
	movl	master_ssl_verify_server_cert(%rip), %esi
	callq	LUA_EXPORT_INT@PLT
.LBB0_6:
	movq	-40(%rbp), %rdi
	callq	network_mysqld_masterinfo_free@PLT
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: network_mysqld_masterinfo_get() failed"
	.bss
	.globl	G_STRLOC
	.p2align	2
G_STRLOC:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_get_masterinfo_string
	.addrsig_sym luaL_checklstring
	.addrsig_sym network_mysqld_masterinfo_new
	.addrsig_sym network_mysqld_masterinfo_get
	.addrsig_sym network_mysqld_masterinfo_free
	.addrsig_sym luaL_error
	.addrsig_sym lua_newtable
	.addrsig_sym LUA_EXPORT_INT
	.addrsig_sym LUA_EXPORT_STR
	.addrsig_sym G_STRLOC
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