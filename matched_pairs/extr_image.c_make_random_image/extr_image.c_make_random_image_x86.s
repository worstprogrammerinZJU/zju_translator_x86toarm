	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function make_random_image
.LCPI0_0:
	.quad	0x3fd0000000000000              # double 0.25
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	make_random_image
	.p2align	4, 0x90
make_random_image:                      # @make_random_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	make_empty_image@PLT
	movq	%rax, -8(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand_normal@PLT
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym calloc
	.addrsig_sym rand_normal