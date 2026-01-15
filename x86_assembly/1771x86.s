	.text
	.globl	num_detections                  # -- Begin function num_detections
	.p2align	4, 0x90
num_detections:                         # @num_detections
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	YOLO(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	leaq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	yolo_num_detections@PLT
	movq	%rax, %rcx
	movslq	-20(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	DETECTION(%rip), %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	REGION(%rip), %rax
	jne	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YOLO
	.p2align	3
YOLO:
	.quad	0                               # 0x0
	.globl	DETECTION
	.p2align	3
DETECTION:
	.quad	0                               # 0x0
	.globl	REGION
	.p2align	3
REGION:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yolo_num_detections
	.addrsig_sym YOLO
	.addrsig_sym DETECTION
	.addrsig_sym REGION