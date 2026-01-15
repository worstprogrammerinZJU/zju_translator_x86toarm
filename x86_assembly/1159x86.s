	.text
	.p2align	4, 0x90                         # -- Begin function test_array_designator
test_array_designator:                  # @test_array_designator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	.L__const.test_array_designator.v(%rip), %rax
	movq	%rax, -12(%rbp)
	movl	.L__const.test_array_designator.v+8(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$5, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-4(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	.L__const.test_array_designator.x(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.test_array_designator.x+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-28(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-24(%rbp), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-20(%rbp), %esi
	movl	$2, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	.L__const.test_array_designator.x2(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const.test_array_designator.x2+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	.L__const.test_array_designator.x2+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	-64(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-60(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-56(%rbp), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-52(%rbp), %esi
	movl	$2, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-48(%rbp), %esi
	movl	$3, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-44(%rbp), %esi
	movl	$4, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	.L__const.test_array_designator.x3(%rip), %rax
	movq	%rax, -76(%rbp)
	movl	.L__const.test_array_designator.x3+8(%rip), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-72(%rbp), %esi
	movl	$2, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-68(%rbp), %esi
	movl	$3, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_array_designator.v:
	.long	0                               # 0x0
	.long	5                               # 0x5
	.long	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.test_array_designator.x:
	.zero	8
	.long	1                               # 0x1
	.long	2                               # 0x2
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.test_array_designator.x2:
	.zero	8
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.p2align	2
.L__const.test_array_designator.x3:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_array_designator
	.addrsig_sym expect