	.text
	.p2align	4, 0x90                         # -- Begin function lua_proto_get_stmt_execute_packet_stmt_id
lua_proto_get_stmt_execute_packet_stmt_id: # @lua_proto_get_stmt_execute_packet_stmt_id
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
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movb	$1, %al
	cmpl	$0, -68(%rbp)
	movb	%al, -73(%rbp)                  # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	leaq	-48(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	network_mysqld_proto_get_stmt_execute_packet_stmt_id@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -73(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-73(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	G_STRLOC(%rip), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	lua_pushinteger@PLT
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
	.asciz	"%s: network_mysqld_proto_get_stmt_execute_packet_stmt_id() failed"
	.bss
	.globl	G_STRLOC
	.p2align	2
G_STRLOC:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_get_stmt_execute_packet_stmt_id
	.addrsig_sym luaL_checklstring
	.addrsig_sym network_mysqld_proto_get_stmt_execute_packet_stmt_id
	.addrsig_sym luaL_error
	.addrsig_sym lua_pushinteger
	.addrsig_sym G_STRLOC