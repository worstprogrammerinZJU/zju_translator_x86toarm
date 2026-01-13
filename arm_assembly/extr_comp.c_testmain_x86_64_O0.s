	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$-1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"comparison operators"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect