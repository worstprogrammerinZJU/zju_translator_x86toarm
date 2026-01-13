	.text
	.p2align	4, 0x90                         # -- Begin function parser_init
parser_init:                            # @parser_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	JV_PARSE_STREAMING(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 160(%rax)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 160(%rax)
	movl	JV_PARSE_STREAM_ERRORS(%rip), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movl	JV_LAST_NONE(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 128(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 120(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	JV_PARSE_SEQ(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	movl	JV_PARSER_WAITING_FOR_RS(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 80(%rax)
	jmp	.LBB0_6
.LBB0_5:
	movl	JV_PARSER_NORMAL(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 80(%rax)
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	jvp_dtoa_context_init@PLT
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
	.globl	JV_PARSE_STREAM_ERRORS
	.p2align	2
JV_PARSE_STREAM_ERRORS:
	.long	0                               # 0x0
	.globl	JV_LAST_NONE
	.p2align	2
JV_LAST_NONE:
	.long	0                               # 0x0
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.long	0                               # 0x0
	.globl	JV_PARSER_WAITING_FOR_RS
	.p2align	2
JV_PARSER_WAITING_FOR_RS:
	.long	0                               # 0x0
	.globl	JV_PARSER_NORMAL
	.p2align	2
JV_PARSER_NORMAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_init
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid
	.addrsig_sym jvp_dtoa_context_init
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_PARSE_STREAM_ERRORS
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_PARSER_WAITING_FOR_RS
	.addrsig_sym JV_PARSER_NORMAL