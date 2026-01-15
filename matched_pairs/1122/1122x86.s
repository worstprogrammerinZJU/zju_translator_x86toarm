	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function random_augment_args
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
.LCPI0_1:
	.quad	0x4076800000000000              # double 360
	.text
	.globl	random_augment_args
	.p2align	4, 0x90
random_augment_args:                    # @random_augment_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movlpd	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	rand_scale@PLT
	movss	%xmm0, -16(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	rand_int@PLT
	movl	%eax, -36(%rbp)
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.1:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
.LBB0_3:
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	cvtsi2ssl	-36(%rbp), %xmm0
	cvtsi2ssl	-40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	-12(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	callq	rand_uniform@PLT
	imull	TWO_PI(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	divss	-16(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-28(%rbp), %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	callq	rand_uniform@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	callq	rand_uniform@PLT
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movl	%eax, %edx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rcx)
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rcx)
	movl	-32(%rbp), %edx
	movl	%edx, 12(%rcx)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rcx)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rcx)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 24(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TWO_PI
	.p2align	2
TWO_PI:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_scale
	.addrsig_sym rand_int
	.addrsig_sym rand_uniform
	.addrsig_sym TWO_PI