	.text
	.p2align	4, 0x90                         # -- Begin function test_typedef
test_typedef:                           # @test_typedef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$5, -4(%rbp)
	movl	-4(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movq	.L__const.test_typedef.b(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	.L__const.test_typedef.b+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movl	$5, -24(%rbp)
	movl	-24(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	$3, -28(%rbp)
	movl	-28(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	$1, -32(%rbp)
	movl	$5, -36(%rbp)
	movl	$4, -40(%rbp)
	movl	-32(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-36(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	-40(%rbp), %esi
	movl	$4, %edi
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_typedef.b:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_typedef
	.addrsig_sym expect