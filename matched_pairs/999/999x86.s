	.text
	.p2align	4, 0x90                         # -- Begin function emit_jmp
emit_jmp:                               # @emit_jmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jmp %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_jmp
	.addrsig_sym emit