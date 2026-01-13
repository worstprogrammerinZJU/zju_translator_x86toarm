	.text
	.p2align	4, 0x90                         # -- Begin function test_list
test_list:                              # @test_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	xorl	%edi, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	vec_push@PLT
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	vec_push@PLT
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	callq	vec_copy@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	vec_get@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	vec_get@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	callq	vec_reverse@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movq	-24(%rbp), %rdi
	callq	vec_pop@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-24(%rbp), %rdi
	callq	vec_pop@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rsi
	xorl	%edi, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	$1, %esi
	callq	vec_push@PLT
	movq	-32(%rbp), %rdi
	callq	vec_head@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-32(%rbp), %rdi
	callq	vec_tail@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-32(%rbp), %rdi
	movl	$2, %esi
	callq	vec_push@PLT
	movq	-32(%rbp), %rdi
	callq	vec_head@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-32(%rbp), %rdi
	callq	vec_tail@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	$1, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rdi
	movl	$2, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rdi
	xorl	%esi, %esi
	callq	vec_get@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-40(%rbp), %rdi
	movl	$1, %esi
	callq	vec_get@PLT
	movq	%rax, %rsi
	movl	$2, %edi
	callq	assert_int@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_list
	.addrsig_sym make_vector
	.addrsig_sym assert_int
	.addrsig_sym vec_len
	.addrsig_sym vec_push
	.addrsig_sym vec_copy
	.addrsig_sym vec_get
	.addrsig_sym vec_reverse
	.addrsig_sym vec_pop
	.addrsig_sym vec_head
	.addrsig_sym vec_tail