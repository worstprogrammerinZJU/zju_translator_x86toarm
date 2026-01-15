	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function testmain
.LCPI0_0:
	.quad	0x4010000000000000              # double 4
	.text
	.globl	testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movb	$0, %al
	callq	no_declaration@PLT
	movl	%eax, %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	$3, %edi
	movl	$4, %esi
	callq	oldstyle1@PLT
	movl	%eax, %esi
	movl	$7, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	oldstyle2@PLT
	movl	%eax, %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	$5, %edi
	callq	oldstyle3@PLT
	movl	%eax, %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	$5, %edi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	oldstyle4@PLT
	movl	%eax, %esi
	movl	$9, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"K&R"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym no_declaration
	.addrsig_sym oldstyle1
	.addrsig_sym oldstyle2
	.addrsig_sym oldstyle3
	.addrsig_sym oldstyle4