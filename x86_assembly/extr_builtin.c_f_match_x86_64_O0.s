	.text
	.p2align	4, 0x90                         # -- Begin function f_match
f_match:                                # @f_match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq was compiled without ONIGURUMA regex libary. match/test/sub and related functions are not available."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_match
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string