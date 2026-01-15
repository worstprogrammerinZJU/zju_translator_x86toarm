	.text
	.p2align	4, 0x90                         # -- Begin function emit_bitand
emit_bitand:                            # @emit_bitand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_expr@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	pop@PLT
	leaq	.L.str.2(%rip), %rdi
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
	.asciz	"rax"
.L.str.1:
	.asciz	"rcx"
.L.str.2:
	.asciz	"and #rcx, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_bitand
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym emit
	.addrsig_sym SAVE