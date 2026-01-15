	.text
	.p2align	4, 0x90                         # -- Begin function walscandir
walscandir:                             # @walscandir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$1073741824, -36(%rbp)          # imm = 0x40000000
	movl	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	opendir@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	readdir@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	leaq	walscandir.base(%rip), %rsi
	movl	$7, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_13
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	addq	$7, %rdi
	leaq	-56(%rbp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, -44(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_14:
	movq	-24(%rbp), %rdi
	callq	closedir@PLT
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_15:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.data
walscandir.base:
	.asciz	"binlog."
	.section	.rodata,"a",@progbits
	.p2align	2
walscandir.len:
	.long	7                               # 0x7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym walscandir
	.addrsig_sym opendir
	.addrsig_sym readdir
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym closedir
	.addrsig_sym walscandir.base