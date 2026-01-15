	.text
	.globl	parse_iseg                      # -- Begin function parse_iseg
	.p2align	4, 0x90
parse_iseg:                             # @parse_iseg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$20, %edx
	callq	option_find_int@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$32, %edx
	callq	option_find_int@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -24(%rbp)
	movl	16(%rax), %edi
	movl	12(%rax), %esi
	movl	8(%rax), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	make_iseg_layer@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"classes"
.L.str.1:
	.asciz	"ids"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_iseg_layer
	.addrsig_sym assert