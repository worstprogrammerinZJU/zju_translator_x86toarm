	.text
	.p2align	4, 0x90                         # -- Begin function f_lesseq
f_lesseq:                               # @f_lesseq
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	CMP_OP_LESSEQ(%rip), %ecx
	callq	order_cmp@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CMP_OP_LESSEQ
	.p2align	2
CMP_OP_LESSEQ:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_lesseq
	.addrsig_sym order_cmp
	.addrsig_sym CMP_OP_LESSEQ