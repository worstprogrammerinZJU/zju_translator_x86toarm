	.text
	.p2align	4, 0x90                         # -- Begin function emit_gsave
emit_gsave:                             # @emit_gsave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_ARRAY(%rip), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rdi
	callq	maybe_convert_bool@PLT
	movq	-16(%rbp), %rdi
	movl	$97, %esi
	callq	get_int_reg@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	maybe_emit_bitshift_save@PLT
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s+%d(%%rip)"
.L.str.1:
	.asciz	"mov #%s, %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_gsave
	.addrsig_sym assert
	.addrsig_sym maybe_convert_bool
	.addrsig_sym get_int_reg
	.addrsig_sym format
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY