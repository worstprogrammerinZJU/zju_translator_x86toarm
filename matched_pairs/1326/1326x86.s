	.text
	.globl	jv_nomem_handler                # -- Begin function jv_nomem_handler
	.p2align	4, 0x90
jv_nomem_handler:                       # @jv_nomem_handler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, nomem_handler+8(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, nomem_handler(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	nomem_handler
	.p2align	3
nomem_handler:
	.zero	16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nomem_handler