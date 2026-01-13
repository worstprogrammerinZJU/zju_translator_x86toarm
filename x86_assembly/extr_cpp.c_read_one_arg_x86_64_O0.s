	.text
	.p2align	4, 0x90                         # -- Begin function read_one_arg
read_one_arg:                           # @read_one_arg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$35, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	read_directive@PLT
	jmp	.LBB0_1
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-56(%rbp), %rdi
	callq	unget_token@PLT
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$44, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_15
# %bb.14:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	copy_token@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 12(%rax)
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_22:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated macro argument list"
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_one_arg
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym read_directive
	.addrsig_sym unget_token
	.addrsig_sym copy_token
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym TNEWLINE