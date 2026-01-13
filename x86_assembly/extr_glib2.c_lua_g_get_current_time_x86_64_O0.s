	.text
	.p2align	4, 0x90                         # -- Begin function lua_g_get_current_time
lua_g_get_current_time:                 # @lua_g_get_current_time
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-16(%rbp), %rdi
	callq	g_get_current_time@PLT
	movq	-8(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_pushinteger@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	leaq	.L.str(%rip), %rdx
	callq	lua_setfield@PLT
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	lua_pushinteger@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	leaq	.L.str.1(%rip), %rdx
	callq	lua_setfield@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tv_sec"
.L.str.1:
	.asciz	"tv_usec"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_g_get_current_time
	.addrsig_sym g_get_current_time
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_setfield