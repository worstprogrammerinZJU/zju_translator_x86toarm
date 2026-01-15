	.text
	.globl	jv_mem_strdup                   # -- Begin function jv_mem_strdup
	.p2align	4, 0x90
jv_mem_strdup:                          # @jv_mem_strdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	memory_exhausted@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strdup
	.addrsig_sym memory_exhausted