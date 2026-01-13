	.text
	.p2align	4, 0x90                         # -- Begin function h_conn
h_conn:                                 # @h_conn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movw	%si, %ax
	movl	%edi, -4(%rbp)
	movw	%ax, -6(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	28(%rcx), %eax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	-4(%rbp), %edi
	callq	close@PLT
	movq	-16(%rbp), %rdi
	callq	connclose@PLT
	movb	$0, %al
	callq	epollq_apply@PLT
	jmp	.LBB0_12
.LBB0_2:
	movswl	-6(%rbp), %eax
	cmpl	$104, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	conn_process_io@PLT
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	cmd_data_ready@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %edi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	callq	scan_line_end@PLT
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	cmpl	$0, %eax
	setne	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movb	-17(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	dispatch_cmd@PLT
	movq	-16(%rbp), %rdi
	callq	fill_extra_data@PLT
	jmp	.LBB0_5
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	STATE_CLOSE(%rip), %rax
	jne	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	callq	epollq_rmconn@PLT
	movq	-16(%rbp), %rdi
	callq	connclose@PLT
.LBB0_11:
	movb	$0, %al
	callq	epollq_apply@PLT
.LBB0_12:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Argh! event fd doesn't match conn fd."
	.bss
	.globl	STATE_CLOSE
	.p2align	3
STATE_CLOSE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym h_conn
	.addrsig_sym twarnx
	.addrsig_sym close
	.addrsig_sym connclose
	.addrsig_sym epollq_apply
	.addrsig_sym conn_process_io
	.addrsig_sym cmd_data_ready
	.addrsig_sym scan_line_end
	.addrsig_sym dispatch_cmd
	.addrsig_sym fill_extra_data
	.addrsig_sym epollq_rmconn
	.addrsig_sym STATE_CLOSE