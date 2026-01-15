	.text
	.globl	fmtint                          # -- Begin function fmtint
	.p2align	4, 0x90
fmtint:                                 # @fmtint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	fmt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt