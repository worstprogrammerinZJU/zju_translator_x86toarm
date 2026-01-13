	.text
	.p2align	4, 0x90                         # -- Begin function f_stderr
f_stderr:                               # @f_stderr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	stderr(%rip), %esi
	xorl	%edx, %edx
	callq	jv_dumpf@PLT
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_stderr
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym stderr