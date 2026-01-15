	.text
	.p2align	4, 0x90                         # -- Begin function nter_l
nter_l:                                 # @nter_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_isnoneornil@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edx
	leaq	.L.str(%rip), %rcx
	callq	luaL_argcheck@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	IOpenCall(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	value2fenv@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	-20(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	setinst@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-nil value expected"
	.bss
	.globl	IOpenCall
	.p2align	2
IOpenCall:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nter_l
	.addrsig_sym luaL_argcheck
	.addrsig_sym lua_isnoneornil
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym value2fenv
	.addrsig_sym IOpenCall