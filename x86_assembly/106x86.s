	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function derivative
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	derivative
	.p2align	4, 0x90
derivative:                             # @derivative
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
	movl	$0, (%rdi)
	movq	$0, 16(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-72(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-40(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, (%rax)
	cvtsi2sdq	16(%rax), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 16(%rax)
.LBB0_2:
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-96(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-92(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	cvtsi2sdq	16(%rax), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 16(%rax)
.LBB0_4:
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-48(%rbp), %xmm0
	jbe	.LBB0_6
# %bb.5:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$-1, (%rax)
	movq	$0, 16(%rax)
.LBB0_6:
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_8
# %bb.7:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$1, (%rax)
	movq	$0, 16(%rax)
.LBB0_8:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$0, 4(%rax)
	movq	$0, 8(%rax)
	movl	-8(%rbp), %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-104(%rbp), %eax                # 4-byte Reload
	subl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-100(%rbp), %eax                # 4-byte Reload
	subl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-56(%rbp), %xmm0
	jbe	.LBB0_10
# %bb.9:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 4(%rax)
	cvtsi2sdq	8(%rax), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 8(%rax)
.LBB0_10:
	movl	-8(%rbp), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-112(%rbp), %eax                # 4-byte Reload
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-108(%rbp), %eax                # 4-byte Reload
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_12
# %bb.11:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	cvtsi2sdq	8(%rax), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 8(%rax)
.LBB0_12:
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-64(%rbp), %xmm0
	jbe	.LBB0_14
# %bb.13:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$-1, 4(%rax)
	movq	$0, 8(%rax)
.LBB0_14:
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_16
# %bb.15:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	$1, 4(%rax)
	movq	$0, 8(%rax)
.LBB0_16:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig