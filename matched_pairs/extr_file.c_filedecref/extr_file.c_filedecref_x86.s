	.text
	.globl	filedecref                      # -- Begin function filedecref
	.p2align	4, 0x90
filedecref:                             # @filedecref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_4
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	walgc@PLT
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walgc