	.text
	.p2align	4, 0x90                         # -- Begin function read_static_local_var
read_static_local_var:                  # @read_static_local_var
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ast_static_lvar@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$61, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	localenv(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	$0, localenv(%rip)
	movq	-8(%rbp), %rdi
	callq	read_decl_init@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, localenv(%rip)
.LBB0_2:
	movl	toplevels(%rip), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ast_decl@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.globl	toplevels
	.p2align	2
toplevels:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_static_local_var
	.addrsig_sym ast_static_lvar
	.addrsig_sym next_token
	.addrsig_sym read_decl_init
	.addrsig_sym vec_push
	.addrsig_sym ast_decl
	.addrsig_sym localenv
	.addrsig_sym toplevels