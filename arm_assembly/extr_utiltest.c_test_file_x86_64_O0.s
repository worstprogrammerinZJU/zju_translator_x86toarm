	.text
	.p2align	4, 0x90                         # -- Begin function test_file
test_file:                              # @test_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	make_file_string@PLT
	movl	%eax, %edi
	callq	stream_push@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$97, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$98, %edi
	callq	assert_int@PLT
	movl	$98, %edi
	callq	unreadc@PLT
	movl	$97, %edi
	callq	unreadc@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$97, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$98, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$99, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$10, %edi
	callq	assert_int@PLT
	movl	$10, %edi
	callq	unreadc@PLT
	movb	$0, %al
	callq	readc@PLT
	movq	%rax, %rsi
	movl	$10, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	readc@PLT
	cmpq	$0, %rax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert_true@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_file
	.addrsig_sym stream_push
	.addrsig_sym make_file_string
	.addrsig_sym assert_int
	.addrsig_sym readc
	.addrsig_sym unreadc
	.addrsig_sym assert_true