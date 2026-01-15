	.text
	.globl	float_to_box                    # -- Begin function float_to_box
	.p2align	4, 0x90
float_to_box:                           # @float_to_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	xorl	%esi, %esi
	movl	$20, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rcx
	movss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdi)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	shll	$0, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdi)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rcx
	imull	$3, -12(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig