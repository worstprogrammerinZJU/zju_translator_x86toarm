	.text
	.p2align	4, 0x90                         # -- Begin function capaccum_l
capaccum_l:                             # @capaccum_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	Caccum(%rip), %esi
	xorl	%edx, %edx
	callq	capture_aux@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Caccum
	.p2align	2
Caccum:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym capaccum_l
	.addrsig_sym capture_aux
	.addrsig_sym Caccum