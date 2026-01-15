	.text
	.globl	draw_box                        # -- Begin function draw_box
	.p2align	4, 0x90
draw_box:                               # @draw_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm1, -40(%rbp)
	movss	%xmm2, -44(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$0, -20(%rbp)
.LBB0_2:
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB0_4
# %bb.3:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_4:
	cmpl	$0, -28(%rbp)
	jge	.LBB0_6
# %bb.5:
	movl	$0, -28(%rbp)
.LBB0_6:
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB0_8
# %bb.7:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB0_8:
	cmpl	$0, -24(%rbp)
	jge	.LBB0_10
# %bb.9:
	movl	$0, -24(%rbp)
.LBB0_10:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_12
# %bb.11:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB0_12:
	cmpl	$0, -32(%rbp)
	jge	.LBB0_14
# %bb.13:
	movl	$0, -32(%rbp)
.LBB0_14:
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_16
# %bb.15:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB0_16:
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	imull	$0, -16(%rbp), %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	imull	$0, -16(%rbp), %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$0, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$0, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-24(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	imull	$0, -16(%rbp), %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	imull	$0, -16(%rbp), %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$0, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$0, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-48(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	-16(%rbp), %edx
	shll	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_21
.LBB0_24:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig