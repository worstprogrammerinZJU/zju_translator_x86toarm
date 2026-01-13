	.text
	.p2align	4, 0x90                         # -- Begin function check_case_duplicates
check_case_duplicates:                  # @check_case_duplicates
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	subl	$1, %esi
	callq	vec_get@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	error@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	error@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate case value: %d"
.L.str.1:
	.asciz	"duplicate case value: %d ... %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_case_duplicates
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym error