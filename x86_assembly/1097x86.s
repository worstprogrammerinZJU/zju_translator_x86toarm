	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function get_color
.LCPI0_0:
	.long	0x3f800000                      # float 1
.LCPI0_1:
	.long	0x40a00000                      # float 5
	.text
	.globl	get_color
	.p2align	4, 0x90
get_color:                              # @get_color
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	floor@PLT
	movl	%eax, -20(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	ceil@PLT
	movl	%eax, -24(%rbp)
	cvtsi2ssl	-20(%rbp), %xmm1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm0
	movq	colors(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-4(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm2
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	colors(%rip), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-4(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm3
	mulss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	colors
	.p2align	3
colors:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym floor
	.addrsig_sym ceil
	.addrsig_sym colors