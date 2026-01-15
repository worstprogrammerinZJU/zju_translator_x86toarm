	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function diou
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	diou
	.p2align	4, 0x90
diou:                                   # @diou
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	movq	%rdi, -120(%rbp)                # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	box_union@PLT
	movss	%xmm0, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	box_intersection@PLT
	movss	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %r8
	leaq	-72(%rbp), %rdi
	callq	dintersect@PLT
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %r8
	leaq	-104(%rbp), %rdi
	callq	dunion@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	jae	.LBB0_2
# %bb.1:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_3
.LBB0_2:
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-32(%rbp), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-28(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movl	-24(%rbp), %ecx
	subl	-8(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movl	-20(%rbp), %ecx
	subl	-4(%rbp), %ecx
	movl	%ecx, 12(%rax)
	jmp	.LBB0_4
.LBB0_3:
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-36(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movl	$1, %esi
	callq	pow@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	shll	$1, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ssl	-72(%rbp), %xmm1
	movss	-36(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	cvtsi2ssl	-104(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	movd	%xmm2, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, (%rax)
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-36(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movl	$1, %esi
	callq	pow@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	shll	$1, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ssl	-68(%rbp), %xmm1
	movss	-36(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	cvtsi2ssl	-100(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	movd	%xmm2, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, 4(%rax)
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-36(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movl	$1, %esi
	callq	pow@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	shll	$1, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ssl	-64(%rbp), %xmm1
	movss	-36(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	cvtsi2ssl	-96(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	movd	%xmm2, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, 8(%rax)
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-36(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movl	$1, %esi
	callq	pow@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	shll	$1, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ssl	-60(%rbp), %xmm1
	movss	-36(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	cvtsi2ssl	-92(%rbp), %xmm2
	mulss	-40(%rbp), %xmm2
	movd	%xmm2, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, 12(%rax)
.LBB0_4:
	movq	-120(%rbp), %rax                # 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym box_union
	.addrsig_sym box_intersection
	.addrsig_sym dintersect
	.addrsig_sym dunion
	.addrsig_sym pow