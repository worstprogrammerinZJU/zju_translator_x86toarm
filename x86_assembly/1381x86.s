	.text
	.p2align	4, 0x90                         # -- Begin function scan
scan:                                   # @scan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rax)
	movsbl	-17(%rbp), %eax
	cmpl	$10, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB0_2:
	movsbl	-17(%rbp), %eax
	cmpl	$30, %eax
	jne	.LBB0_12
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	check_truncation@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	check_literal@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.5:
	movq	-16(%rbp), %rdi
	callq	is_top_num@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_7:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	check_literal@PLT
	movq	%rax, %rdi
	callq	TRY@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_PARSER_NORMAL(%rip), %rax
	jne	.LBB0_11
# %bb.9:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	check_done@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	OK(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_11:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rdi
	callq	parser_reset@PLT
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	OK(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_12:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_PARSER_NORMAL(%rip), %rax
	jne	.LBB0_28
# %bb.13:
	movsbl	-17(%rbp), %edi
	callq	classify@PLT
	movl	%eax, -44(%rbp)
	cmpl	$128, -44(%rbp)
	jne	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB0_15:
	cmpl	$131, -44(%rbp)
	je	.LBB0_19
# %bb.16:
	movq	-16(%rbp), %rdi
	callq	check_literal@PLT
	movq	%rax, %rdi
	callq	TRY@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	check_done@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	OK(%rip), %rax
	movq	%rax, -40(%rbp)
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	movl	-44(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_25
# %bb.41:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_20:
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	tokenadd@PLT
	jmp	.LBB0_25
.LBB0_21:
	jmp	.LBB0_25
.LBB0_22:
	movq	JV_PARSER_STRING(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_25
.LBB0_23:
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	token@PLT
	movq	%rax, %rdi
	callq	TRY@PLT
	jmp	.LBB0_25
.LBB0_24:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_40
.LBB0_25:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	check_done@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.26:
	movq	OK(%rip), %rax
	movq	%rax, -40(%rbp)
.LBB0_27:
	jmp	.LBB0_39
.LBB0_28:
	movsbl	-17(%rbp), %eax
	cmpl	$34, %eax
	jne	.LBB0_33
# %bb.29:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_PARSER_STRING(%rip), %rax
	jne	.LBB0_33
# %bb.30:
	movq	-16(%rbp), %rdi
	callq	found_string@PLT
	movq	%rax, %rdi
	callq	TRY@PLT
	movq	JV_PARSER_NORMAL(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	check_done@PLT
	cmpq	$0, %rax
	je	.LBB0_32
# %bb.31:
	movq	OK(%rip), %rax
	movq	%rax, -40(%rbp)
.LBB0_32:
	jmp	.LBB0_38
.LBB0_33:
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	tokenadd@PLT
	movsbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB0_36
# %bb.34:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_PARSER_STRING(%rip), %rax
	jne	.LBB0_36
# %bb.35:
	movq	JV_PARSER_STRING_ESCAPE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_37
.LBB0_36:
	movq	JV_PARSER_STRING(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_40:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Potentially truncated top-level numeric value"
.L.str.1:
	.asciz	"Truncated value"
	.bss
	.globl	JV_PARSER_NORMAL
	.p2align	3
JV_PARSER_NORMAL:
	.quad	0                               # 0x0
	.globl	OK
	.p2align	3
OK:
	.quad	0
	.globl	JV_PARSER_STRING
	.p2align	3
JV_PARSER_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Invalid character"
	.bss
	.globl	JV_PARSER_STRING_ESCAPE
	.p2align	3
JV_PARSER_STRING_ESCAPE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scan
	.addrsig_sym check_truncation
	.addrsig_sym check_literal
	.addrsig_sym is_top_num
	.addrsig_sym TRY
	.addrsig_sym check_done
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid
	.addrsig_sym classify
	.addrsig_sym tokenadd
	.addrsig_sym token
	.addrsig_sym found_string
	.addrsig_sym JV_PARSER_NORMAL
	.addrsig_sym OK
	.addrsig_sym JV_PARSER_STRING
	.addrsig_sym JV_PARSER_STRING_ESCAPE