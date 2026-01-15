	.text
	.p2align	4, 0x90                         # -- Begin function stbi__de_iphone
stbi__de_iphone:                        # @stbi__de_iphone
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	imulq	8(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 16(%rax)
	jne	.LBB0_6
# %bb.1:
	movq	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -40(%rbp)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_21
.LBB0_6:
	movq	-16(%rbp), %rax
	cmpl	$4, 16(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	cmpq	$0, stbi__unpremultiply_on_load(%rip)
	je	.LBB0_15
# %bb.7:
	movq	$0, -24(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-48(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rax
	imull	$255, 8(%rax), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	imull	$255, 4(%rax), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	imull	$255, -52(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_8
.LBB0_14:
	jmp	.LBB0_20
.LBB0_15:
	movq	$0, -24(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-60(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_16
.LBB0_19:
	jmp	.LBB0_20
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__unpremultiply_on_load
	.p2align	3
stbi__unpremultiply_on_load:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__de_iphone
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__unpremultiply_on_load