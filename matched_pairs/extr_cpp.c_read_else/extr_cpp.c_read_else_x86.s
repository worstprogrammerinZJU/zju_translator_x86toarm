	.text
	.p2align	4, 0x90                         # -- Begin function read_else
read_else:                              # @read_else
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	cond_incl_stack(%rip), %edi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	cond_incl_stack(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IN_ELSE(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	movb	$0, %al
	callq	expect_newline@PLT
	movq	IN_ELSE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	skip_cond_incl@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray #else"
	.bss
	.globl	IN_ELSE
	.p2align	3
IN_ELSE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"#else appears in #else"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_else
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym vec_tail
	.addrsig_sym expect_newline
	.addrsig_sym skip_cond_incl
	.addrsig_sym cond_incl_stack
	.addrsig_sym IN_ELSE