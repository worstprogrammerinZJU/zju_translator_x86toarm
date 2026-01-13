	.text
	.globl	parse_data                      # -- Begin function parse_data
	.p2align	4, 0x90
parse_data:                             # @parse_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_15
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -24(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-24(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-20(%rbp), %ecx
	movb	%al, -45(%rbp)                  # 1-byte Spill
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -45(%rbp)                  # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-45(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_15
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -46(%rbp)                  # 1-byte Spill
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$44, %eax
	setne	%al
	movb	%al, -46(%rbp)                  # 1-byte Spill
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=2
	movb	-46(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_7
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -44(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movslq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdx
	leaq	.L.str(%rip), %rsi
	callq	sscanf@PLT
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_15:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%g"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sscanf