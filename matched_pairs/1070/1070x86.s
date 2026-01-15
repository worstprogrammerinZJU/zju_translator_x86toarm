	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function best_3d_shift_r
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	best_3d_shift_r
	.p2align	4, 0x90
best_3d_shift_r:                        # @best_3d_shift_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_2
# %bb.1:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	floor@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	xorl	%edx, %edx
	callq	crop_image@PLT
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	-40(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	xorl	%edx, %edx
	callq	crop_image@PLT
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movl	-60(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	imull	-16(%rbp), %edx
	movl	$10, %ecx
	callq	dist_array@PLT
	movss	%xmm0, -92(%rbp)
	movl	-76(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-24(%rbp), %edx
	imull	-20(%rbp), %edx
	imull	-16(%rbp), %edx
	movl	$10, %ecx
	callq	dist_array@PLT
	movss	%xmm0, -96(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	free_image@PLT
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	free_image@PLT
	movss	-92(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:
	movl	-44(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	best_3d_shift_r
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-52(%rbp), %r8d
	addl	$1, %r8d
	movl	-48(%rbp), %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	best_3d_shift_r
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym best_3d_shift_r
	.addrsig_sym floor
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym free_image