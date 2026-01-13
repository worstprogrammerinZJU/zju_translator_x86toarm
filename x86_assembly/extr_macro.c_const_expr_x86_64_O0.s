	.text
	.p2align	4, 0x90                         # -- Begin function const_expr
const_expr:                             # @const_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movl	$2, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movl	$4, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	$100, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$100, %edi
	callq	expect@PLT
	movl	$101, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$101, %edi
	callq	expect@PLT
	movl	$102, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$102, %edi
	callq	expect@PLT
	movl	$103, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$103, %edi
	callq	expect@PLT
	movl	$104, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$104, %edi
	callq	expect@PLT
	movl	$7, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$7, %edi
	callq	expect@PLT
	movl	$9, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$9, %edi
	callq	expect@PLT
	movl	$15, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$15, %edi
	callq	expect@PLT
	movl	$11, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$11, %edi
	callq	expect@PLT
	movl	$12, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$12, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym const_expr
	.addrsig_sym expect