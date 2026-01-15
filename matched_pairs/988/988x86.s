	.text
	.p2align	4, 0x90                         # -- Begin function emit_expr
emit_expr:                              # @emit_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	maybe_print_source_loc@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-33, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	subl	$120, %eax
	ja	.LBB0_36
# %bb.38:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movq	-8(%rbp), %rdi
	callq	emit_literal@PLT
	jmp	.LBB0_37
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	emit_lvar@PLT
	jmp	.LBB0_37
.LBB0_3:
	movq	-8(%rbp), %rdi
	callq	emit_gvar@PLT
	jmp	.LBB0_37
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	emit_addr@PLT
	jmp	.LBB0_37
.LBB0_5:
	movq	-8(%rbp), %rdi
	callq	maybe_emit_builtin@PLT
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	jmp	.LBB0_37
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movq	-8(%rbp), %rdi
	callq	emit_func_call@PLT
	jmp	.LBB0_37
.LBB0_9:
	movq	-8(%rbp), %rdi
	callq	emit_decl@PLT
	jmp	.LBB0_37
.LBB0_10:
	movq	-8(%rbp), %rdi
	callq	emit_conv@PLT
	jmp	.LBB0_37
.LBB0_11:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	emit_addr@PLT
	jmp	.LBB0_37
.LBB0_12:
	movq	-8(%rbp), %rdi
	callq	emit_deref@PLT
	jmp	.LBB0_37
.LBB0_13:
	movq	-8(%rbp), %rdi
	callq	emit_ternary@PLT
	jmp	.LBB0_37
.LBB0_14:
	movq	-8(%rbp), %rdi
	callq	emit_goto@PLT
	jmp	.LBB0_37
.LBB0_15:
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB0_17
# %bb.16:
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	emit_label@PLT
.LBB0_17:
	jmp	.LBB0_37
.LBB0_18:
	movq	-8(%rbp), %rdi
	callq	emit_return@PLT
	jmp	.LBB0_37
.LBB0_19:
	movq	-8(%rbp), %rdi
	callq	emit_compound_stmt@PLT
	jmp	.LBB0_37
.LBB0_20:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	xorl	%edx, %edx
	callq	emit_load_struct_ref@PLT
	jmp	.LBB0_37
.LBB0_21:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	emit_pre_inc_dec@PLT
	jmp	.LBB0_37
.LBB0_22:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	emit_pre_inc_dec@PLT
	jmp	.LBB0_37
.LBB0_23:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	emit_post_inc_dec@PLT
	jmp	.LBB0_37
.LBB0_24:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	emit_post_inc_dec@PLT
	jmp	.LBB0_37
.LBB0_25:
	movq	-8(%rbp), %rdi
	callq	emit_lognot@PLT
	jmp	.LBB0_37
.LBB0_26:
	movq	-8(%rbp), %rdi
	callq	emit_bitand@PLT
	jmp	.LBB0_37
.LBB0_27:
	movq	-8(%rbp), %rdi
	callq	emit_bitor@PLT
	jmp	.LBB0_37
.LBB0_28:
	movq	-8(%rbp), %rdi
	callq	emit_bitnot@PLT
	jmp	.LBB0_37
.LBB0_29:
	movq	-8(%rbp), %rdi
	callq	emit_logand@PLT
	jmp	.LBB0_37
.LBB0_30:
	movq	-8(%rbp), %rdi
	callq	emit_logor@PLT
	jmp	.LBB0_37
.LBB0_31:
	movq	-8(%rbp), %rdi
	callq	emit_cast@PLT
	jmp	.LBB0_37
.LBB0_32:
	movq	-8(%rbp), %rdi
	callq	emit_comma@PLT
	jmp	.LBB0_37
.LBB0_33:
	movq	-8(%rbp), %rdi
	callq	emit_assign@PLT
	jmp	.LBB0_37
.LBB0_34:
	movq	-8(%rbp), %rdi
	callq	emit_label_addr@PLT
	jmp	.LBB0_37
.LBB0_35:
	movq	-8(%rbp), %rdi
	callq	emit_computed_goto@PLT
	jmp	.LBB0_37
.LBB0_36:
	movq	-8(%rbp), %rdi
	callq	emit_binop@PLT
.LBB0_37:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_32-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_33-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_27-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_29-.LJTI0_0
	.long	.LBB0_34-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_35-.LJTI0_0
	.long	.LBB0_19-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"add"
.L.str.1:
	.asciz	"sub"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_expr
	.addrsig_sym maybe_print_source_loc
	.addrsig_sym emit_literal
	.addrsig_sym emit_lvar
	.addrsig_sym emit_gvar
	.addrsig_sym emit_addr
	.addrsig_sym maybe_emit_builtin
	.addrsig_sym emit_func_call
	.addrsig_sym emit_decl
	.addrsig_sym emit_conv
	.addrsig_sym emit_deref
	.addrsig_sym emit_ternary
	.addrsig_sym emit_goto
	.addrsig_sym emit_label
	.addrsig_sym emit_return
	.addrsig_sym emit_compound_stmt
	.addrsig_sym emit_load_struct_ref
	.addrsig_sym emit_pre_inc_dec
	.addrsig_sym emit_post_inc_dec
	.addrsig_sym emit_lognot
	.addrsig_sym emit_bitand
	.addrsig_sym emit_bitor
	.addrsig_sym emit_bitnot
	.addrsig_sym emit_logand
	.addrsig_sym emit_logor
	.addrsig_sym emit_cast
	.addrsig_sym emit_comma
	.addrsig_sym emit_assign
	.addrsig_sym emit_label_addr
	.addrsig_sym emit_computed_goto
	.addrsig_sym emit_binop
	.addrsig_sym SAVE