	.text
	.p2align	4, 0x90                         # -- Begin function make_and_insert_tube
make_and_insert_tube:                   # @make_and_insert_tube
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_tube@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-32(%rbp), %rsi
	leaq	tubes(%rip), %rdi
	callq	ms_append@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	tube_dref@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tubes
	.p2align	2
tubes:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_and_insert_tube
	.addrsig_sym make_tube
	.addrsig_sym ms_append
	.addrsig_sym tube_dref
	.addrsig_sym tubes