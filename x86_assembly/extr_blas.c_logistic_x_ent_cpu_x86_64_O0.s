	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function logistic_x_ent_cpu
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	logistic_x_ent_cpu
	.p2align	4, 0x90
logistic_x_ent_cpu:                     # @logistic_x_ent_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvttss2si	-52(%rbp), %edi
	callq	log@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	callq	log@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm3
	mulss	%xmm3, %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym log