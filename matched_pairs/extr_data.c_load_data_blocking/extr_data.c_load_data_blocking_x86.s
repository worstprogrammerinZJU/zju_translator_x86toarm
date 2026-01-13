	.text
	.globl	load_data_blocking              # -- Begin function load_data_blocking
	.p2align	4, 0x90
load_data_blocking:                     # @load_data_blocking
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	load_thread@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_thread