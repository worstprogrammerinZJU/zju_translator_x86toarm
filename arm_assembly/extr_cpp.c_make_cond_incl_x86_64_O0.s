	.text
	.p2align	4, 0x90                         # -- Begin function make_cond_incl
make_cond_incl:                         # @make_cond_incl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$1, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	IN_THEN(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IN_THEN
	.p2align	2
IN_THEN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_cond_incl
	.addrsig_sym calloc
	.addrsig_sym IN_THEN