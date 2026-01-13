	.text
	.p2align	4, 0x90                         # -- Begin function test_buf
test_buf:                               # @test_buf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$97, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	movl	$98, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	assert_string@PLT
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$46, %esi
	callq	buf_write@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	buf_printf@PLT
	movq	-16(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	callq	assert_string@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ab"
.L.str.1:
	.asciz	"%s"
.L.str.2:
	.asciz	"0123456789"
.L.str.3:
	.asciz	".0123456789"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_buf
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym assert_string
	.addrsig_sym buf_body
	.addrsig_sym buf_printf