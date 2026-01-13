	.text
	.p2align	4, 0x90                         # -- Begin function version_l
version_l:                              # @version_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	VERSION(%rip), %esi
	callq	lua_pushstring@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	VERSION
	.p2align	2
VERSION:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym version_l
	.addrsig_sym lua_pushstring
	.addrsig_sym VERSION