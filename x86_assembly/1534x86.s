	.text
	.p2align	4, 0x90                         # -- Begin function test_ucn
test_ucn:                               # @test_ucn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$36, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$36, %esi
	movl	%esi, %edi
	callq	expect@PLT
	leaq	.L.str(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	leaq	.L.str(%rip), %rsi
	movq	%rsi, %rdi
	callq	expect_string@PLT
	movl	$88, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$88, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$88, %esi
	movl	%esi, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"$"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_ucn
	.addrsig_sym expect
	.addrsig_sym expect_string