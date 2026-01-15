	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function sample_array
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	sample_array
	.p2align	4, 0x90
sample_array:                           # @sample_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	sum_array@PLT
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	callq	scale_array@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	callq	rand_uniform@PLT
	movss	%xmm0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -28(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-28(%rbp), %xmm0
	jb	.LBB0_4
# %bb.3:
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sum_array
	.addrsig_sym scale_array
	.addrsig_sym rand_uniform