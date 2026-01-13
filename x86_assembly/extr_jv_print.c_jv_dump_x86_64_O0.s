	.text
	.globl	jv_dump                         # -- Begin function jv_dump
	.p2align	4, 0x90
jv_dump:                                # @jv_dump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	stdout(%rip), %esi
	movl	-8(%rbp), %edx
	callq	jv_dumpf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dumpf
	.addrsig_sym stdout