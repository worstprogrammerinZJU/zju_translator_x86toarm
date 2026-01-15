	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbiw__linear_to_rgbe
.LCPI0_0:
	.long	0x0a4fb11f                      # float 1.00000002E-32
.LCPI0_1:
	.long	0x43800000                      # float 256
	.text
	.globl	stbiw__linear_to_rgbe
	.p2align	4, 0x90
stbiw__linear_to_rgbe:                  # @stbiw__linear_to_rgbe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -32(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	callq	stbiw__max@PLT
	movaps	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	stbiw__max@PLT
	movss	%xmm0, -24(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	-24(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	leaq	-20(%rbp), %rdi
	callq	frexp@PLT
	cvtsi2ss	%rax, %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 2(%rax)
	movl	-20(%rbp), %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__max
	.addrsig_sym frexp