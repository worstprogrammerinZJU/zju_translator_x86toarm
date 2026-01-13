	.text
	.p2align	4, 0x90                         # -- Begin function emit_je
emit_je:                                # @emit_je
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"test #rax, #rax"
.L.str.1:
	.asciz	"je %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_je
	.addrsig_sym emit