	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator_params
read_declarator_params:                 # @read_declarator_params
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -40(%rbp)
	movl	KELLIPSIS(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movq	-40(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_4:
	movl	$41, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB0_12
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %esi
	leaq	-48(%rbp), %rdi
	callq	read_func_param@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	ensure_not_void@PLT
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	vec_push@PLT
	cmpl	$0, -28(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	ast_lvar@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	jmp	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	$44, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	tok2s@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_12:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KELLIPSIS
	.p2align	2
KELLIPSIS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"at least one parameter is required before \"...\""
.L.str.1:
	.asciz	"comma expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_params
	.addrsig_sym peek
	.addrsig_sym next_token
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_func_param
	.addrsig_sym ensure_not_void
	.addrsig_sym vec_push
	.addrsig_sym ast_lvar
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym tok2s
	.addrsig_sym KELLIPSIS