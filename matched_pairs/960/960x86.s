	.text
	.p2align	4, 0x90                         # -- Begin function do_emit_assign_deref
do_emit_assign_deref:                   # @do_emit_assign_deref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rdi
	movl	$99, %esi
	callq	get_int_reg@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_3:
	leaq	.L.str.3(%rip), %rdi
	callq	pop@PLT
	addq	$32, %rsp
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
	.asciz	"mov (#rsp), #rcx"
.L.str.1:
	.asciz	"mov #%s, %d(#rax)"
.L.str.2:
	.asciz	"mov #%s, (#rax)"
.L.str.3:
	.asciz	"rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_emit_assign_deref
	.addrsig_sym emit
	.addrsig_sym get_int_reg
	.addrsig_sym pop
	.addrsig_sym SAVE