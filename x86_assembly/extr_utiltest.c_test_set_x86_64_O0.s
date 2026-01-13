	.text
	.p2align	4, 0x90                         # -- Begin function test_set
test_set:                               # @test_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_add@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	set_add@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	assert_int@PLT
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_add@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	set_add@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_union@PLT
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_union@PLT
	movq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_union@PLT
	movq	%rax, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_intersection@PLT
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_intersection@PLT
	movq	%rax, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_intersection@PLT
	movq	%rax, %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	set_has@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
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
	.asciz	"def"
.L.str.2:
	.asciz	"xyz"
.L.str.3:
	.asciz	"DEF"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_set
	.addrsig_sym assert_int
	.addrsig_sym set_has
	.addrsig_sym set_add
	.addrsig_sym set_union
	.addrsig_sym set_intersection