	.text
	.globl	make_label                      # -- Begin function make_label
	.p2align	4, 0x90
make_label:                             # @make_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	make_label.c(%rip), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, make_label.c(%rip)
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	make_label.c
	.comm	make_label.c,4,4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".L%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
	.addrsig_sym make_label.c