	.text
	.p2align	4, 0x90                         # -- Begin function yysyntax_error
yysyntax_error:                         # @yysyntax_error
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	YY_NULLPTR(%rip), %rdi
	movq	yytname(%rip), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	yytnamerr@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	YY_NULLPTR(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
	movl	-36(%rbp), %eax
	cmpl	YYEMPTY(%rip), %eax
	je	.LBB0_24
# %bb.1:
	movq	yypact(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -120(%rbp)
	movq	yytname(%rip), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)
	cltq
	movq	%rcx, -112(%rbp,%rax,8)
	movl	-120(%rbp), %edi
	callq	yypact_value_is_default@PLT
	cmpl	$0, %eax
	jne	.LBB0_23
# %bb.2:
	cmpl	$0, -120(%rbp)
	jge	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	subl	-120(%rbp), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movl	-168(%rbp), %eax                # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	YYLAST(%rip), %eax
	subl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	cmpl	YYNTOKENS(%rip), %eax
	jge	.LBB0_7
# %bb.6:
	movl	-128(%rbp), %eax
	movl	%eax, -172(%rbp)                # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movl	YYNTOKENS(%rip), %eax
	movl	%eax, -172(%rbp)                # 4-byte Spill
.LBB0_8:
	movl	-172(%rbp), %eax                # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB0_22
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	yycheck(%rip), %rax
	movl	-136(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB0_20
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-136(%rbp), %eax
	cmpl	YYTERROR(%rip), %eax
	je	.LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movq	yytable(%rip), %rax
	movl	-136(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edi
	callq	yytable_value_is_error@PLT
	cmpl	$0, %eax
	jne	.LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$5, -116(%rbp)
	jne	.LBB0_15
# %bb.14:
	movl	$1, -116(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_22
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	movq	yytname(%rip), %rax
	movslq	-136(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)
	cltq
	movq	%rcx, -112(%rbp,%rax,8)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	YY_NULLPTR(%rip), %rdi
	movq	yytname(%rip), %rax
	movslq	-136(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	yytnamerr@PLT
	movq	%rax, %rcx
	movq	-184(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-144(%rbp), %rax
	cmpq	YYSTACK_ALLOC_MAXIMUM(%rip), %rax
	jg	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movl	$2, -4(%rbp)
	jmp	.LBB0_50
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_9
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	movl	-116(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -192(%rbp)                # 8-byte Spill
	subq	$5, %rax
	ja	.LBB0_25
# %bb.51:
	movq	-192(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	leaq	.L.str(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB0_32
.LBB0_27:
	leaq	.L.str.1(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB0_32
.LBB0_28:
	leaq	.L.str.2(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB0_32
.LBB0_29:
	leaq	.L.str.3(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB0_32
.LBB0_30:
	leaq	.L.str.4(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
	jmp	.LBB0_32
.LBB0_31:
	leaq	.L.str.5(%rip), %rdi
	callq	YY_@PLT
	cltq
	movq	%rax, -64(%rbp)
.LBB0_32:
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	-64(%rbp), %rdi
	callq	yystrlen@PLT
	movq	%rax, %rcx
	movq	-200(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jg	.LBB0_35
# %bb.33:
	movq	-152(%rbp), %rax
	cmpq	YYSTACK_ALLOC_MAXIMUM(%rip), %rax
	jg	.LBB0_35
# %bb.34:
	movq	-152(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_36
.LBB0_35:
	movl	$2, -4(%rbp)
	jmp	.LBB0_50
.LBB0_36:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB0_41
# %bb.37:
	movq	-56(%rbp), %rcx
	shlq	$1, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jg	.LBB0_39
# %bb.38:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	YYSTACK_ALLOC_MAXIMUM(%rip), %rax
	jle	.LBB0_40
.LBB0_39:
	movq	YYSTACK_ALLOC_MAXIMUM(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_40:
	movl	$1, -4(%rbp)
	jmp	.LBB0_50
.LBB0_41:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movq	-160(%rbp), %rcx
	movb	%al, (%rcx)
	movsbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB0_49
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-160(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$37, %eax
	jne	.LBB0_47
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=1
	movl	-164(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-160(%rbp), %rdi
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	cltq
	movq	-112(%rbp,%rax,8), %rsi
	callq	yytnamerr@PLT
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=1
	jmp	.LBB0_42
.LBB0_49:
	movl	$0, -4(%rbp)
.LBB0_50:
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_27-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_29-.LJTI0_0
	.long	.LBB0_30-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
                                        # -- End function
	.bss
	.globl	YY_NULLPTR
	.p2align	3
YY_NULLPTR:
	.quad	0
	.globl	yytname
	.p2align	3
yytname:
	.quad	0
	.globl	YYEMPTY
	.p2align	2
YYEMPTY:
	.long	0                               # 0x0
	.globl	yypact
	.p2align	3
yypact:
	.quad	0
	.globl	YYLAST
	.p2align	2
YYLAST:
	.long	0                               # 0x0
	.globl	YYNTOKENS
	.p2align	2
YYNTOKENS:
	.long	0                               # 0x0
	.globl	yycheck
	.p2align	3
yycheck:
	.quad	0
	.globl	YYTERROR
	.p2align	2
YYTERROR:
	.long	0                               # 0x0
	.globl	yytable
	.p2align	3
yytable:
	.quad	0
	.globl	YYSTACK_ALLOC_MAXIMUM
	.p2align	3
YYSTACK_ALLOC_MAXIMUM:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syntax error"
.L.str.1:
	.asciz	"syntax error, unexpected %s"
.L.str.2:
	.asciz	"syntax error, unexpected %s, expecting %s"
.L.str.3:
	.asciz	"syntax error, unexpected %s, expecting %s or %s"
.L.str.4:
	.asciz	"syntax error, unexpected %s, expecting %s or %s or %s"
.L.str.5:
	.asciz	"syntax error, unexpected %s, expecting %s or %s or %s or %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yysyntax_error
	.addrsig_sym yytnamerr
	.addrsig_sym yypact_value_is_default
	.addrsig_sym yytable_value_is_error
	.addrsig_sym YY_
	.addrsig_sym yystrlen
	.addrsig_sym YY_NULLPTR
	.addrsig_sym yytname
	.addrsig_sym YYEMPTY
	.addrsig_sym yypact
	.addrsig_sym YYLAST
	.addrsig_sym YYNTOKENS
	.addrsig_sym yycheck
	.addrsig_sym YYTERROR
	.addrsig_sym yytable
	.addrsig_sym YYSTACK_ALLOC_MAXIMUM