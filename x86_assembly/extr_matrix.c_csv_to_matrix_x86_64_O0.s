	.text
	.globl	csv_to_matrix                   # -- Begin function csv_to_matrix
	.p2align	4, 0x90
csv_to_matrix:                          # @csv_to_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	$-1, -16(%rbp)
	movl	$0, -44(%rbp)
	movl	$1024, -48(%rbp)                # imm = 0x400
	movl	-48(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	fgetl@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$-1, -16(%rbp)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	count_fields@PLT
	movl	%eax, -16(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-48(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, -8(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	parse_fields@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	shll	$3, %esi
	callq	realloc@PLT
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym calloc
	.addrsig_sym fgetl
	.addrsig_sym count_fields
	.addrsig_sym realloc
	.addrsig_sym parse_fields
	.addrsig_sym free