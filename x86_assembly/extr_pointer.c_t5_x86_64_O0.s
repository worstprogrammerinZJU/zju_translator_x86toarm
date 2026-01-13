	.text
	.p2align	4, 0x90                         # -- Begin function t5
t5:                                     # @t5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	.L__const.t5.s(%rip), %eax
	movl	%eax, -4(%rbp)
	movb	$65, -4(%rbp)
	movl	$65, %edi
	movsbl	-4(%rbp), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.t5.s:
	.asciz	"xyz"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect