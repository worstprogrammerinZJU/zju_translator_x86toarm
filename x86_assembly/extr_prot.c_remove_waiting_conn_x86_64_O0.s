	.text
	.globl	remove_waiting_conn             # -- Begin function remove_waiting_conn
	.p2align	4, 0x90
remove_waiting_conn:                    # @remove_waiting_conn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	conn_waiting@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movl	CONN_TYPE_WAITING(%rip), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	global_stat(%rip), %eax
	addl	$-1, %eax
	movl	%eax, global_stat(%rip)
	movq	$0, -16(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	ms_remove@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONN_TYPE_WAITING
	.p2align	2
CONN_TYPE_WAITING:
	.long	0                               # 0x0
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_waiting
	.addrsig_sym ms_remove
	.addrsig_sym CONN_TYPE_WAITING
	.addrsig_sym global_stat