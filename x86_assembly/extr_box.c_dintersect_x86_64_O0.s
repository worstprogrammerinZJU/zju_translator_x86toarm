	.text
	.globl	dintersect                      # -- Begin function dintersect
	.p2align	4, 0x90
dintersect:                             # @dintersect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	callq	overlap@PLT
	movss	%xmm0, -52(%rbp)
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edi
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	callq	overlap@PLT
	movss	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	derivative@PLT
	movlpd	%xmm0, -72(%rbp)
	movlpd	%xmm1, -64(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym overlap
	.addrsig_sym derivative