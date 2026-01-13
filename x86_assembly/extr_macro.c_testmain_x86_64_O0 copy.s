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
	callq	special@PLT
	movb	$0, %al
	callq	include@PLT
	movb	$0, %al
	callq	predefined@PLT
	movb	$0, %al
	callq	simple@PLT
	movb	$0, %al
	callq	loop@PLT
	movb	$0, %al
	callq	undef@PLT
	movb	$0, %al
	callq	cond_incl@PLT
	movb	$0, %al
	callq	const_expr@PLT
	movb	$0, %al
	callq	defined@PLT
	movb	$0, %al
	callq	ifdef@PLT
	movb	$0, %al
	callq	funclike@PLT
	movb	$0, %al
	callq	empty@PLT
	movb	$0, %al
	callq	noarg@PLT
	movb	$0, %al
	callq	null@PLT
	movb	$0, %al
	callq	counter@PLT
	movb	$0, %al
	callq	gnuext@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"macros"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym special
	.addrsig_sym include
	.addrsig_sym predefined
	.addrsig_sym simple
	.addrsig_sym loop
	.addrsig_sym undef
	.addrsig_sym cond_incl
	.addrsig_sym const_expr
	.addrsig_sym defined
	.addrsig_sym ifdef
	.addrsig_sym funclike
	.addrsig_sym empty
	.addrsig_sym noarg
	.addrsig_sym null
	.addrsig_sym counter
	.addrsig_sym gnuext