	.text
	.p2align	4, 0x90                         # -- Begin function read_break_stmt
read_break_stmt:                        # @read_break_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$59, %edi
	callq	expect@PLT
	cmpl	$0, lbreak(%rip)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	lbreak(%rip), %edi
	callq	ast_jump@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	lbreak
	.p2align	2
lbreak:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray break statement"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_break_stmt
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym ast_jump
	.addrsig_sym lbreak