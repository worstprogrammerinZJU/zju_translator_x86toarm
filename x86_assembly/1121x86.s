	.text
	.globl	print_image                     # -- Begin function print_image
	.p2align	4, 0x90
print_image:                            # @print_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -8(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -12(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	16(%rsi), %rax
	movl	-4(%rbp), %ecx
	imull	4(%rsi), %ecx
	imull	8(%rsi), %ecx
	movl	-8(%rbp), %edx
	imull	8(%rsi), %edx
	addl	%edx, %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$30, -12(%rbp)
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$30, -8(%rbp)
	jle	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.2lf, "
.L.str.1:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf