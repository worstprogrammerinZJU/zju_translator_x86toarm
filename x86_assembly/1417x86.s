	.text
	.globl	lex_string                      # -- Begin function lex_string
	.p2align	4, 0x90
lex_string:                             # @lex_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_file_string@PLT
	movl	%eax, %edi
	callq	stream_stash@PLT
	movb	$0, %al
	callq	do_read_token@PLT
	movq	%rax, -16(%rbp)
	movl	$10, %edi
	callq	next@PLT
	xorl	%edi, %edi
	callq	get_pos@PLT
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	peek@PLT
	cmpq	EOF(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	errorp@PLT
.LBB0_2:
	movb	$0, %al
	callq	stream_unstash@PLT
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	3
EOF:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unconsumed input: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_stash
	.addrsig_sym make_file_string
	.addrsig_sym do_read_token
	.addrsig_sym next
	.addrsig_sym get_pos
	.addrsig_sym peek
	.addrsig_sym errorp
	.addrsig_sym stream_unstash
	.addrsig_sym EOF