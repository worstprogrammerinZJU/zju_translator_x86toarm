	.text
	.p2align	4, 0x90                         # -- Begin function uptime
uptime:                                 # @uptime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	nanoseconds@PLT
	subl	started_at(%rip), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	started_at
	.p2align	2
started_at:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uptime
	.addrsig_sym nanoseconds
	.addrsig_sym started_at