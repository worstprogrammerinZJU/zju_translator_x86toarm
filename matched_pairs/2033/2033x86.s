	.text
	.p2align	4, 0x90                         # -- Begin function enqueue_waiting_conn
enqueue_waiting_conn:                   # @enqueue_waiting_conn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	CONN_TYPE_WAITING(%rip), %ecx
	movq	-8(%rbp), %rax
	orl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	global_stat(%rip), %eax
	addl	$1, %eax
	movl	%eax, global_stat(%rip)
	movq	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	ms_append@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
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
	.addrsig_sym enqueue_waiting_conn
	.addrsig_sym ms_append
	.addrsig_sym CONN_TYPE_WAITING
	.addrsig_sym global_stat