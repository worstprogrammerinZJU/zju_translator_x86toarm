	.text
	.p2align	4, 0x90                         # -- Begin function change_dir
change_dir:                             # @change_dir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	chdir@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	chdir_error(%rip), %ecx
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to change working directory to '%s'\n%s\n"
	.bss
	.globl	chdir_error
	.p2align	2
chdir_error:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym change_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym chdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym lua_pushboolean
	.addrsig_sym chdir_error