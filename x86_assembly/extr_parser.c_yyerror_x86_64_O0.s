	.text
	.globl	yyerror                         # -- Begin function yyerror
	.p2align	4, 0x90
yyerror:                                # @yyerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strstr@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-48(%rbp), %rcx
	leaq	.L.str.1(%rip), %rdx
	callq	locfile_locate@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-48(%rbp), %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	locfile_locate@PLT
.LBB0_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected"
.L.str.1:
	.asciz	"jq: error: %s (Unix shell quoting issues?)"
.L.str.2:
	.asciz	"jq: error: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strstr
	.addrsig_sym locfile_locate