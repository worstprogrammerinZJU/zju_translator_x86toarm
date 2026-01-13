	.text
	.globl	ctsetbytes                      # -- Begin function ctsetbytes
	.p2align	4, 0x90
ctsetbytes:                             # @ctsetbytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	%rax, bbytes(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	bbytes
	.p2align	3
bbytes:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bbytes