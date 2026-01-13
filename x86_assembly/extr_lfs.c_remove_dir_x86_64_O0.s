	.text
	.p2align	4, 0x90                         # -- Begin function remove_dir
remove_dir:                             # @remove_dir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	rmdir@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	lua_pushfstring@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushboolean@PLT
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
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
	.addrsig_sym remove_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym rmdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym errno