	.text
	.globl	print_statistics                # -- Begin function print_statistics
	.p2align	4, 0x90
print_statistics:                       # @print_statistics
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	mean_array@PLT
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	variance_array@PLT
	movss	%xmm0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	mse_array@PLT
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MSE: %.6f, Mean: %.6f, Variance: %.6f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mean_array
	.addrsig_sym variance_array
	.addrsig_sym printf
	.addrsig_sym mse_array