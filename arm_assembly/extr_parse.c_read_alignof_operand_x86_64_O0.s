	.text
	.p2align	4, 0x90                         # -- Begin function read_alignof_operand
read_alignof_operand:                   # @read_alignof_operand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_cast_type@PLT
	movq	%rax, -8(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movl	type_ulong(%rip), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	ast_inttype@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_ulong
	.p2align	2
type_ulong:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_alignof_operand
	.addrsig_sym expect
	.addrsig_sym read_cast_type
	.addrsig_sym ast_inttype
	.addrsig_sym type_ulong