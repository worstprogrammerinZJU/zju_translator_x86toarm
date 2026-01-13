	.text
	.p2align	4, 0x90                         # -- Begin function report
report:                                 # @report
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$10, %edi
	callq	putchar@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_13
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	rmtree@PLT
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	failed@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_11
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	WIFEXITED@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	WEXITSTATUS@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	WIFSIGNALED@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	WTERMSIG@PLT
	movl	%eax, %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$10, %edi
	callq	putchar@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movl	SEEK_SET(%rip), %edx
	xorl	%esi, %esi
	callq	lseek@PLT
	movl	stdout(%rip), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	copyfd@PLT
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	cmpl	$0, -12(%rbp)
	jne	.LBB0_15
# %bb.14:
	cmpl	$0, -16(%rbp)
	je	.LBB0_16
.LBB0_15:
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_17
.LBB0_16:
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_17:
	movb	$1, %al
	cmpl	$0, -12(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jne	.LBB0_19
# %bb.18:
	cmpl	$0, -16(%rbp)
	setne	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_19:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n%s: "
.L.str.1:
	.asciz	"failure"
.L.str.2:
	.asciz	"error"
.L.str.3:
	.asciz	" (exit status %d)"
.L.str.4:
	.asciz	" (signal %d)"
	.bss
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.long	0                               # 0x0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\n%d failures; %d errors.\n"
.L.str.6:
	.asciz	"\nPASS\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym report
	.addrsig_sym putchar
	.addrsig_sym rmtree
	.addrsig_sym printf
	.addrsig_sym failed
	.addrsig_sym WIFEXITED
	.addrsig_sym WEXITSTATUS
	.addrsig_sym WIFSIGNALED
	.addrsig_sym WTERMSIG
	.addrsig_sym lseek
	.addrsig_sym copyfd
	.addrsig_sym SEEK_SET
	.addrsig_sym stdout