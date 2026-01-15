	.text
	.p2align	4, 0x90                         # -- Begin function parser_reset
parser_reset:                           # @parser_reset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB0_2:
	movl	JV_LAST_NONE(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movl	$0, -12(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_free@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movl	JV_PARSER_NORMAL(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.long	0                               # 0x0
	.globl	JV_LAST_NONE
	.p2align	2
JV_LAST_NONE:
	.long	0                               # 0x0
	.globl	JV_PARSER_NORMAL
	.p2align	2
JV_PARSER_NORMAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_PARSER_NORMAL