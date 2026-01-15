	.text
	.p2align	4, 0x90                         # -- Begin function set_l
set_l:                                  # @set_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-16(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -24(%rbp)
	cmpq	$1, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	getpatt@PLT
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	newcharset@PLT
	movq	%rax, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movzbl	(%rax), %esi
	callq	setchar@PLT
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	correctset@PLT
.LBB0_6:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_l
	.addrsig_sym luaL_checklstring
	.addrsig_sym getpatt
	.addrsig_sym newcharset
	.addrsig_sym setchar
	.addrsig_sym correctset