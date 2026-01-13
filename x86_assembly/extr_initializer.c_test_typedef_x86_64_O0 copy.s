	.text
	.p2align	4, 0x90                         # -- Begin function test_typedef
test_typedef:                           # @test_typedef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.test_typedef.a(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	.L__const.test_typedef.b(%rip), %rax
	movq	%rax, -20(%rbp)
	movl	.L__const.test_typedef.b+8(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$2, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.test_typedef.a:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_typedef.b:
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_typedef
	.addrsig_sym expect