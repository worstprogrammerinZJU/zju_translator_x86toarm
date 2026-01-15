	.text
	.p2align	4, 0x90                         # -- Begin function proxy_tokenize_set
proxy_tokenize_set:                     # @proxy_tokenize_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	luaL_checkself@PLT
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	luaL_checkinteger@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	LUA_TNIL(%rip), %edx
	movl	$3, %esi
	callq	luaL_checktype@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	G_MAXINT(%rip), %rax
	jle	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	cmpl	$1, -28(%rbp)
	jl	.LBB0_4
# %bb.3:
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jle	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-40(%rbp), %rax
	je	.LBB0_7
# %bb.6:
	movq	-40(%rbp), %rdi
	callq	sql_token_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	$0, (%rax,%rcx,8)
.LBB0_7:
	movl	$0, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_TNIL
	.p2align	2
LUA_TNIL:
	.long	0                               # 0x0
	.globl	G_MAXINT
	.p2align	3
G_MAXINT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym proxy_tokenize_set
	.addrsig_sym luaL_checkself
	.addrsig_sym luaL_checkinteger
	.addrsig_sym luaL_checktype
	.addrsig_sym sql_token_free
	.addrsig_sym LUA_TNIL
	.addrsig_sym G_MAXINT