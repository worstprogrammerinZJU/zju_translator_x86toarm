	.text
	.p2align	4, 0x90                         # -- Begin function emit_gvar
emit_gvar:                              # @emit_gvar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	xorl	%edx, %edx
	callq	emit_gload@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_gvar
	.addrsig_sym emit_gload
	.addrsig_sym SAVE