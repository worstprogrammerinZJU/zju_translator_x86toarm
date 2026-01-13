	.text
	.p2align	4, 0x90                         # -- Begin function read_funcdef
read_funcdef:                           # @read_funcdef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdi
	callq	read_decl_spec_opt@PLT
	movq	%rax, -16(%rbp)
	movl	globalenv(%rip), %edi
	callq	make_map_parent@PLT
	movq	%rax, localenv(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, gotos(%rip)
	movb	$0, %al
	callq	make_map@PLT
	movl	%eax, labels(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	DECL_BODY(%rip), %ecx
	leaq	-24(%rbp), %rdi
	callq	read_declarator@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB0_3:
	movq	-32(%rbp), %rdi
	callq	read_oldstyle_param_type@PLT
	movq	-32(%rbp), %rdi
	callq	param_types@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_4:
	movl	-4(%rbp), %eax
	cmpl	S_STATIC(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	ast_gvar@PLT
	movl	$123, %edi
	callq	expect@PLT
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	read_func_body@PLT
	movq	%rax, -48(%rbp)
	movb	$0, %al
	callq	backfill_labels@PLT
	movq	$0, localenv(%rip)
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	globalenv
	.p2align	2
globalenv:
	.long	0                               # 0x0
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.globl	gotos
	.p2align	3
gotos:
	.quad	0
	.globl	labels
	.p2align	2
labels:
	.long	0                               # 0x0
	.globl	DECL_BODY
	.p2align	2
DECL_BODY:
	.long	0                               # 0x0
	.globl	S_STATIC
	.p2align	2
S_STATIC:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funcdef
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym make_map
	.addrsig_sym read_declarator
	.addrsig_sym vec_len
	.addrsig_sym read_oldstyle_param_type
	.addrsig_sym param_types
	.addrsig_sym ast_gvar
	.addrsig_sym expect
	.addrsig_sym read_func_body
	.addrsig_sym backfill_labels
	.addrsig_sym globalenv
	.addrsig_sym localenv
	.addrsig_sym gotos
	.addrsig_sym labels
	.addrsig_sym DECL_BODY
	.addrsig_sym S_STATIC