	.text
	.p2align	4, 0x90                         # -- Begin function stbi__expand_png_palette
stbi__expand_png_palette:               # @stbi__expand_png_palette
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	imulq	8(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %esi
	xorl	%edx, %edx
	callq	stbi__malloc_mad2@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_2:
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$3, -32(%rbp)
	jne	.LBB0_8
# %bb.3:
	movq	$0, -40(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	-76(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -56(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	jmp	.LBB0_13
.LBB0_8:
	movq	$0, -40(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	-80(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-80(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	STBI_FREE@PLT
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-28(%rbp), %edi
	callq	STBI_NOTUSED@PLT
	movl	$1, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
.L.str.1:
	.asciz	"Out of memory"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__expand_png_palette
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym stbi__err
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI_NOTUSED