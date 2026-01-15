	.text
	.p2align	4, 0x90                         # -- Begin function yy_get_next_buffer
yy_get_next_buffer:                     # @yy_get_next_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_2:
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_6
# %bb.3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movslq	YY_MORE_ADJ(%rip), %rcx
	subq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB0_5
# %bb.4:
	movl	EOB_ACT_END_OF_FILE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_5:
	movl	EOB_ACT_LAST_MATCH(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	16(%rax), %rax
	cmpq	YY_BUFFER_EOF_PENDING(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	$0, 24(%rax)
	jmp	.LBB0_26
.LBB0_12:
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	28(%rax), %eax
	subl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	jg	.LBB0_23
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movl	28(%rax), %eax
	shll	$1, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jg	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movl	28(%rax), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	addl	28(%rax), %ecx
	movl	%ecx, 28(%rax)
	jmp	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movl	28(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 28(%rax)
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	28(%rax), %esi
	addl	$2, %esi
	movq	-16(%rbp), %rdx
	callq	yyrealloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	leaq	.L.str.1(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movslq	-68(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	28(%rax), %eax
	subl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_13
.LBB0_23:
	movl	-56(%rbp), %eax
	cmpl	YY_READ_BUF_SIZE(%rip), %eax
	jle	.LBB0_25
# %bb.24:
	movl	YY_READ_BUF_SIZE(%rip), %eax
	movl	%eax, -56(%rbp)
.LBB0_25:
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rdi
	movslq	-44(%rbp), %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movl	-56(%rbp), %edx
	callq	YY_INPUT@PLT
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	%ecx, 24(%rax)
.LBB0_26:
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB0_31
# %bb.27:
	movl	-44(%rbp), %eax
	cmpl	YY_MORE_ADJ(%rip), %eax
	jne	.LBB0_29
# %bb.28:
	movl	EOB_ACT_END_OF_FILE(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	yyin(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	yyrestart@PLT
	jmp	.LBB0_30
.LBB0_29:
	movl	EOB_ACT_LAST_MATCH(%rip), %eax
	movl	%eax, -52(%rbp)
	movq	YY_BUFFER_EOF_PENDING(%rip), %rcx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	%rcx, 16(%rax)
.LBB0_30:
	jmp	.LBB0_32
.LBB0_31:
	movl	EOB_ACT_CONTINUE_SCAN(%rip), %eax
	movl	%eax, -52(%rbp)
.LBB0_32:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	addl	-44(%rbp), %eax
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB0_36
# %bb.33:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	addl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rdi
	movl	-76(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	yyrealloc@PLT
	movq	%rax, %rcx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	%rcx, (%rax)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_35
# %bb.34:
	leaq	.L.str.2(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_35:
	movl	-76(%rbp), %ecx
	subl	$2, %ecx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	%ecx, 28(%rax)
.LBB0_36:
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movq	YY_END_OF_BUFFER_CHAR(%rip), %rax
	movb	%al, %dl
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	16(%rcx), %rcx
	movb	%dl, (%rax,%rcx)
	movq	YY_END_OF_BUFFER_CHAR(%rip), %rax
	movb	%al, %dl
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_37:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.bss
	.globl	YY_MORE_ADJ
	.p2align	2
YY_MORE_ADJ:
	.long	0                               # 0x0
	.globl	EOB_ACT_END_OF_FILE
	.p2align	2
EOB_ACT_END_OF_FILE:
	.long	0                               # 0x0
	.globl	EOB_ACT_LAST_MATCH
	.p2align	2
EOB_ACT_LAST_MATCH:
	.long	0                               # 0x0
	.globl	YY_BUFFER_EOF_PENDING
	.p2align	3
YY_BUFFER_EOF_PENDING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fatal error - scanner input buffer overflow"
	.bss
	.globl	YY_READ_BUF_SIZE
	.p2align	2
YY_READ_BUF_SIZE:
	.long	0                               # 0x0
	.globl	yyin
	.p2align	2
yyin:
	.long	0                               # 0x0
	.globl	EOB_ACT_CONTINUE_SCAN
	.p2align	2
EOB_ACT_CONTINUE_SCAN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"out of dynamic memory in yy_get_next_buffer()"
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
	.p2align	3
YY_END_OF_BUFFER_CHAR:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_get_next_buffer
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yyrealloc
	.addrsig_sym YY_INPUT
	.addrsig_sym yyrestart
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE
	.addrsig_sym YY_MORE_ADJ
	.addrsig_sym EOB_ACT_END_OF_FILE
	.addrsig_sym EOB_ACT_LAST_MATCH
	.addrsig_sym YY_BUFFER_EOF_PENDING
	.addrsig_sym YY_READ_BUF_SIZE
	.addrsig_sym yyin
	.addrsig_sym EOB_ACT_CONTINUE_SCAN
	.addrsig_sym YY_END_OF_BUFFER_CHAR