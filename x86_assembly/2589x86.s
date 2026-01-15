	.text
	.globl	read_intlist                    # -- Begin function read_intlist
	.p2align	4, 0x90
read_intlist:                           # @read_intlist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_12
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -40(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$44, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_2
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rdi
	movl	$44, %esi
	callq	strchr@PLT
	addq	$1, %rax
	movq	%rax, -8(%rbp)
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_11:
	jmp	.LBB0_13
.LBB0_12:
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB0_13:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym calloc
	.addrsig_sym atoi
	.addrsig_sym strchr