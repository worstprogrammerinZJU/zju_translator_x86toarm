	.text
	.p2align	4, 0x90                         # -- Begin function maybe_emit_builtin
maybe_emit_builtin:                     # @maybe_emit_builtin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str(%rip), %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	emit_builtin_return_address@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	emit_builtin_reg_class@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	callq	emit_builtin_va_start@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$0, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
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
	.asciz	"__builtin_return_address"
.L.str.1:
	.asciz	"__builtin_reg_class"
.L.str.2:
	.asciz	"__builtin_va_start"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_builtin
	.addrsig_sym strcmp
	.addrsig_sym emit_builtin_return_address
	.addrsig_sym emit_builtin_reg_class
	.addrsig_sym emit_builtin_va_start
	.addrsig_sym SAVE