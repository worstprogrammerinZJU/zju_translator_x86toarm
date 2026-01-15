	.text
	.p2align	4, 0x90                         # -- Begin function gen_format
gen_format:                             # @gen_format
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_lambda@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	gen_call@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"format"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_format
	.addrsig_sym BLOCK
	.addrsig_sym gen_call
	.addrsig_sym gen_lambda
	.addrsig_sym gen_const