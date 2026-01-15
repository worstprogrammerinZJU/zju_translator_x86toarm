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
	callq	t1@PLT
	movb	$0, %al
	callq	t2@PLT
	movb	$0, %al
	callq	t3@PLT
	movb	$0, %al
	callq	t4@PLT
	movb	$0, %al
	callq	t5@PLT
	movb	$0, %al
	callq	t6@PLT
	movb	$0, %al
	callq	t7@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym t1
	.addrsig_sym t2
	.addrsig_sym t3
	.addrsig_sym t4
	.addrsig_sym t5
	.addrsig_sym t6
	.addrsig_sym t7