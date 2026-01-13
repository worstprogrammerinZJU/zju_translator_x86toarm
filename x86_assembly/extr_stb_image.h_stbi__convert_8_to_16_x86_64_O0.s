	.text
	.p2align	4, 0x90                         # -- Begin function stbi__convert_8_to_16
stbi__convert_8_to_16:                  # @stbi__convert_8_to_16
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	shll	$1, %edi
	callq	stbi__malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movl	$0, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
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
	.addrsig_sym stbi__convert_8_to_16
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__errpuc
	.addrsig_sym STBI_FREE