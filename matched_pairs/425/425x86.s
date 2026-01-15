	.text
	.p2align	4, 0x90                         # -- Begin function read_args
read_args:                              # @read_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movb	$0, %al
	callq	peek_token@PLT
	movl	%eax, %edi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	do_read_args@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_5:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"macro argument number does not match"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_args
	.addrsig_sym is_keyword
	.addrsig_sym peek_token
	.addrsig_sym make_vector
	.addrsig_sym do_read_args
	.addrsig_sym vec_len
	.addrsig_sym errort