	.text
	.p2align	4, 0x90                         # -- Begin function test_map_stack
test_map_stack:                         # @test_map_stack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	make_map@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	map_put@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$2, %edx
	callq	map_put@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	map_get@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	callq	make_map_parent@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	map_get@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$3, %edx
	callq	map_put@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	map_get@PLT
	movl	%eax, %esi
	movl	$3, %edi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	map_get@PLT
	movl	%eax, %esi
	movl	$1, %edi
	callq	assert_int@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x"
.L.str.1:
	.asciz	"y"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_map_stack
	.addrsig_sym make_map
	.addrsig_sym map_put
	.addrsig_sym assert_int
	.addrsig_sym map_get
	.addrsig_sym make_map_parent