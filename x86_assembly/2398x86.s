	.text
	.globl	print                           # -- Begin function print
	.p2align	4, 0x90
print:                                  # @print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movl	stdout(%rip), %edi
	callq	fflush@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Testing %s ... "
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym stdout