	.text
	.globl	print_letters                   # -- Begin function print_letters
	.p2align	4, 0x90
print_letters:                          # @print_letters
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %eax
	imull	NUMCHARS(%rip), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	NUMCHARS(%rip), %esi
	callq	max_index@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	int_to_alphanum@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%c"
.L.str.1:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym max_index
	.addrsig_sym printf
	.addrsig_sym int_to_alphanum
	.addrsig_sym NUMCHARS