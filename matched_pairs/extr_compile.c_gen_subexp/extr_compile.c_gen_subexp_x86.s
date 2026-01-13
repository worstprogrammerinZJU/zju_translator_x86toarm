	.text
	.globl	gen_subexp                      # -- Begin function gen_subexp
	.p2align	4, 0x90
gen_subexp:                             # @gen_subexp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	block_is_noop@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	DUP(%rip), %edi
	callq	gen_op_simple@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	block_is_single@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	block_const@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	block_free@PLT
	movl	-20(%rbp), %edi
	callq	gen_op_pushk_under@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	SUBEXP_BEGIN(%rip), %edi
	callq	gen_op_simple@PLT
	movq	%rax, -32(%rbp)
	movl	SUBEXP_END(%rip), %edi
	callq	gen_op_simple@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	BLOCK@PLT
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.long	0                               # 0x0
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.globl	SUBEXP_BEGIN
	.p2align	2
SUBEXP_BEGIN:
	.long	0                               # 0x0
	.globl	SUBEXP_END
	.p2align	2
SUBEXP_END:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_noop
	.addrsig_sym gen_op_simple
	.addrsig_sym block_is_single
	.addrsig_sym block_const
	.addrsig_sym block_free
	.addrsig_sym gen_op_pushk_under
	.addrsig_sym BLOCK
	.addrsig_sym DUP
	.addrsig_sym LOADK
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym SUBEXP_END