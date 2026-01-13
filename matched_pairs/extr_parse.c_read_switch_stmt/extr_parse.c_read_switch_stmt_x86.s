	.text
	.p2align	4, 0x90                         # -- Begin function read_switch_stmt
read_switch_stmt:                       # @read_switch_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	ensure_inttype@PLT
	movl	$41, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SET_SWITCH_CONTEXT@PLT
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	make_tempname@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	ast_lvar@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	$61, %esi
	callq	ast_binop@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	cases(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-64(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	cases(%rip), %edi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	make_switch_jump@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	cmpq	$0, defaultcase(%rip)
	je	.LBB0_6
# %bb.5:
	movq	defaultcase(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB0_7:
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	ast_jump@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_9:
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movb	$0, %al
	callq	RESTORE_SWITCH_CONTEXT@PLT
	movq	-32(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cases
	.p2align	2
cases:
	.long	0                               # 0x0
	.globl	defaultcase
	.p2align	3
defaultcase:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_switch_stmt
	.addrsig_sym expect
	.addrsig_sym conv
	.addrsig_sym read_expr
	.addrsig_sym ensure_inttype
	.addrsig_sym make_label
	.addrsig_sym SET_SWITCH_CONTEXT
	.addrsig_sym read_stmt
	.addrsig_sym make_vector
	.addrsig_sym ast_lvar
	.addrsig_sym make_tempname
	.addrsig_sym vec_push
	.addrsig_sym ast_binop
	.addrsig_sym vec_len
	.addrsig_sym make_switch_jump
	.addrsig_sym vec_get
	.addrsig_sym ast_jump
	.addrsig_sym ast_dest
	.addrsig_sym RESTORE_SWITCH_CONTEXT
	.addrsig_sym ast_compound_stmt
	.addrsig_sym cases
	.addrsig_sym defaultcase