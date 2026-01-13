	.text
	.p2align	4, 0x90                         # -- Begin function value2fenv
value2fenv:                             # @value2fenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lua_createtable@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	movl	$1, %edx
	callq	lua_rawseti@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setfenv@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym value2fenv
	.addrsig_sym lua_createtable
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_rawseti
	.addrsig_sym lua_setfenv