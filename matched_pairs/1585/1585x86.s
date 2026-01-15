	.text
	.p2align	4, 0x90                         # -- Begin function jointable
jointable:                              # @jointable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_getfenv@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_objlen@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_getfenv@PLT
	cmpl	$0, -28(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
	callq	lua_equal@PLT
	cmpq	$0, %rax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_pop@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_objlen@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setfenv@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_5:
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	addl	-28(%rbp), %esi
	xorl	%edx, %edx
	callq	lua_createtable@PLT
	movl	$1, -32(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %edx
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_rawgeti@PLT
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %edx
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_rawseti@PLT
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_9:
	movl	$1, -32(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %edx
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_rawgeti@PLT
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	addl	-32(%rbp), %edx
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_rawseti@PLT
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	movq	-16(%rbp), %rdi
	movl	$4294967292, %esi               # imm = 0xFFFFFFFC
	callq	lua_setfenv@PLT
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_pop@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jointable
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_objlen
	.addrsig_sym lua_equal
	.addrsig_sym lua_pop
	.addrsig_sym lua_setfenv
	.addrsig_sym lua_createtable
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_rawseti