	.text
	.globl	skip_cond_incl                  # -- Begin function skip_cond_incl
	.p2align	4, 0x90
skip_cond_incl:                         # @skip_cond_incl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	current_file@PLT
	cmpl	$1, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movb	$0, %al
	callq	skip_space@PLT
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_26
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$39, -12(%rbp)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	skip_char@PLT
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$34, -12(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	skip_string@PLT
	jmp	.LBB0_1
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$35, -12(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -8(%rbp)
	jne	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	current_file@PLT
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	je	.LBB0_17
.LBB0_16:
	movq	-24(%rbp), %rdi
	callq	unget_token@PLT
	movl	$35, %edi
	callq	make_keyword@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-32(%rbp), %rdi
	callq	unget_token@PLT
	jmp	.LBB0_26
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	je	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_25
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	is_ident@PLT
	cmpq	$0, %rax
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	skip_line@PLT
	jmp	.LBB0_1
.LBB0_26:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"else"
.L.str.1:
	.asciz	"elif"
.L.str.2:
	.asciz	"endif"
.L.str.3:
	.asciz	"if"
.L.str.4:
	.asciz	"ifdef"
.L.str.5:
	.asciz	"ifndef"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym current_file
	.addrsig_sym skip_space
	.addrsig_sym readc
	.addrsig_sym skip_char
	.addrsig_sym skip_string
	.addrsig_sym lex
	.addrsig_sym is_ident
	.addrsig_sym unget_token
	.addrsig_sym make_keyword
	.addrsig_sym skip_line
	.addrsig_sym EOF
	.addrsig_sym TIDENT