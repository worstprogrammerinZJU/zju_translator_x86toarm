	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function bbox_update
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x4079000000000000              # double 400
	.text
	.globl	bbox_update
	.p2align	4, 0x90
bbox_update:                            # @bbox_update
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$32, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	$10, %edi
	callq	pow@PLT
	addl	$1, %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	$10, %edi
	callq	pow@PLT
	addl	$1, %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-24(%rbp), %edx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-24(%rbp), %edx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	-40(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, (%rax,%rcx,4)
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	-44(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	subss	-36(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, (%rax,%rcx,4)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow