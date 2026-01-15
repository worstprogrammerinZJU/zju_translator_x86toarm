	.text
	.globl	softmax                         # -- Begin function softmax
	.p2align	4, 0x90
softmax:                                # @softmax
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	FLT_MAX(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	ucomiss	-44(%rbp), %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	$0, -36(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	divss	-16(%rbp), %xmm0
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	divss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	callq	exp@PLT
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-40(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movl	$0, -36(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_11
.LBB0_14:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exp
	.addrsig_sym FLT_MAX