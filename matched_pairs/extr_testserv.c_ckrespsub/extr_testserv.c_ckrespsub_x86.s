	.text
	.p2align	4, 0x90                         # -- Begin function ckrespsub
ckrespsub:                              # @ckrespsub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	readline@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strstr@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	callq	assertf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\"%s\" not in \"%s\""
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ckrespsub
	.addrsig_sym readline
	.addrsig_sym assertf
	.addrsig_sym strstr