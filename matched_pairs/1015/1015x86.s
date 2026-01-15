	.text
	.p2align	4, 0x90                         # -- Begin function emit_ret
emit_ret:                               # @emit_ret
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
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
	.asciz	"leave"
.L.str.1:
	.asciz	"ret"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_ret
	.addrsig_sym emit
	.addrsig_sym SAVE