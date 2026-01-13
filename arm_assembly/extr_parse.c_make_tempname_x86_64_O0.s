	.text
	.globl	make_tempname                   # -- Begin function make_tempname
	.p2align	4, 0x90
make_tempname:                          # @make_tempname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	make_tempname.c(%rip), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, make_tempname.c(%rip)
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	make_tempname.c
	.comm	make_tempname.c,4,4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".T%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym format
	.addrsig_sym make_tempname.c