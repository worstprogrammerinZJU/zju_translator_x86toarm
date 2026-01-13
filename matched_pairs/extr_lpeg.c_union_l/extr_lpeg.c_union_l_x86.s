	.text
	.p2align	4, 0x90                         # -- Begin function union_l
union_l:                                # @union_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-12(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	leaq	-16(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IFail(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	lua_pushvalue@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IFail(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushvalue@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %rdi
	leaq	-44(%rbp), %rsi
	callq	tocharset@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	leaq	-20(%rbp), %r8
	leaq	-44(%rbp), %r9
	callq	separateparts@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IFail
	.p2align	3
IFail:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym union_l
	.addrsig_sym getpatt
	.addrsig_sym lua_pushvalue
	.addrsig_sym tocharset
	.addrsig_sym separateparts
	.addrsig_sym IFail