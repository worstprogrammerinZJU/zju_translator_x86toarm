	.text
	.globl	fill_network_boxes              # -- Begin function fill_network_boxes
	.p2align	4, 0x90
fill_network_boxes:                     # @fill_network_boxes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	cmpq	YOLO(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %r8
	movl	-36(%rbp), %r9d
	movq	-48(%rbp), %rax
	leaq	-80(%rbp), %r10
	movq	(%r10), %r11
	movq	%r11, (%rsp)
	movq	8(%r10), %r11
	movq	%r11, 8(%rsp)
	movq	16(%r10), %r10
	movq	%r10, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	get_yolo_detections@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	REGION(%rip), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %r8
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movl	-36(%rbp), %r9d
	movq	-48(%rbp), %rax
	leaq	-80(%rbp), %r10
	movq	(%r10), %r11
	movq	%r11, (%rsp)
	movq	8(%r10), %r11
	movq	%r11, 8(%rsp)
	movq	16(%r10), %r10
	movq	%r10, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	get_region_detections@PLT
	movl	-72(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	-64(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	DETECTION(%rip), %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	get_detection_detections@PLT
	movl	-72(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	-64(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YOLO
	.p2align	3
YOLO:
	.quad	0                               # 0x0
	.globl	REGION
	.p2align	3
REGION:
	.quad	0                               # 0x0
	.globl	DETECTION
	.p2align	3
DETECTION:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_yolo_detections
	.addrsig_sym get_region_detections
	.addrsig_sym get_detection_detections
	.addrsig_sym YOLO
	.addrsig_sym REGION
	.addrsig_sym DETECTION