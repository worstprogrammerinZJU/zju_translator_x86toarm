	.text
	.p2align	4, 0x90                         # -- Begin function emit_assign_deref
emit_assign_deref:                      # @emit_assign_deref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	xorl	%esi, %esi
	callq	do_emit_assign_deref@PLT
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
	.asciz	"rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_assign_deref
	.addrsig_sym push
	.addrsig_sym emit_expr
	.addrsig_sym do_emit_assign_deref
	.addrsig_sym SAVE