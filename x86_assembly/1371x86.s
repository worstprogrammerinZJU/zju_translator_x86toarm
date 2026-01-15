	.text
	.globl	jv_parser_next                  # -- Begin function jv_parser_next
	.p2align	4, 0x90
jv_parser_next:                         # @jv_parser_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpl	$255, 16(%rax)
	jne	.LBB0_8
# %bb.5:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_SEQ(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_7:
	movq	JV_PARSER_WAITING_FOR_RS(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
.LBB0_8:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.9:
	movq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	stream_check_done@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_11:
	movq	$0, -32(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -32(%rbp)
	movb	%al, -33(%rbp)                  # 1-byte Spill
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	setl	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_15
	jmp	.LBB0_23
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 32(%rdx)
	movb	(%rax,%rcx), %al
	movb	%al, -21(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	JV_PARSER_WAITING_FOR_RS(%rip), %rax
	jne	.LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=1
	movsbl	-21(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rax)
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	movsbl	-21(%rbp), %eax
	cmpl	$30, %eax
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	movq	JV_PARSER_NORMAL(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rdx
	movsbl	-21(%rbp), %esi
	callq	scan@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_12
.LBB0_23:
	movq	-32(%rbp), %rax
	cmpq	OK(%rip), %rax
	jne	.LBB0_25
# %bb.24:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_25:
	cmpq	$0, -32(%rbp)
	je	.LBB0_32
# %bb.26:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movsbl	-21(%rbp), %eax
	cmpl	$30, %eax
	je	.LBB0_29
# %bb.27:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_SEQ(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_29
# %bb.28:
	movq	JV_PARSER_WAITING_FOR_RS(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	64(%rax), %r8
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_29:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	64(%rax), %r8
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_SEQ(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_31
# %bb.30:
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB0_31:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_32:
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB0_34
# %bb.33:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_34:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	JV_PARSER_WAITING_FOR_RS(%rip), %rax
	jne	.LBB0_36
# %bb.35:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_36:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	JV_PARSER_NORMAL(%rip), %rax
	je	.LBB0_38
# %bb.37:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	.L.str.4(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movq	JV_PARSER_WAITING_FOR_RS(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_38:
	movq	-16(%rbp), %rdi
	callq	check_literal@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_40
# %bb.39:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	64(%rax), %r8
	leaq	.L.str.5(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movq	JV_PARSER_WAITING_FOR_RS(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_40:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_42
# %bb.41:
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB0_44
.LBB0_42:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_45
# %bb.43:
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_45
.LBB0_44:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	.L.str.6(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movq	JV_PARSER_WAITING_FOR_RS(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_45:
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_48
# %bb.46:
	movq	-16(%rbp), %rax
	movl	80(%rax), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_48
# %bb.47:
	movq	-16(%rbp), %rax
	movl	84(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	80(%rax), %esi
	callq	JV_ARRAY@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_49
.LBB0_48:
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -20(%rbp)
.LBB0_49:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	JV_PARSE_SEQ(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_53
# %bb.50:
	movq	-16(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB0_53
# %bb.51:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_53
# %bb.52:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	.L.str.7(%rip), %rsi
	movb	$0, %al
	callq	make_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_54
.LBB0_53:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_54:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Malformed BOM"
	.bss
	.globl	JV_PARSER_WAITING_FOR_RS
	.p2align	3
JV_PARSER_WAITING_FOR_RS:
	.quad	0                               # 0x0
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.long	0                               # 0x0
	.globl	JV_PARSER_NORMAL
	.p2align	3
JV_PARSER_NORMAL:
	.quad	0                               # 0x0
	.globl	OK
	.p2align	3
OK:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s at line %d, column %d (need RS to resync)"
.L.str.2:
	.asciz	"%s at line %d, column %d"
.L.str.3:
	.asciz	"Unfinished abandoned text at EOF at line %d, column %d"
.L.str.4:
	.asciz	"Unfinished string at EOF at line %d, column %d"
.L.str.5:
	.asciz	"%s at EOF at line %d, column %d"
.L.str.6:
	.asciz	"Unfinished JSON term at EOF at line %d, column %d"
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Potentially truncated top-level numeric value at EOF at line %d, column %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_invalid
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym parser_reset
	.addrsig_sym stream_check_done
	.addrsig_sym scan
	.addrsig_sym jv_free
	.addrsig_sym make_error
	.addrsig_sym assert
	.addrsig_sym check_literal
	.addrsig_sym jv_is_valid
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_PARSER_WAITING_FOR_RS
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_PARSER_NORMAL
	.addrsig_sym OK
	.addrsig_sym JV_KIND_NUMBER