	.text
	.globl	save_image                      # -- Begin function save_image
	.p2align	4, 0x90
save_image:                             # @save_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	JPG(%rip), %edx
	movl	$80, %ecx
	callq	save_image_options@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JPG
	.p2align	2
JPG:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym save_image_options
	.addrsig_sym JPG