	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function get_out_samples
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
get_out_samples:                        # @get_out_samples
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdq	32(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	(%rax), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edi
	callq	soxr_delay@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	cvtsi2sdq	8(%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB0_2:
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_out_samples
	.addrsig_sym soxr_delay