	.text
	.globl	jq_dump_disassembly             # -- Begin function jq_dump_disassembly
	.p2align	4, 0x90
jq_dump_disassembly:                    # @jq_dump_disassembly
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	dump_disassembly@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dump_disassembly