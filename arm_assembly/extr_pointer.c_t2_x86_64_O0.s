	.text
	.p2align	4, 0x90                         # -- Begin function t2
t2:                                     # @t2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$97, %edi
	movsbl	(%rax), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ab"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect