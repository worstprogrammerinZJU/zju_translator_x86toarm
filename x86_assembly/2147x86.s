	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	TRUE(%rip), %eax
	movl	%eax, -20(%rbp)
	movq	g_ascii_strcasecmp(%rip), %rax
	movl	%eax, %edi
	callq	g_tree_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	sql_token_get_last_id@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	sql_token_get_name@PLT
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	movl	$7, %edx
	callq	strncmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	sql_token_get_name@PLT
	cltq
	addq	$8, %rax
	subq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rdi
	callq	GINT_TO_POINTER@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	g_tree_insert@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
	movq	-16(%rbp), %rdi
	movl	trav(%rip), %esi
	leaq	-20(%rbp), %rdx
	callq	g_tree_foreach@PLT
	leaq	.L.str.2(%rip), %rdi
	callq	printf@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
	leaq	.L.str.4(%rip), %rdi
	callq	printf@PLT
	movq	-16(%rbp), %rdi
	callq	g_tree_destroy@PLT
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.globl	g_ascii_strcasecmp
	.p2align	3
g_ascii_strcasecmp:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TK_SQL_"
.L.str.1:
	.asciz	"static int sql_keywords[] = {"
	.bss
	.globl	trav
	.p2align	2
trav:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\n};\n"
.L.str.3:
	.asciz	"int *sql_keywords_get() { return sql_keywords; }\n"
.L.str.4:
	.asciz	"int sql_keywords_get_count() { return sizeof(sql_keywords) / sizeof(sql_keywords[0]); }\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g_tree_new
	.addrsig_sym sql_token_get_last_id
	.addrsig_sym strncmp
	.addrsig_sym sql_token_get_name
	.addrsig_sym g_tree_insert
	.addrsig_sym GINT_TO_POINTER
	.addrsig_sym printf
	.addrsig_sym g_tree_foreach
	.addrsig_sym g_tree_destroy
	.addrsig_sym TRUE
	.addrsig_sym g_ascii_strcasecmp
	.addrsig_sym trav