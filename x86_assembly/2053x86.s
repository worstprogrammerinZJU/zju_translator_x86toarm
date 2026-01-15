	.text
	.p2align	4, 0x90                         # -- Begin function process_queue
process_queue:                          # @process_queue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %edi
	callq	next_awaited_job@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$8, %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	callq	heapremove@PLT
	movl	ready_ct(%rip), %eax
	addl	$-1, %eax
	movl	%eax, ready_ct(%rip)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	URGENT_THRESHOLD(%rip), %rax
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	global_stat+4(%rip), %eax
	addl	$-1, %eax
	movl	%eax, global_stat+4(%rip)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	ms_take@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	jmp	.LBB0_1
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	global_stat(%rip), %eax
	addl	$1, %eax
	movl	%eax, global_stat(%rip)
	movq	-24(%rbp), %rdi
	callq	remove_waiting_conn@PLT
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	conn_reserve_job@PLT
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	MSG_RESERVED(%rip), %edx
	callq	reply_job@PLT
	jmp	.LBB0_1
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ready_ct
	.p2align	2
ready_ct:
	.long	0                               # 0x0
	.globl	URGENT_THRESHOLD
	.p2align	3
URGENT_THRESHOLD:
	.quad	0                               # 0x0
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"waiting_conns is empty"
	.bss
	.globl	MSG_RESERVED
	.p2align	2
MSG_RESERVED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process_queue
	.addrsig_sym nanoseconds
	.addrsig_sym next_awaited_job
	.addrsig_sym heapremove
	.addrsig_sym ms_take
	.addrsig_sym twarnx
	.addrsig_sym remove_waiting_conn
	.addrsig_sym conn_reserve_job
	.addrsig_sym reply_job
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat
	.addrsig_sym MSG_RESERVED