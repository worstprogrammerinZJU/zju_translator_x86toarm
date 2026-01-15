	.text
	.globl	gen_const_global                # -- Begin function gen_const_global
	.p2align	4, 0x90
gen_const_global:                       # @gen_const_global
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	STORE_GLOBAL(%rip), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	movl	OP_HAS_CONSTANT(%rip), %ecx
	orl	OP_HAS_VARIABLE(%rip), %ecx
	orl	OP_HAS_BINDING(%rip), %ecx
	andl	%ecx, %eax
	movl	OP_HAS_CONSTANT(%rip), %ecx
	orl	OP_HAS_VARIABLE(%rip), %ecx
	orl	OP_HAS_BINDING(%rip), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	STORE_GLOBAL(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rdi
	callq	strdup@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdi
	callq	inst_block@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STORE_GLOBAL
	.p2align	2
STORE_GLOBAL:
	.long	0                               # 0x0
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym inst_block
	.addrsig_sym STORE_GLOBAL
	.addrsig_sym OP_HAS_CONSTANT
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_HAS_BINDING