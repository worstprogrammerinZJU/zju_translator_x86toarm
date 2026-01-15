	.text
	.p2align	4, 0x90                         # -- Begin function f_halt
f_halt:                                 # @f_halt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jq_halt@PLT
	movb	$0, %al
	callq	jv_true@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_halt
	.addrsig_sym jv_free
	.addrsig_sym jq_halt
	.addrsig_sym jv_invalid
	.addrsig_sym jv_true