	.text
	.p2align	4, 0x90                         # -- Begin function emit_label_addr
emit_label_addr:                        # @emit_label_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
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
	.asciz	"mov $%s, #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_label_addr
	.addrsig_sym emit
	.addrsig_sym SAVE