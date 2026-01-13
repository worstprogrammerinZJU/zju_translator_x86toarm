	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movq	p1(%rip), %rax
	movl	(%rax), %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	q1(%rip), %rax
	movl	(%rax), %esi
	movl	$3, %edi
	callq	expect@PLT
	movq	p2(%rip), %rax
	movl	-4(%rax), %esi
	movl	$7, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"constexpr"
	.bss
	.globl	p1
	.p2align	3
p1:
	.quad	0
	.globl	q1
	.p2align	3
q1:
	.quad	0
	.globl	p2
	.p2align	3
p2:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym p1
	.addrsig_sym q1
	.addrsig_sym p2