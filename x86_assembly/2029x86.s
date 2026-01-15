	.text
	.p2align	4, 0x90                         # -- Begin function do_list_tubes
do_list_tubes:                          # @do_list_tubes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$6, -48(%rbp)
	movq	$0, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	addl	$3, %eax
	cltq
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-48(%rbp), %rdi
	callq	allocate_job@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	movl	MSG_OUT_OF_MEMORY(%rip), %esi
	callq	reply_serr@PLT
	jmp	.LBB0_11
.LBB0_6:
	movl	Copy(%rip), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$5, %esi
	leaq	.L.str(%rip), %rdx
	movb	$0, %al
	callq	snprintf@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	addl	$4, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	leaq	.L.str.1(%rip), %rdx
	movb	$0, %al
	callq	snprintf@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-24(%rbp), %rax
	movb	$13, (%rax)
	movq	-24(%rbp), %rax
	movb	$10, 1(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	movl	STATE_SEND_JOB(%rip), %esi
	movq	-48(%rbp), %rcx
	subq	$2, %rcx
	leaq	.L.str.2(%rip), %rdx
	callq	reply_line@PLT
.LBB0_11:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MSG_OUT_OF_MEMORY
	.p2align	2
MSG_OUT_OF_MEMORY:
	.long	0                               # 0x0
	.globl	Copy
	.p2align	2
Copy:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"---\n"
.L.str.1:
	.asciz	"- %s\n"
	.bss
	.globl	STATE_SEND_JOB
	.p2align	2
STATE_SEND_JOB:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"OK %zu\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_list_tubes
	.addrsig_sym strlen
	.addrsig_sym allocate_job
	.addrsig_sym reply_serr
	.addrsig_sym snprintf
	.addrsig_sym reply_line
	.addrsig_sym MSG_OUT_OF_MEMORY
	.addrsig_sym Copy
	.addrsig_sym STATE_SEND_JOB