	.text
	.p2align	4, 0x90                         # -- Begin function test_complex_designator
test_complex_designator:                # @test_complex_designator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	leaq	-48(%rbp), %rdi
	leaq	.L__const.test_complex_designator.y(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	movl	-48(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-44(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-40(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-36(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-32(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-28(%rbp), %esi
	movl	$10, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-24(%rbp), %esi
	movl	$11, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-20(%rbp), %esi
	movl	$5, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-16(%rbp), %esi
	movl	$6, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-12(%rbp), %esi
	movl	$7, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$8, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$9, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	.L__const.test_complex_designator.y2(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	.L__const.test_complex_designator.y2+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	.L__const.test_complex_designator.y2+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-80(%rbp), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-68(%rbp), %esi
	movl	$3, %edi
	movb	$0, %al
	callq	expect@PLT
	movq	.L__const.test_complex_designator.y3(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	.L__const.test_complex_designator.y3+8(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	-96(%rbp), %esi
	movl	$1, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-92(%rbp), %esi
	movl	$10, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-88(%rbp), %esi
	movl	$11, %edi
	movb	$0, %al
	callq	expect@PLT
	movl	-84(%rbp), %esi
	xorl	%edi, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.test_complex_designator.y:
	.zero	8
	.zero	8
	.long	0                               # 0x0
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.p2align	4
.L__const.test_complex_designator.y2:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.L__const.test_complex_designator.y3:
	.long	1                               # 0x1
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_complex_designator
	.addrsig_sym expect