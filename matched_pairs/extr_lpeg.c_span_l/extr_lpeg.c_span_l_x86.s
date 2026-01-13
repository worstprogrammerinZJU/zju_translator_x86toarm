	.text
	.p2align	4, 0x90                         # -- Begin function span_l
span_l:                                 # @span_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	span(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$1, %rcx
	callq	newpattfunc@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	span
	.p2align	2
span:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym span_l
	.addrsig_sym luaL_checkstring
	.addrsig_sym newpattfunc
	.addrsig_sym strlen
	.addrsig_sym span