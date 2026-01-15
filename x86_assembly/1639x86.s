	.text
	.p2align	4, 0x90                         # -- Begin function updatecache_
updatecache_:                           # @updatecache_
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	penvidx@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	callq	lua_rawgeti@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	subscache@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	lua_replace@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym updatecache_
	.addrsig_sym lua_rawgeti
	.addrsig_sym penvidx
	.addrsig_sym lua_replace
	.addrsig_sym subscache