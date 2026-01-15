	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbiw__jpg_DCT
.LCPI0_0:
	.long	0x3f3504f3                      # float 0.707106769
.LCPI0_1:
	.long	0x3fa73d75                      # float 1.30656302
.LCPI0_2:
	.long	0x3f0a8bd4                      # float 0.541196108
.LCPI0_3:
	.long	0x3ec3ef15                      # float 0.382683426
	.text
	.p2align	4, 0x90
stbiw__jpg_DCT:                         # @stbiw__jpg_DCT
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-80(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-80(%rbp), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-76(%rbp), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-72(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-136(%rbp), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-128(%rbp), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-128(%rbp), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-152(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-152(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-156(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-148(%rbp), %xmm0
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-148(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-148(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-84(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-140(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-132(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-124(%rbp), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-116(%rbp), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-156(%rbp), %xmm0
	movss	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-156(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-152(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-92(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-92(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-108(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-108(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-88(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-104(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-96(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-104(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-96(%rbp), %xmm0
	movq	24(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_DCT