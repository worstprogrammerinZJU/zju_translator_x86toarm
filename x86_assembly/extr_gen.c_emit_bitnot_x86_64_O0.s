	.text
	.p2align	4, 0x90                         # -- Begin function emit_bitnot
emit_bitnot:                            # @emit_bitnot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_bitnot
	.addrsig_sym emit_expr
	.addrsig_sym emit
	.addrsig_sym SAVE