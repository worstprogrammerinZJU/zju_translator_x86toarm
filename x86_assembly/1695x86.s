	.text
	.globl	print_matrix                    # -- Begin function print_matrix
	.p2align	4, 0x90
print_matrix:                           # @print_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$4, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$4, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -20(%rbp)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_16
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -24(%rbp)
.LBB0_11:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	leaq	.L.str.6(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_9
.LBB0_16:
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -24(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$4, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d X %d Matrix:\n"
.L.str.1:
	.asciz	" __"
.L.str.2:
	.asciz	" "
.L.str.3:
	.asciz	"__ \n"
.L.str.4:
	.asciz	"|  "
.L.str.5:
	.asciz	"  |\n"
.L.str.6:
	.asciz	"%15.7f "
.L.str.7:
	.asciz	" |\n"
.L.str.8:
	.asciz	"|__"
.L.str.9:
	.asciz	"__|\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf