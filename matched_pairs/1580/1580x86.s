	.text
	.p2align	4, 0x90                         # -- Begin function getposition
getposition:                            # @getposition
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_getfenv@PLT
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_rawgeti@PLT
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_gettable@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_tointeger@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_rawgeti@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	val2str@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_pop@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s is not defined in given grammar"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getposition
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_gettable
	.addrsig_sym lua_tointeger
	.addrsig_sym luaL_error
	.addrsig_sym val2str
	.addrsig_sym lua_pop