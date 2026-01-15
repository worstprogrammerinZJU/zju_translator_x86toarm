	.text
	.p2align	4, 0x90                         # -- Begin function test_struct_designator
test_struct_designator:                 # @test_struct_designator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.test_struct_designator.v1(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	.L__const.test_struct_designator.v2(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %esi
	movl	$7, %edi
	callq	expect@PLT
	movq	.L__const.test_struct_designator.v3(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	.L__const.test_struct_designator.v3+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %esi
	movl	$12, %edi
	callq	expect@PLT
	movl	-24(%rbp), %esi
	movl	$17, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.L__const.test_struct_designator.v1:
	.long	5                               # 0x5
	.long	1                               # 0x1
	.p2align	2
.L__const.test_struct_designator.v2:
	.long	0                               # 0x0
	.long	7                               # 0x7
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_struct_designator.v3:
	.long	0                               # 0x0
	.long	12                              # 0xc
	.long	17                              # 0x11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_struct_designator
	.addrsig_sym expect