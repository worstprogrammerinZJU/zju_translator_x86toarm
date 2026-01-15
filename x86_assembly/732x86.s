	.text
	.globl	make_dict                       # -- Begin function make_dict
	.p2align	4, 0x90
make_dict:                              # @make_dict
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$8, %edi
	callq	malloc@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	make_map@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movb	$0, %al
	callq	make_vector@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym make_map
	.addrsig_sym make_vector