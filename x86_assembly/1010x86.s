	.text
	.p2align	4, 0x90                         # -- Begin function emit_lvar
emit_lvar:                              # @emit_lvar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	ensure_lvar_init@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	leaq	.L.str(%rip), %rsi
	callq	emit_lload@PLT
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
	.asciz	"rbp"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lvar
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit_lload
	.addrsig_sym SAVE