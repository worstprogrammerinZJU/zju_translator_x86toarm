	.text
	.p2align	4, 0x90                         # -- Begin function read_func_args
read_func_args:                         # @read_func_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$41, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_19
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	%esi, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	callq	vec_get@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_12
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	type_double(%rip), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_inttype@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	type_int(%rip), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	ensure_assignable@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -32(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	vec_push@PLT
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.15:
	jmp	.LBB0_19
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	$44, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rdi
	callq	tok2s@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_19:
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_double
	.p2align	3
type_double:
	.quad	0
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected token: '%s'"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_args
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym is_flotype
	.addrsig_sym is_inttype
	.addrsig_sym ensure_assignable
	.addrsig_sym ast_conv
	.addrsig_sym vec_push
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym type_double
	.addrsig_sym type_int