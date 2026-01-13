	.text
	.p2align	4, 0x90                         # -- Begin function emit_data
emit_data:                              # @emit_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	emit_noindent@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	emit_noindent@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	do_emit_data@PLT
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
	.asciz	".data %d"
.L.str.1:
	.asciz	".global %s"
.L.str.2:
	.asciz	"%s:"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data
	.addrsig_sym emit
	.addrsig_sym emit_noindent
	.addrsig_sym do_emit_data
	.addrsig_sym SAVE