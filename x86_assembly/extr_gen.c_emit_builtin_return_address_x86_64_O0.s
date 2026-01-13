	.text
	.p2align	4, 0x90                         # -- Begin function emit_builtin_return_address
emit_builtin_return_address:            # @emit_builtin_return_address
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	vec_len@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	vec_head@PLT
	movl	%eax, %edi
	callq	emit_expr@PLT
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rdi
	callq	emit_label@PLT
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-24(%rbp), %rsi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rdi
	callq	emit_jmp@PLT
	movq	-24(%rbp), %rdi
	callq	emit_label@PLT
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str(%rip), %rdi
	callq	pop@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r11"
.L.str.1:
	.asciz	"mov #rbp, #r11"
.L.str.2:
	.asciz	"test #rax, #rax"
.L.str.3:
	.asciz	"jz %s"
.L.str.4:
	.asciz	"mov (#r11), #r11"
.L.str.5:
	.asciz	"sub $1, #rax"
.L.str.6:
	.asciz	"mov 8(#r11), #rax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_return_address
	.addrsig_sym push
	.addrsig_sym assert
	.addrsig_sym vec_len
	.addrsig_sym emit_expr
	.addrsig_sym vec_head
	.addrsig_sym make_label
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym emit_jmp
	.addrsig_sym pop