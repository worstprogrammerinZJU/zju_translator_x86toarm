	.text
	.globl	best_3d_shift                   # -- Begin function best_3d_shift
	.p2align	4, 0x90
best_3d_shift:                          # @best_3d_shift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$0, -48(%rbp)
	movss	FLT_MAX(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%edx, %edx
	callq	crop_image@PLT
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-60(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-16(%rbp), %edx
	imull	-12(%rbp), %edx
	imull	-8(%rbp), %edx
	movl	$100, %ecx
	callq	dist_array@PLT
	movss	%xmm0, -76(%rbp)
	movss	-76(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %esi
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	free_image@PLT
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.long	0x00000000                      # float 0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym printf
	.addrsig_sym free_image
	.addrsig_sym FLT_MAX