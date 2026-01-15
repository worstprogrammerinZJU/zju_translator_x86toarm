	.text
	.p2align	4, 0x90                         # -- Begin function balancerest
balancerest:                            # @balancerest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%edx, %edx
	callq	balancerest
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movl	$8, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB0_7
# %bb.5:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-36(%rbp), %edx
	callq	moveresv@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%edx, %edx
	callq	balancerest
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	needfree@PLT
	cmpl	-40(%rbp), %eax
	je	.LBB0_9
# %bb.8:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	moveresv@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%edx, %edx
	callq	balancerest
	movl	%eax, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
balancerest.z:
	.long	8                               # 0x8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym balancerest
	.addrsig_sym moveresv
	.addrsig_sym needfree
	.addrsig_sym twarnx