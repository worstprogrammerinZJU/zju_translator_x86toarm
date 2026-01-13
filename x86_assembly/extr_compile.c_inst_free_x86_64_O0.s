	.text
	.p2align	4, 0x90                         # -- Begin function inst_free
inst_free:                              # @inst_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_mem_free@PLT
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	callq	block_free@PLT
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	block_free@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	locfile_free@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	andl	OP_HAS_CONSTANT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	jv_mem_free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_free
	.addrsig_sym jv_mem_free
	.addrsig_sym block_free
	.addrsig_sym locfile_free
	.addrsig_sym opcode_describe
	.addrsig_sym jv_free
	.addrsig_sym OP_HAS_CONSTANT