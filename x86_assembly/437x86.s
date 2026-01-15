	.text
	.p2align	4, 0x90                         # -- Begin function read_expand_newline
read_expand_newline:                    # @read_expand_newline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	macros(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-24(%rbp), %rsi
	callq	set_has@PLT
	cmpq	$0, %rax
	je	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_10
	jmp	.LBB0_13
.LBB0_13:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_6
	jmp	.LBB0_14
.LBB0_14:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_7
	jmp	.LBB0_11
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-24(%rbp), %rsi
	callq	set_add@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	subst@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	propagate_space@PLT
	movq	-48(%rbp), %rdi
	callq	unget_all@PLT
	movb	$0, %al
	callq	read_expand@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movl	$40, %edi
	callq	next@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_args@PLT
	movq	%rax, -56(%rbp)
	movb	$0, %al
	callq	peek_token@PLT
	movq	%rax, -64(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-64(%rbp), %rax
	movl	16(%rax), %esi
	callq	set_intersection@PLT
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	callq	set_add@PLT
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	subst@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	propagate_space@PLT
	movq	-80(%rbp), %rdi
	callq	unget_all@PLT
	movb	$0, %al
	callq	read_expand@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_10:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movb	$0, %al
	callq	read_expand@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_12:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_expand_newline
	.addrsig_sym lex
	.addrsig_sym map_get
	.addrsig_sym set_has
	.addrsig_sym set_add
	.addrsig_sym subst
	.addrsig_sym propagate_space
	.addrsig_sym unget_all
	.addrsig_sym read_expand
	.addrsig_sym next
	.addrsig_sym read_args
	.addrsig_sym peek_token
	.addrsig_sym expect
	.addrsig_sym set_intersection
	.addrsig_sym error
	.addrsig_sym TIDENT
	.addrsig_sym macros