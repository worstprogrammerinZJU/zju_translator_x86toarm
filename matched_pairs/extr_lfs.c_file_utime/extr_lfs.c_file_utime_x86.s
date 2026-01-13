	.text
	.p2align	4, 0x90                         # -- Begin function file_utime
file_utime:                             # @file_utime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_gettop@PLT
	cmpl	$1, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -48(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	luaL_optnumber@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	$3, %esi
	callq	luaL_optnumber@PLT
	movq	%rax, -32(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_3:
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	utime@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	lua_pushfstring@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushboolean@PLT
	movl	$1, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_utime
	.addrsig_sym luaL_checkstring
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_optnumber
	.addrsig_sym utime
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym errno