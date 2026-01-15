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
	movb	$0, %al
	callq	t8@PLT
	movb	$0, %al
	callq	t9@PLT
	movb	$0, %al
	callq	t10@PLT
	movb	$0, %al
	callq	t11@PLT
	movb	$0, %al
	callq	t12@PLT
	movb	$0, %al
	callq	t13@PLT
	movb	$0, %al
	callq	t14@PLT
	movb	$0, %al
	callq	unnamed@PLT
	movb	$0, %al
	callq	assign@PLT
	movb	$0, %al
	callq	arrow@PLT
	movb	$0, %al
	callq	incomplete@PLT
	movb	$0, %al
	callq	bitfield_basic@PLT
	movb	$0, %al
	callq	bitfield_mix@PLT
	movb	$0, %al
	callq	bitfield_union@PLT
	movb	$0, %al
	callq	bitfield_unnamed@PLT
	movb	$0, %al
	callq	bitfield_initializer@PLT
	movb	$0, %al
	callq	test_offsetof@PLT
	movb	$0, %al
	callq	flexible_member@PLT
	movb	$0, %al
	callq	empty_struct@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"struct"
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
	.addrsig_sym t8
	.addrsig_sym t9
	.addrsig_sym t10
	.addrsig_sym t11
	.addrsig_sym t12
	.addrsig_sym t13
	.addrsig_sym t14
	.addrsig_sym unnamed
	.addrsig_sym assign
	.addrsig_sym arrow
	.addrsig_sym incomplete
	.addrsig_sym bitfield_basic
	.addrsig_sym bitfield_mix
	.addrsig_sym bitfield_union
	.addrsig_sym bitfield_unnamed
	.addrsig_sym bitfield_initializer
	.addrsig_sym test_offsetof
	.addrsig_sym flexible_member
	.addrsig_sym empty_struct