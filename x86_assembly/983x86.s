	.text
	.p2align	4, 0x90                         # -- Begin function emit_data_charptr
emit_data_charptr:                      # @emit_data_charptr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-24(%rbp), %rdi
	callq	emit_label@PLT
	movq	-8(%rbp), %rdi
	callq	quote_cstring@PLT
	movq	%rax, %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-24(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".data %d"
.L.str.1:
	.asciz	".string \"%s\""
.L.str.2:
	.asciz	".quad %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_charptr
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym quote_cstring