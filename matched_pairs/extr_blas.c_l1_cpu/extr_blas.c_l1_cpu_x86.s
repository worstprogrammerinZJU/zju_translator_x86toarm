	.text
	.globl	l1_cpu                          # -- Begin function l1_cpu
	.p2align	4, 0x90
l1_cpu:                                 # @l1_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
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
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	fabs@PLT
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	$1, %ecx
	ucomiss	%xmm1, %xmm0
	cmoval	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs