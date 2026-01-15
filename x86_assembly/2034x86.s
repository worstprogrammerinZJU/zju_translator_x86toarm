	.text
	.globl	enter_drain_mode                # -- Begin function enter_drain_mode
	.p2align	4, 0x90
enter_drain_mode:                       # @enter_drain_mode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	UNUSED_PARAMETER@PLT
	movl	$1, drain_mode(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	drain_mode
	.p2align	2
drain_mode:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym drain_mode