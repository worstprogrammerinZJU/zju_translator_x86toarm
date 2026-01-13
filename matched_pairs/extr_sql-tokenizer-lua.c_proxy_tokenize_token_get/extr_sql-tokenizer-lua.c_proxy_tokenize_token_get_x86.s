	.text
	.p2align	4, 0x90                         # -- Begin function proxy_tokenize_token_get
proxy_tokenize_token_get:               # @proxy_tokenize_token_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	luaL_checkself@PLT
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	leaq	-32(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	C@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	strleq@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	S@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movslq	%eax, %rsi
	movb	$0, %al
	callq	lua_pushlstring@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	C@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	strleq@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	lua_pushinteger@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	C@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movl	%eax, %edx
	callq	strleq@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	leaq	-48(%rbp), %rsi
	callq	sql_token_get_name@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	lua_pushlstring@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	leaq	.L.str.3(%rip), %rsi
	callq	luaL_error@PLT
# %bb.7:
	jmp	.LBB0_8
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	$0, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"text"
.L.str.1:
	.asciz	"token_id"
.L.str.2:
	.asciz	"token_name"
.L.str.3:
	.asciz	"tokens[...] has no %s field"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_token_get
	.addrsig_sym luaL_checkself
	.addrsig_sym luaL_checklstring
	.addrsig_sym strleq
	.addrsig_sym C
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym lua_pushinteger
	.addrsig_sym sql_token_get_name
	.addrsig_sym luaL_error