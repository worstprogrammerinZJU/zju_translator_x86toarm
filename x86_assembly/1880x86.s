	.text
	.p2align	4, 0x90                         # -- Begin function read_do_stmt
read_do_stmt:                           # @read_do_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	SET_JUMP_LABELS@PLT
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	RESTORE_JUMP_LABELS@PLT
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	KWHILE(%rip), %esi
	callq	is_keyword@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	tok2s@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_boolean_expr@PLT
	movq	%rax, -40(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movl	$59, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_4:
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	ast_jump@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	ast_if@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movq	-48(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KWHILE
	.p2align	2
KWHILE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'while' is expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_do_stmt
	.addrsig_sym make_label
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt
	.addrsig_sym KWHILE