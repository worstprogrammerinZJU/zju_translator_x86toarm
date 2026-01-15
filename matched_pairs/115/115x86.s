	.text
	.globl	nms_comparator                  # -- Begin function nms_comparator
	.p2align	4, 0x90
nms_comparator:                         # @nms_comparator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	cmpq	$0, -72(%rbp)
	jb	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -76(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-56(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
.LBB0_3:
	xorps	%xmm0, %xmm0
	ucomiss	-76(%rbp), %xmm0
	jbe	.LBB0_5
# %bb.4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_7
# %bb.6:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig