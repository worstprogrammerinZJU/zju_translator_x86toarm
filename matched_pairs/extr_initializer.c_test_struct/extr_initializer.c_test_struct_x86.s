	.text
	.p2align	4, 0x90                         # -- Begin function test_struct
test_struct:                            # @test_struct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	.L__const.test_struct.we(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.test_struct.we+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	.L__const.test_struct.we+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.test_struct.we+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	.L__const.test_struct.w(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.L__const.test_struct.w+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	.L__const.test_struct.w+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const.test_struct.w+24(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	movb	$0, %al
	callq	verify@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.test_struct.we:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.p2align	4
.L__const.test_struct.w:
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_struct
	.addrsig_sym verify