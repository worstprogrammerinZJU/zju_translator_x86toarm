	.text
	.globl	delta_yolo_box                  # -- Begin function delta_yolo_box
	.p2align	4, 0x90
delta_yolo_box:                         # @delta_yolo_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	movl	72(%rbp), %eax
	movq	64(%rbp), %rax
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	16(%rbp), %r8d
	movl	24(%rbp), %r9d
	movl	32(%rbp), %r14d
	movl	40(%rbp), %ebx
	movl	48(%rbp), %r11d
	movl	56(%rbp), %r10d
	movl	72(%rbp), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	get_yolo_box@PLT
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	box_iou@PLT
	movss	%xmm0, -84(%rbp)
	movl	-32(%rbp), %eax
	imull	32(%rbp), %eax
	subl	16(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -88(%rbp)
	movl	-28(%rbp), %eax
	imull	40(%rbp), %eax
	subl	24(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -92(%rbp)
	movl	-24(%rbp), %eax
	imull	48(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	divss	(%rax,%rcx,4), %xmm0
	cvttss2si	%xmm0, %edi
	callq	log@PLT
	movss	%xmm0, -96(%rbp)
	movl	-20(%rbp), %eax
	imull	56(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	divss	(%rax,%rcx,4), %xmm0
	cvttss2si	%xmm0, %edi
	callq	log@PLT
	movss	%xmm0, -100(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$0, 72(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$0, 72(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	72(%rbp), %edx
	shll	$0, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	72(%rbp), %edx
	shll	$0, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	72(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	72(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$3, 72(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	subss	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	$3, 72(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_yolo_box
	.addrsig_sym box_iou
	.addrsig_sym log