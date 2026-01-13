	.text
	.globl	jv_parse                        # -- Begin function jv_parse
	.p2align	4, 0x90
jv_parse:                               # @jv_parse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jv_parse_sized@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_parse_sized
	.addrsig_sym strlen