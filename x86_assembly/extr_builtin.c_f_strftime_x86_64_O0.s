	.text
	.p2align	4, 0x90                         # -- Begin function f_strftime
f_strftime:                             # @f_strftime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"strftime/1 not implemented on this platform"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_strftime
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string