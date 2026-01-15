	.text
	.globl	lex                             # -- Begin function lex
	.p2align	4, 0x90
lex:                                    # @lex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	buffers(%rip), %rdi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	cmpl	$0, %eax
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	vec_pop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movq	buffers(%rip), %rdi
	callq	vec_len@PLT
	cmpl	$1, %eax
	jle	.LBB0_4
# %bb.3:
	movq	eof_token(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movb	$0, %al
	callq	current_file@PLT
	cmpl	$1, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	do_read_token@PLT
	movq	%rax, -32(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSPACE(%rip), %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movb	$0, %al
	callq	do_read_token@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_5
.LBB0_7:
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	buffers
	.p2align	3
buffers:
	.quad	0
	.globl	eof_token
	.p2align	3
eof_token:
	.quad	0
	.globl	TSPACE
	.p2align	3
TSPACE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym vec_len
	.addrsig_sym vec_pop
	.addrsig_sym current_file
	.addrsig_sym do_read_token
	.addrsig_sym buffers
	.addrsig_sym eof_token
	.addrsig_sym TSPACE