	.text
	.p2align	4, 0x90                         # -- Begin function printcap
printcap:                               # @printcap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	printcapkind@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" (idx: %d - size: %d) -> %p\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcap
	.addrsig_sym printcapkind
	.addrsig_sym printf