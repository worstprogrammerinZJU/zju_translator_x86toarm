	.text
	.p2align	4, 0x90                         # -- Begin function test_dict
test_dict:                              # @test_dict
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	make_dict@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	dict_get@PLT
	movq	%rax, %rdi
	callq	assert_null@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$50, %edx
	callq	dict_put@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$70, %edx
	callq	dict_put@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	dict_get@PLT
	movq	%rax, %rsi
	movl	$50, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	dict_get@PLT
	movq	%rax, %rsi
	movl	$70, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	callq	dict_keys@PLT
	movl	%eax, %edi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
.L.str.1:
	.asciz	"xyz"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_dict
	.addrsig_sym make_dict
	.addrsig_sym assert_null
	.addrsig_sym dict_get
	.addrsig_sym dict_put
	.addrsig_sym assert_int
	.addrsig_sym vec_len
	.addrsig_sym dict_keys