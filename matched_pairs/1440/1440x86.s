	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movb	$0, %al
	callq	digraph@PLT
	movb	$0, %al
	callq	escape@PLT
	movb	$0, %al
	callq	whitespace@PLT
	movb	$0, %al
	callq	newline@PLT
	movb	$0, %al
	callq	dollar@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lexer"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym digraph
	.addrsig_sym escape
	.addrsig_sym whitespace
	.addrsig_sym newline
	.addrsig_sym dollar