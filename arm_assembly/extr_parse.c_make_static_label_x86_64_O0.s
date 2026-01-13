	.text
	.p2align	4, 0x90                         # -- Begin function make_static_label
make_static_label:                      # @make_static_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	make_static_label.c(%rip), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, make_static_label.c(%rip)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	make_static_label.c
	.comm	make_static_label.c,4,4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".S%d.%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_static_label
	.addrsig_sym format
	.addrsig_sym make_static_label.c