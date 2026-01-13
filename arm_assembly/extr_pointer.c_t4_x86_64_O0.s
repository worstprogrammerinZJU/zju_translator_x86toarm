	.text
	.p2align	4, 0x90                         # -- Begin function t4
t4:                                     # @t4
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.t4.s(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$122, %edi
	movsbl	(%rax), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.t4.s:
	.asciz	"xyz"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect