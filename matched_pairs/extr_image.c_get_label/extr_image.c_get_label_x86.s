	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function get_label
.LCPI0_0:
	.quad	0x3fd0000000000000              # double 0.25
	.text
	.globl	get_label
	.p2align	4, 0x90
get_label:                              # @get_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	cmpl	$7, -28(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	$7, -28(%rbp)
.LBB0_2:
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	callq	make_empty_image@PLT
	movsd	%xmm0, -40(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -48(%rbp)
	xorl	%edi, %edi
	subl	-28(%rbp), %edi
	subl	$1, %edi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	%eax, %edi
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1                # xmm1 = mem[0],zero
	callq	tile_images@PLT
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	free_image@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	border_image@PLT
	movsd	%xmm0, -8(%rbp)
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	free_image@PLT
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_empty_image
	.addrsig_sym tile_images
	.addrsig_sym free_image
	.addrsig_sym border_image