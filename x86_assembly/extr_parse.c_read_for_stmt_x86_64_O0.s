	.text
	.p2align	4, 0x90                         # -- Begin function read_for_stmt
read_for_stmt:                          # @read_for_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	movq	localenv(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	localenv(%rip), %rdi
	callq	make_map_parent@PLT
	movq	%rax, localenv(%rip)
	movb	$0, %al
	callq	read_opt_decl_or_stmt@PLT
	movq	%rax, -40(%rbp)
	movb	$0, %al
	callq	read_expr_opt@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movl	type_bool(%rip), %edi
	movq	-48(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -48(%rbp)
.LBB0_3:
	movl	$59, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_expr_opt@PLT
	movq	%rax, -56(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SET_JUMP_LABELS@PLT
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -64(%rbp)
	movb	$0, %al
	callq	RESTORE_JUMP_LABELS@PLT
	movq	-32(%rbp), %rax
	movq	%rax, localenv(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_5:
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	ast_jump@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	ast_if@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
.LBB0_7:
	cmpq	$0, -64(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_9:
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	cmpq	$0, -56(%rbp)
	je	.LBB0_11
# %bb.10:
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_11:
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	ast_jump@PLT
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movq	-72(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.globl	type_bool
	.p2align	2
type_bool:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_for_stmt
	.addrsig_sym expect
	.addrsig_sym make_label
	.addrsig_sym make_map_parent
	.addrsig_sym read_opt_decl_or_stmt
	.addrsig_sym read_expr_opt
	.addrsig_sym is_flotype
	.addrsig_sym ast_conv
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt
	.addrsig_sym localenv
	.addrsig_sym type_bool