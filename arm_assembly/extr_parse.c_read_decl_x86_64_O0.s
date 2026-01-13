	.text
	.p2align	4, 0x90                         # -- Begin function read_decl
read_decl:                              # @read_decl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	read_decl_spec_opt@PLT
	movq	%rax, -24(%rbp)
	movl	$59, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	jmp	.LBB0_21
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	copy_incomplete_type@PLT
	movl	%eax, %esi
	movl	DECL_BODY(%rip), %ecx
	leaq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	read_declarator@PLT
	movq	%rax, -40(%rbp)
	movl	-16(%rbp), %eax
	cmpl	S_STATIC(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %eax
	cmpl	S_TYPEDEF(%rip), %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ast_typedef@PLT
	jmp	.LBB0_16
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	ensure_not_void@PLT
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_static_local_var@PLT
	jmp	.LBB0_15
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	ensure_not_void@PLT
	movl	-12(%rbp), %edx
	movq	ast_lvar@GOTPCREL(%rip), %rax
	movq	ast_gvar@GOTPCREL(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movl	$61, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	read_decl_init@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	ast_decl@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	jmp	.LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-16(%rbp), %eax
	cmpl	S_EXTERN(%rip), %eax
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	ast_decl@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$59, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	jmp	.LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$44, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_3 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	tok2s@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_21:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECL_BODY
	.p2align	2
DECL_BODY:
	.long	0                               # 0x0
	.globl	S_STATIC
	.p2align	2
S_STATIC:
	.long	0                               # 0x0
	.globl	S_TYPEDEF
	.p2align	2
S_TYPEDEF:
	.long	0                               # 0x0
	.globl	S_EXTERN
	.p2align	2
S_EXTERN:
	.long	0                               # 0x0
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"';' or ',' are expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym next_token
	.addrsig_sym read_declarator
	.addrsig_sym copy_incomplete_type
	.addrsig_sym ast_typedef
	.addrsig_sym ensure_not_void
	.addrsig_sym read_static_local_var
	.addrsig_sym ast_gvar
	.addrsig_sym ast_lvar
	.addrsig_sym vec_push
	.addrsig_sym ast_decl
	.addrsig_sym read_decl_init
	.addrsig_sym errort
	.addrsig_sym peek
	.addrsig_sym tok2s
	.addrsig_sym DECL_BODY
	.addrsig_sym S_STATIC
	.addrsig_sym S_TYPEDEF
	.addrsig_sym S_EXTERN
	.addrsig_sym KIND_FUNC