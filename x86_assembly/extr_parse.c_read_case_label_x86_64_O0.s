	.text
	.p2align	4, 0x90                         # -- Begin function read_case_label
read_case_label:                        # @read_case_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, cases(%rip)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_2:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -20(%rbp)
	movl	KELLIPSIS(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.3:
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -24(%rbp)
	movl	$58, %edi
	callq	expect@PLT
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_5:
	movl	cases(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	make_case@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	jmp	.LBB0_7
.LBB0_6:
	movl	$58, %edi
	callq	expect@PLT
	movl	cases(%rip), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %edi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	make_case@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
.LBB0_7:
	movl	cases(%rip), %edi
	callq	check_case_duplicates@PLT
	movq	-16(%rbp), %rdi
	callq	ast_dest@PLT
	movl	%eax, %edi
	callq	read_label_tail@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cases
	.p2align	2
cases:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray case label"
	.bss
	.globl	KELLIPSIS
	.p2align	2
KELLIPSIS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"case region is not in correct order: %d ... %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_case_label
	.addrsig_sym errort
	.addrsig_sym make_label
	.addrsig_sym read_intexpr
	.addrsig_sym next_token
	.addrsig_sym expect
	.addrsig_sym vec_push
	.addrsig_sym make_case
	.addrsig_sym check_case_duplicates
	.addrsig_sym read_label_tail
	.addrsig_sym ast_dest
	.addrsig_sym cases
	.addrsig_sym KELLIPSIS