	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_load
stbi__pnm_load:                         # @stbi__pnm_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STBI_NOTUSED@PLT
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	addq	$4, %rdx
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	callq	stbi__pnm_info@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_14
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	xorl	%ecx, %ecx
	callq	stbi__mad3sizes_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	xorl	%ecx, %ecx
	callq	stbi__malloc_mad3@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_8
# %bb.7:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_8:
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	imull	(%rax), %edx
	movq	-16(%rbp), %rax
	imull	4(%rax), %edx
	callq	stbi__getn@PLT
	cmpl	$0, -44(%rbp)
	je	.LBB0_13
# %bb.9:
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB0_13
# %bb.10:
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	callq	stbi__convert_format@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_12
# %bb.11:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_14:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too large"
.L.str.1:
	.asciz	"PNM too large"
.L.str.2:
	.asciz	"outofmem"
.L.str.3:
	.asciz	"Out of memory"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__mad3sizes_valid
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym stbi__getn
	.addrsig_sym stbi__convert_format