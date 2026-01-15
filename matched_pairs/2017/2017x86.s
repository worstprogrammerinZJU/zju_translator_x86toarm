	.text
	.p2align	4, 0x90                         # -- Begin function subtract
subtract:                               # @subtract
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -16(%rbp)
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movl	$5, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abcdefg"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym subtract
	.addrsig_sym expect