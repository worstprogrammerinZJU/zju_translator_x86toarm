	.text
	.p2align	4, 0x90                         # -- Begin function read_constexpr
read_constexpr:                         # @read_constexpr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_intexpr_line@PLT
	movl	%eax, %edi
	callq	vec_reverse@PLT
	movl	%eax, %edi
	callq	token_buffer_stash@PLT
	movb	$0, %al
	callq	read_expr@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movb	$0, %al
	callq	token_buffer_unstash@PLT
	movq	-8(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray token: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_constexpr
	.addrsig_sym token_buffer_stash
	.addrsig_sym vec_reverse
	.addrsig_sym read_intexpr_line
	.addrsig_sym read_expr
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym token_buffer_unstash
	.addrsig_sym eval_intexpr
	.addrsig_sym TEOF