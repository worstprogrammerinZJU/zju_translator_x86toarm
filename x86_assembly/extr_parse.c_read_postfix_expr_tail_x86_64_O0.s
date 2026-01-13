	.text
	.p2align	4, 0x90                         # -- Begin function read_postfix_expr_tail
read_postfix_expr_tail:                 # @read_postfix_expr_tail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_23
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$40, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	je	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	read_funcall@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$91, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	read_subscript_expr@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$46, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	read_struct_field@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movsbl	OP_ARROW(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ty2s@PLT
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movl	-60(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movl	AST_DEREF(%rip), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	read_struct_field@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_16:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -40(%rbp)
	movsbl	OP_INC(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:
	movsbl	OP_DEC(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_22
.LBB0_18:
	movq	-16(%rbp), %rdi
	callq	ensure_lvalue@PLT
	movq	-40(%rbp), %rdi
	movsbl	OP_INC(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.19:
	movl	OP_POST_INC(%rip), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	jmp	.LBB0_21
.LBB0_20:
	movl	OP_POST_DEC(%rip), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
.LBB0_21:
	movl	-64(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_23
.LBB0_22:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_23:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function expected, but got %s"
	.bss
	.globl	OP_ARROW
OP_ARROW:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pointer type expected, but got %s %s"
	.bss
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.long	0                               # 0x0
	.globl	OP_INC
OP_INC:
	.byte	0                               # 0x0
	.globl	OP_DEC
OP_DEC:
	.byte	0                               # 0x0
	.globl	OP_POST_INC
	.p2align	2
OP_POST_INC:
	.long	0                               # 0x0
	.globl	OP_POST_DEC
	.p2align	2
OP_POST_DEC:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_postfix_expr_tail
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym conv
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym read_funcall
	.addrsig_sym read_subscript_expr
	.addrsig_sym read_struct_field
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym ast_uop
	.addrsig_sym ensure_lvalue
	.addrsig_sym is_keyword
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_FUNC
	.addrsig_sym OP_ARROW
	.addrsig_sym AST_DEREF
	.addrsig_sym OP_INC
	.addrsig_sym OP_DEC
	.addrsig_sym OP_POST_INC
	.addrsig_sym OP_POST_DEC