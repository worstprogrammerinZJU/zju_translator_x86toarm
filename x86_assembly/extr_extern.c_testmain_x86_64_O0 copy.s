	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	externvar1(%rip), %esi
	movl	$98, %edi
	callq	expect@PLT
	movl	externvar2(%rip), %esi
	movl	$99, %edi
	callq	expect@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"extern"
	.bss
	.globl	externvar1
	.p2align	2
externvar1:
	.long	0                               # 0x0
	.globl	externvar2
	.p2align	2
externvar2:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym externvar1
	.addrsig_sym externvar2