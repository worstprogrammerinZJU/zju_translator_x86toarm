	.text
	.p2align	4, 0x90                         # -- Begin function test_nested
test_nested:                            # @test_nested
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.test_nested.v(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.test_nested.v+8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	-16(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-12(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movsbl	-8(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movsbl	-1(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.test_nested.v:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.ascii	"\003\004\005\006\007\b\t\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_nested
	.addrsig_sym expect