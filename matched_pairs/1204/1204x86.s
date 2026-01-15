	.text
	.p2align	4, 0x90                         # -- Begin function jv_test
jv_test:                                # @jv_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$21248, %rsp                    # imm = 0x5300
	leaq	.L.str(%rip), %rdi
	callq	jv_parse@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	callq	jv_invalid_get_msg@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	jv_string_value@PLT
	movq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$42, %edi
	callq	jv_number@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -96(%rbp)
	movl	$42, %edi
	callq	jv_number@PLT
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -184(%rbp)
	movl	$19, %edi
	callq	jv_number@PLT
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -200(%rbp)
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	jv_equal@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -216(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	jv_equal@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-88(%rbp), %rdi
	callq	jv_free@PLT
	movq	-24(%rbp), %rdi
	callq	jv_get_refcnt@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -240(%rbp)
	movq	-24(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	jv_get_refcnt@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -268(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -268(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rdi
	movl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-280(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-280(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-280(%rbp), %rdi
	callq	jv_free@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rdi
	movl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -360(%rbp)
	movl	$19, %edi
	callq	jv_number@PLT
	movq	%rax, -376(%rbp)
	movq	-360(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-360(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-360(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-360(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rdi
	movl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$19, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-320(%rbp), %rdi
	callq	jv_free@PLT
	movq	-360(%rbp), %rax
	movq	%rax, -448(%rbp)
	movl	$200, %edi
	callq	jv_number@PLT
	movq	%rax, -464(%rbp)
	movq	-360(%rbp), %rdi
	movq	-464(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-448(%rbp), %rax
	cmpq	-472(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-360(%rbp), %rdi
	callq	jv_free@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -488(%rbp)
	movl	$19, %edi
	callq	jv_number@PLT
	movq	%rax, -496(%rbp)
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$3, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-480(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-480(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rdi
	movl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-480(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rdi
	movl	$2, %esi
	callq	jv_array_get@PLT
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$19, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-480(%rbp), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -560(%rbp)
	movl	$1, %edi
	callq	jv_number@PLT
	movq	%rax, -576(%rbp)
	movq	-560(%rbp), %rdi
	movq	-576(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -560(%rbp)
	movl	$2, %edi
	callq	jv_number@PLT
	movq	%rax, -592(%rbp)
	movq	-560(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -600(%rbp)
	movl	$3, %edi
	callq	jv_number@PLT
	movq	%rax, -616(%rbp)
	movq	-560(%rbp), %rdi
	movq	-616(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	jv_array_slice@PLT
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$4, %edi
	callq	jv_number@PLT
	movq	%rax, -648(%rbp)
	movq	-560(%rbp), %rdi
	movq	-648(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-600(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-560(%rbp), %rdi
	callq	jv_free@PLT
	movq	-600(%rbp), %rdi
	callq	jv_free@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rdi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rdi
	movl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rdi
	callq	jv_array_length@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	jv_free@PLT
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -712(%rbp)
	leaq	.L.str.2(%rip), %rdi
	movl	$3, %esi
	callq	jv_string_sized@PLT
	movq	%rax, -720(%rbp)
	movq	-712(%rbp), %rdi
	movq	-720(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	.L__const.jv_test.nasty(%rip), %eax
	movl	%eax, -725(%rbp)
	movb	.L__const.jv_test.nasty+4(%rip), %al
	movb	%al, -721(%rbp)
	leaq	-725(%rbp), %rdi
	callq	jv_string@PLT
	movq	%rax, -736(%rbp)
	leaq	-725(%rbp), %rdi
	movl	$5, %esi
	callq	jv_string_sized@PLT
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rdi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -21236(%rbp)              # 4-byte Spill
	leaq	-725(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	movl	-21236(%rbp), %eax              # 4-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-744(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rdi
	callq	jv_string_length_bytes@PLT
	cmpl	$5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-736(%rbp), %rdi
	callq	jv_free@PLT
	movq	-744(%rbp), %rdi
	callq	jv_free@PLT
	movl	.L__const.jv_test.a1s(%rip), %eax
	movl	%eax, -766(%rbp)
	movw	.L__const.jv_test.a1s+4(%rip), %ax
	movw	%ax, -762(%rbp)
	movl	.L__const.jv_test.a2s(%rip), %eax
	movl	%eax, -772(%rbp)
	movw	.L__const.jv_test.a2s+4(%rip), %ax
	movw	%ax, -768(%rbp)
	movq	.L__const.jv_test.bs(%rip), %rax
	movq	%rax, -780(%rbp)
	leaq	-766(%rbp), %rdi
	callq	jv_string@PLT
	movq	%rax, -792(%rbp)
	leaq	-772(%rbp), %rdi
	callq	jv_string@PLT
	movq	%rax, -800(%rbp)
	leaq	-780(%rbp), %rdi
	callq	jv_string@PLT
	movq	%rax, -808(%rbp)
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -816(%rbp)
	movq	-800(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -824(%rbp)
	movq	-816(%rbp), %rdi
	movq	-824(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-800(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -832(%rbp)
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -840(%rbp)
	movq	-832(%rbp), %rdi
	movq	-840(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -848(%rbp)
	movq	-808(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -856(%rbp)
	movq	-848(%rbp), %rdi
	movq	-856(%rbp), %rsi
	callq	jv_equal@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, -21232(%rbp)              # 8-byte Spill
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, %rcx
	movq	-21232(%rbp), %rax              # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, -21224(%rbp)              # 8-byte Spill
	movq	-800(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, %rcx
	movq	-21224(%rbp), %rax              # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-808(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, -21216(%rbp)              # 8-byte Spill
	movq	-792(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rdi
	callq	jv_string_hash@PLT
	movq	%rax, %rcx
	movq	-21216(%rbp), %rax              # 8-byte Reload
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-792(%rbp), %rdi
	callq	jv_free@PLT
	movq	-800(%rbp), %rdi
	callq	jv_free@PLT
	movq	-808(%rbp), %rdi
	callq	jv_free@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -912(%rbp)
	leaq	.L.str.4(%rip), %rdi
	movl	$42, %esi
	leaq	.L.str.5(%rip), %rdx
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movq	%rax, -920(%rbp)
	movq	-912(%rbp), %rdi
	movq	-920(%rbp), %rsi
	callq	jv_equal@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	$0, -20932(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$20000, -20932(%rbp)            # imm = 0x4E20
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movslq	-20932(%rbp), %rax
	movb	$97, -20928(%rbp,%rax)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20932(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20932(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movb	$0, -929(%rbp)
	leaq	-20928(%rbp), %rsi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movq	%rax, -20944(%rbp)
	movq	-20944(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -20952(%rbp)
	movq	-20952(%rbp), %rdi
	callq	jv_string_length_bytes@PLT
	cltq
	cmpq	$19999, %rax                    # imm = 0x4E1F
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	leaq	-20928(%rbp), %rax
	movq	%rax, -21248(%rbp)              # 8-byte Spill
	movq	-20944(%rbp), %rdi
	callq	jv_string_value@PLT
	movq	-21248(%rbp), %rdi              # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-20944(%rbp), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_object@PLT
	movq	%rax, -20960(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -20976(%rbp)
	movl	$42, %edi
	callq	jv_number@PLT
	movq	%rax, -20984(%rbp)
	movq	-20960(%rbp), %rdi
	movq	-20976(%rbp), %rsi
	movq	-20984(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, -20968(%rbp)
	movq	-20968(%rbp), %rax
	movq	%rax, -20960(%rbp)
	leaq	.L.str.7(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21000(%rbp)
	movl	$24, %edi
	callq	jv_number@PLT
	movq	%rax, -21008(%rbp)
	movq	-20960(%rbp), %rdi
	movq	-21000(%rbp), %rsi
	movq	-21008(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, -20992(%rbp)
	movq	-20992(%rbp), %rax
	movq	%rax, -20960(%rbp)
	movq	-20960(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21024(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21032(%rbp)
	movq	-21024(%rbp), %rdi
	movq	-21032(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21016(%rbp)
	movq	-21016(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-20960(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21048(%rbp)
	leaq	.L.str.7(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21056(%rbp)
	movq	-21048(%rbp), %rdi
	movq	-21056(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21040(%rbp)
	movq	-21040(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$24, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-20960(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21072(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21080(%rbp)
	movl	$420, %edi                      # imm = 0x1A4
	callq	jv_number@PLT
	movq	%rax, -21088(%rbp)
	movq	-21072(%rbp), %rdi
	movq	-21080(%rbp), %rsi
	movq	-21088(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, -21064(%rbp)
	leaq	.L.str.7(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21104(%rbp)
	movl	$240, %edi
	callq	jv_number@PLT
	movq	%rax, -21112(%rbp)
	movq	-21064(%rbp), %rdi
	movq	-21104(%rbp), %rsi
	movq	-21112(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, -21096(%rbp)
	movq	-21096(%rbp), %rax
	movq	%rax, -21064(%rbp)
	movq	-20960(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21128(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21136(%rbp)
	movq	-21128(%rbp), %rdi
	movq	-21136(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21120(%rbp)
	movq	-21120(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$42, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-20960(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21152(%rbp)
	leaq	.L.str.7(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21160(%rbp)
	movq	-21152(%rbp), %rdi
	movq	-21160(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21144(%rbp)
	movq	-21144(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$24, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-21064(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21176(%rbp)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21184(%rbp)
	movq	-21176(%rbp), %rdi
	movq	-21184(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21168(%rbp)
	movq	-21168(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$420, %eax                      # imm = 0x1A4
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-20960(%rbp), %rdi
	callq	jv_free@PLT
	movq	-21064(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, -21200(%rbp)
	leaq	.L.str.7(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -21208(%rbp)
	movq	-21200(%rbp), %rdi
	movq	-21208(%rbp), %rsi
	callq	jv_object_get@PLT
	movq	%rax, -21192(%rbp)
	movq	-21192(%rbp), %rdi
	callq	jv_number_value@PLT
	cmpl	$240, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-21064(%rbp), %rdi
	callq	jv_free@PLT
	addq	$21248, %rsp                    # imm = 0x5300
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"{\"a':\"12\"}"
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Expected separator between values at line 1, column 9 (while parsing '{\"a':\"12\"}')"
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"foo"
	.section	.rodata,"a",@progbits
.L__const.jv_test.nasty:
	.asciz	"foo\000"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.jv_test.a1s:
	.asciz	"hello"
.L__const.jv_test.a2s:
	.asciz	"hello"
.L__const.jv_test.bs:
	.asciz	"goodbye"
.L.str.3:
	.asciz	"hello42!"
.L.str.4:
	.asciz	"hello%d%s"
.L.str.5:
	.asciz	"!"
.L.str.6:
	.asciz	"%s"
.L.str.7:
	.asciz	"bar"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_test
	.addrsig_sym jv_parse
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym strcmp
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_number_value
	.addrsig_sym jv_array_get
	.addrsig_sym jv_equal
	.addrsig_sym jv_get_refcnt
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_string
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym strlen
	.addrsig_sym jv_string_hash
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object_get
	.addrsig_sym JV_KIND_INVALID
	.addrsig_sym JV_KIND_ARRAY