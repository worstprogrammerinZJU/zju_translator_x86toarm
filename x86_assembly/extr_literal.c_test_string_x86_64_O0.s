	.text
	.p2align	4, 0x90                         # -- Begin function test_string
test_string:                            # @test_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	.L.str(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	leaq	.L.str(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	movsbl	.L.str(%rip), %esi
	movl	$97, %edi
	callq	expect@PLT
	movsbl	.L.str+3(%rip), %esi
	xorl	%edi, %edi
	callq	expect@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	movq	.L__const.test_string.expected(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.test_string.expected+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	expect_string@PLT
	movl	$99, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$12354, %esi                    # imm = 0x3042
	movl	%esi, %edi
	callq	expect@PLT
	movl	$12354, %esi                    # imm = 0x3042
	movl	%esi, %edi
	callq	expect@PLT
	movl	$12354, %esi                    # imm = 0x3042
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, -20(%rbp)
	movl	$2, -24(%rbp)
	movl	$3, -28(%rbp)
	movl	$4, -32(%rbp)
	movl	-20(%rbp), %esi
	addl	-24(%rbp), %esi
	addl	-28(%rbp), %esi
	addl	-32(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	movl	$1, -36(%rbp)
	movl	$2, -40(%rbp)
	movl	$3, -44(%rbp)
	movl	$4, -48(%rbp)
	movl	-36(%rbp), %esi
	addl	-40(%rbp), %esi
	addl	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
.L.str.1:
	.asciz	"abcd"
.L.str.2:
	.asciz	"abcdef"
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L__const.test_string.expected:
	.asciz	"Aa\007\b\f\n\r\t\013\033\007\017\235\377\022"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Aa\007\b\f\n\r\t\013\033\007\017\235\377\022"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_string
	.addrsig_sym expect_string
	.addrsig_sym expect