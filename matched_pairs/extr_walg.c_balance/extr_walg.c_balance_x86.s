	.text
	.p2align	4, 0x90                         # -- Begin function balance
balance:                                # @balance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	needfree@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-24(%rbp), %edx
	callq	moveresv@PLT
	movq	-16(%rbp), %rdi
	callq	usenext@PLT
	jmp	.LBB0_1
.LBB0_5:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-20(%rbp), %edx
	callq	balancerest@PLT
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym balance
	.addrsig_sym needfree
	.addrsig_sym twarnx
	.addrsig_sym moveresv
	.addrsig_sym usenext
	.addrsig_sym balancerest