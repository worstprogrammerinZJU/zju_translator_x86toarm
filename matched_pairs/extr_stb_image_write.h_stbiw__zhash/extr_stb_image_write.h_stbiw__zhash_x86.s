	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__zhash
stbiw__zhash:                           # @stbiw__zhash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	shll	$16, %ecx
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$3, %eax
	xorl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$5, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$4, %eax
	xorl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$17, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$25, %eax
	xorl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$6, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zhash