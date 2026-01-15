	.text
	.globl	delta_region_box                # -- Begin function delta_region_box
	.p2align	4, 0x90
delta_region_box:                       # @delta_region_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	56(%rbp), %eax
	movq	48(%rbp), %rax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	16(%rbp), %r8d
	movl	24(%rbp), %r9d
	movl	32(%rbp), %r11d
	movl	40(%rbp), %r10d
	movl	56(%rbp), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	get_region_box@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	box_iou@PLT
	movss	%xmm0, -68(%rbp)
	movl	-16(%rbp), %eax
	imull	32(%rbp), %eax
	subl	16(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-12(%rbp), %eax
	imull	40(%rbp), %eax
	subl	24(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-8(%rbp), %eax
	imull	32(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	divss	(%rax,%rcx,4), %xmm0
	cvttss2si	%xmm0, %edi
	callq	log@PLT
	movss	%xmm0, -80(%rbp)
	movl	-4(%rbp), %eax
	imull	40(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	divss	(%rax,%rcx,4), %xmm0
	cvttss2si	%xmm0, %edi
	callq	log@PLT
	movss	%xmm0, -84(%rbp)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	$0, 56(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	48(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	$0, 56(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	56(%rbp), %edx
	shll	$0, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	48(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	56(%rbp), %edx
	shll	$0, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	56(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	48(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	56(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-84(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	$3, 56(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	48(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	$3, 56(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_region_box
	.addrsig_sym box_iou
	.addrsig_sym log