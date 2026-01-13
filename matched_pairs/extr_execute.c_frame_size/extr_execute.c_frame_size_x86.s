	.text
	.p2align	4, 0x90                         # -- Begin function frame_size
frame_size:                             # @frame_size
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	addl	4(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_size