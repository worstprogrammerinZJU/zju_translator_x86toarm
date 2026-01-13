	.text
	.p2align	4, 0x90                         # -- Begin function kill_srvpid
kill_srvpid:                            # @kill_srvpid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, srvpid(%rip)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	srvpid(%rip), %rdi
	movl	SIGTERM(%rip), %esi
	callq	kill@PLT
	movq	srvpid(%rip), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	waitpid@PLT
	movq	$0, srvpid(%rip)
.LBB0_3:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	srvpid
	.p2align	3
srvpid:
	.quad	0                               # 0x0
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kill_srvpid
	.addrsig_sym kill
	.addrsig_sym waitpid
	.addrsig_sym srvpid
	.addrsig_sym SIGTERM