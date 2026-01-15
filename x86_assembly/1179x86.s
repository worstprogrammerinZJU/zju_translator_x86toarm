	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movw	$10, -2(%rbp)
	movw	$15, -4(%rbp)
	movswl	-2(%rbp), %eax
	movswl	-4(%rbp), %ecx
	addl	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$25, %edi
	movswl	%ax, %esi
	callq	expects@PLT
	movswl	-2(%rbp), %eax
	addl	$10, %eax
                                        # kill: def $ax killed $ax killed $eax
	movl	$20, %edi
	movswl	%ax, %esi
	callq	expects@PLT
	movq	$67, -16(%rbp)
	movq	$69, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movl	$67, %edi
	callq	expectl@PLT
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movl	%eax, %esi
	movl	$136, %edi
	callq	expectl@PLT
	movl	$10, %esi
	movl	%esi, %edi
	callq	expectl@PLT
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movl	%esi, %edi
	callq	expectl@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expectl@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expectl@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"long"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expects
	.addrsig_sym expectl