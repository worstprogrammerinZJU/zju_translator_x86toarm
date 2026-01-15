	.text
	.globl	configTime                      # -- Begin function configTime
	.p2align	4, 0x90
configTime:                             # @configTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	$0, %al
	callq	tcpip_adapter_init@PLT
	movb	$0, %al
	callq	sntp_enabled@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	sntp_stop@PLT
.LBB0_2:
	movl	SNTP_OPMODE_POLL(%rip), %edi
	callq	sntp_setoperatingmode@PLT
	movq	-24(%rbp), %rsi
	xorl	%edi, %edi
	callq	sntp_setservername@PLT
	movq	-32(%rbp), %rsi
	movl	$1, %edi
	callq	sntp_setservername@PLT
	movq	-40(%rbp), %rsi
	movl	$2, %edi
	callq	sntp_setservername@PLT
	movb	$0, %al
	callq	sntp_init@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	subq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	setTimeZone@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SNTP_OPMODE_POLL
	.p2align	2
SNTP_OPMODE_POLL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tcpip_adapter_init
	.addrsig_sym sntp_enabled
	.addrsig_sym sntp_stop
	.addrsig_sym sntp_setoperatingmode
	.addrsig_sym sntp_setservername
	.addrsig_sym sntp_init
	.addrsig_sym setTimeZone
	.addrsig_sym SNTP_OPMODE_POLL