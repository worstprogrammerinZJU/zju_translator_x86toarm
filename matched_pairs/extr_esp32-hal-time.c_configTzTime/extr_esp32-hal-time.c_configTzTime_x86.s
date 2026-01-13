	.text
	.globl	configTzTime                    # -- Begin function configTzTime
	.p2align	4, 0x90
configTzTime:                           # @configTzTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
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
	movq	-16(%rbp), %rsi
	xorl	%edi, %edi
	callq	sntp_setservername@PLT
	movq	-24(%rbp), %rsi
	movl	$1, %edi
	callq	sntp_setservername@PLT
	movq	-32(%rbp), %rsi
	movl	$2, %edi
	callq	sntp_setservername@PLT
	movb	$0, %al
	callq	sntp_init@PLT
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movl	$1, %edx
	callq	setenv@PLT
	movb	$0, %al
	callq	tzset@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SNTP_OPMODE_POLL
	.p2align	2
SNTP_OPMODE_POLL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TZ"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tcpip_adapter_init
	.addrsig_sym sntp_enabled
	.addrsig_sym sntp_stop
	.addrsig_sym sntp_setoperatingmode
	.addrsig_sym sntp_setservername
	.addrsig_sym sntp_init
	.addrsig_sym setenv
	.addrsig_sym tzset
	.addrsig_sym SNTP_OPMODE_POLL