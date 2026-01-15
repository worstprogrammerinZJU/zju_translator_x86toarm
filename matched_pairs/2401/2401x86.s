	.text
	.p2align	4, 0x90                         # -- Begin function ckresp
ckresp:                                 # @ckresp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	readline@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
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
	.asciz	"\"%s\" != \"%s\""
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ckresp
	.addrsig_sym readline
	.addrsig_sym assertf
	.addrsig_sym strcmp