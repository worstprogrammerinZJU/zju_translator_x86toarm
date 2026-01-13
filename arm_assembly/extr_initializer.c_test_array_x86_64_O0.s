	.text
	.p2align	4, 0x90                         # -- Begin function test_array
test_array:                             # @test_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$368, %rsp                      # imm = 0x170
	movq	.L__const.test_array.x(%rip), %rax
	movq	%rax, -12(%rbp)
	movl	.L__const.test_array.x+8(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	leaq	-64(%rbp), %rdi
	leaq	.L__const.test_array.ye(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	leaq	-112(%rbp), %rdi
	leaq	.L__const.test_array.y1(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	leaq	-64(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movl	$12, %edx
	callq	verify@PLT
	leaq	-160(%rbp), %rdi
	leaq	.L__const.test_array.y2(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	leaq	-64(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movl	$12, %edx
	callq	verify@PLT
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movl	$1, -208(%rbp)
	movl	$2, -196(%rbp)
	movl	$3, -184(%rbp)
	movl	$4, -172(%rbp)
	leaq	-256(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movl	$1, -256(%rbp)
	movl	$2, -244(%rbp)
	movl	$3, -232(%rbp)
	movl	$4, -220(%rbp)
	leaq	-208(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	movl	$12, %edx
	callq	verify@PLT
	leaq	-304(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movw	$1, -304(%rbp)
	movw	$2, -292(%rbp)
	movw	$3, -290(%rbp)
	movw	$4, -280(%rbp)
	movw	$5, -278(%rbp)
	movw	$6, -276(%rbp)
	leaq	-352(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset@PLT
	movw	$1, -352(%rbp)
	movw	$2, -340(%rbp)
	movw	$3, -338(%rbp)
	movw	$4, -328(%rbp)
	movw	$5, -326(%rbp)
	movw	$6, -324(%rbp)
	leaq	-304(%rbp), %rdi
	leaq	-352(%rbp), %rsi
	movl	$24, %edx
	callq	verify_short@PLT
	movl	.L__const.test_array.a(%rip), %eax
	movl	%eax, -356(%rbp)
	movl	-356(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2
.L__const.test_array.x:
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	5                               # 0x5
	.p2align	4
.L__const.test_array.ye:
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	7                               # 0x7
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.p2align	4
.L__const.test_array.y1:
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	7                               # 0x7
	.zero	12
	.p2align	4
.L__const.test_array.y2:
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	7                               # 0x7
	.zero	12
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.L__const.test_array.a:
	.long	3                               # 0x3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_array
	.addrsig_sym expect
	.addrsig_sym verify
	.addrsig_sym verify_short