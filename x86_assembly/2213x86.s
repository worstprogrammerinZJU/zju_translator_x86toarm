	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbi__hdr_convert
.LCPI0_0:
	.long	0x3f800000                      # float 1
.LCPI0_1:
	.long	0x40400000                      # float 3
	.text
	.p2align	4, 0x90
stbi__hdr_convert:                      # @stbi__hdr_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB0_9
# %bb.1:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	subl	$136, %edi
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	ldexp@PLT
	cvtsi2ss	%rax, %xmm0
	movss	%xmm0, -24(%rbp)
	cmpl	$2, -20(%rbp)
	jg	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	cvtsi2ss	%eax, %xmm0
	mulss	-24(%rbp), %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rax
	cvtsi2ssl	(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	cvtsi2ssl	4(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-16(%rbp), %rax
	cvtsi2ssl	8(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 8(%rax)
.LBB0_4:
	cmpl	$2, -20(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rax)
.LBB0_6:
	cmpl	$4, -20(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rax
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rax)
.LBB0_8:
	jmp	.LBB0_15
.LBB0_9:
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_14
# %bb.16:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_10:
	movq	-8(%rbp), %rax
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rax)
.LBB0_11:
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.LBB0_14
.LBB0_12:
	movq	-8(%rbp), %rax
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rax)
.LBB0_13:
	movq	-8(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_convert
	.addrsig_sym ldexp