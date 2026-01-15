	.text
	.p2align	4, 0x90                         # -- Begin function read_goto_stmt
read_goto_stmt:                         # @read_goto_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.1:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	node2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_3:
	movq	-24(%rbp), %rdi
	callq	ast_computed_goto@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_7
.LBB0_6:
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	tok2s@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_7:
	movl	$59, %edi
	callq	expect@PLT
	movq	-32(%rbp), %rax
	movl	8(%rax), %edi
	callq	ast_goto@PLT
	movq	%rax, -40(%rbp)
	movl	gotos(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	vec_push@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pointer expected for computed goto, but got %s"
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"identifier expected, but got %s"
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_goto_stmt
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym read_cast_expr
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_computed_goto
	.addrsig_sym get
	.addrsig_sym tok2s
	.addrsig_sym expect
	.addrsig_sym ast_goto
	.addrsig_sym vec_push
	.addrsig_sym KIND_PTR
	.addrsig_sym TIDENT
	.addrsig_sym gotos