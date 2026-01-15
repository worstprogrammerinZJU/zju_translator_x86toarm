	.text
	.p2align	4, 0x90                         # -- Begin function test_string
test_string:                            # @test_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.test_string.s(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	expect_string@PLT
	movl	.L__const.test_string.t(%rip), %eax
	movl	%eax, -8(%rbp)
	leaq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	expect_string@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.test_string.s:
	.asciz	"abc"
.L.str:
	.asciz	"abc"
.L__const.test_string.t:
	.asciz	"def"
.L.str.1:
	.asciz	"def"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_string
	.addrsig_sym expect_string