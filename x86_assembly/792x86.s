	.text
	.p2align	4, 0x90                         # -- Begin function __spiTranslate32
__spiTranslate32:                       # @__spiTranslate32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movl	-24(%rbp), %ecx
	shll	$24, %ecx
	orl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTranslate32