	.text
	.p2align	4, 0x90                         # -- Begin function querycap
querycap:                               # @querycap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	pushallcaptures@PLT
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	-24(%rbp), %esi
	subl	$1, %esi
	callq	lua_pop@PLT
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	updatecache@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	subscache@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	lua_gettable@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_isnil@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	$1, %esi
	callq	lua_pop@PLT
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym querycap
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_pop
	.addrsig_sym updatecache
	.addrsig_sym lua_gettable
	.addrsig_sym subscache
	.addrsig_sym lua_isnil