	.text
	.p2align	4, 0x90                         # -- Begin function read_directive
read_directive:                         # @read_directive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_53
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNUMBER(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	read_linemarker@PLT
	jmp	.LBB0_53
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_6
# %bb.5:
	jmp	.LBB0_52
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movb	$0, %al
	callq	read_define@PLT
	jmp	.LBB0_51
.LBB0_8:
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rdi
	callq	read_elif@PLT
	jmp	.LBB0_50
.LBB0_10:
	movq	-24(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:
	movq	-8(%rbp), %rdi
	callq	read_else@PLT
	jmp	.LBB0_49
.LBB0_12:
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.13:
	movq	-8(%rbp), %rdi
	callq	read_endif@PLT
	jmp	.LBB0_48
.LBB0_14:
	movq	-24(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.15:
	movq	-8(%rbp), %rdi
	callq	read_error@PLT
	jmp	.LBB0_47
.LBB0_16:
	movq	-24(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_18
# %bb.17:
	movb	$0, %al
	callq	read_if@PLT
	jmp	.LBB0_46
.LBB0_18:
	movq	-24(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_20
# %bb.19:
	movb	$0, %al
	callq	read_ifdef@PLT
	jmp	.LBB0_45
.LBB0_20:
	movq	-24(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_22
# %bb.21:
	movb	$0, %al
	callq	read_ifndef@PLT
	jmp	.LBB0_44
.LBB0_22:
	movq	-24(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_24
# %bb.23:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	movl	$1, %edx
	callq	read_include@PLT
	jmp	.LBB0_43
.LBB0_24:
	movq	-24(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_26
# %bb.25:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	xorl	%edx, %edx
	callq	read_include@PLT
	jmp	.LBB0_42
.LBB0_26:
	movq	-24(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_28
# %bb.27:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	callq	read_include_next@PLT
	jmp	.LBB0_41
.LBB0_28:
	movq	-24(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_30
# %bb.29:
	movb	$0, %al
	callq	read_line@PLT
	jmp	.LBB0_40
.LBB0_30:
	movq	-24(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_32
# %bb.31:
	movb	$0, %al
	callq	read_pragma@PLT
	jmp	.LBB0_39
.LBB0_32:
	movq	-24(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_34
# %bb.33:
	movb	$0, %al
	callq	read_undef@PLT
	jmp	.LBB0_38
.LBB0_34:
	movq	-24(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_36
# %bb.35:
	movq	-8(%rbp), %rdi
	callq	read_warning@PLT
	jmp	.LBB0_37
.LBB0_36:
	jmp	.LBB0_52
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_40
.LBB0_40:
	jmp	.LBB0_41
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:
	jmp	.LBB0_43
.LBB0_43:
	jmp	.LBB0_44
.LBB0_44:
	jmp	.LBB0_45
.LBB0_45:
	jmp	.LBB0_46
.LBB0_46:
	jmp	.LBB0_47
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	jmp	.LBB0_49
.LBB0_49:
	jmp	.LBB0_50
.LBB0_50:
	jmp	.LBB0_51
.LBB0_51:
	jmp	.LBB0_53
.LBB0_52:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.15(%rip), %rsi
	callq	errort@PLT
.LBB0_53:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.globl	TNUMBER
	.p2align	3
TNUMBER:
	.quad	0                               # 0x0
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"define"
.L.str.1:
	.asciz	"elif"
.L.str.2:
	.asciz	"else"
.L.str.3:
	.asciz	"endif"
.L.str.4:
	.asciz	"error"
.L.str.5:
	.asciz	"if"
.L.str.6:
	.asciz	"ifdef"
.L.str.7:
	.asciz	"ifndef"
.L.str.8:
	.asciz	"import"
.L.str.9:
	.asciz	"include"
.L.str.10:
	.asciz	"include_next"
.L.str.11:
	.asciz	"line"
.L.str.12:
	.asciz	"pragma"
.L.str.13:
	.asciz	"undef"
.L.str.14:
	.asciz	"warning"
.L.str.15:
	.asciz	"unsupported preprocessor directive: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_directive
	.addrsig_sym lex
	.addrsig_sym read_linemarker
	.addrsig_sym strcmp
	.addrsig_sym read_define
	.addrsig_sym read_elif
	.addrsig_sym read_else
	.addrsig_sym read_endif
	.addrsig_sym read_error
	.addrsig_sym read_if
	.addrsig_sym read_ifdef
	.addrsig_sym read_ifndef
	.addrsig_sym read_include
	.addrsig_sym read_include_next
	.addrsig_sym read_line
	.addrsig_sym read_pragma
	.addrsig_sym read_undef
	.addrsig_sym read_warning
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym TNEWLINE
	.addrsig_sym TNUMBER
	.addrsig_sym TIDENT