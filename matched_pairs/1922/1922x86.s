	.text
	.p2align	4, 0x90                         # -- Begin function read_sizeof_operand
read_sizeof_operand:                    # @read_sizeof_operand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_sizeof_operand_sub@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_VOID(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movl	$1, %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
.LBB0_4:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -12(%rbp)
	xorl	%eax, %eax
	cmpl	-12(%rbp), %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	type_ulong(%rip), %edi
	movl	-12(%rbp), %esi
	callq	ast_inttype@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_VOID
	.p2align	3
KIND_VOID:
	.quad	0                               # 0x0
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.globl	type_ulong
	.p2align	2
type_ulong:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_sizeof_operand
	.addrsig_sym read_sizeof_operand_sub
	.addrsig_sym assert
	.addrsig_sym ast_inttype
	.addrsig_sym KIND_VOID
	.addrsig_sym KIND_FUNC
	.addrsig_sym type_ulong