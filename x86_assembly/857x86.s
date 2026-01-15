	.text
	.globl	jq_compile                      # -- Begin function jq_compile
	.p2align	4, 0x90
jq_compile:                             # @jq_compile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_object@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	jq_compile_args@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_compile_args
	.addrsig_sym jv_object