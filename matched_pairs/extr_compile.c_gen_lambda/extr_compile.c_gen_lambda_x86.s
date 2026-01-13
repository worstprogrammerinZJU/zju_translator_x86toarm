	.text
	.globl	gen_lambda                      # -- Begin function gen_lambda
	.p2align	4, 0x90
gen_lambda:                             # @gen_lambda
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	gen_function@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"@lambda"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_function
	.addrsig_sym gen_noop