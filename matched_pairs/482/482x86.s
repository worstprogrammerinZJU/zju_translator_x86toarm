	.text
	.p2align	4, 0x90                         # -- Begin function failed
failed:                                 # @failed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	WIFSIGNALED@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -5(%rbp)                   # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %edi
	callq	WTERMSIG@PLT
	cmpq	SIGABRT(%rip), %rax
	sete	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGABRT
	.p2align	3
SIGABRT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym failed
	.addrsig_sym WIFSIGNALED
	.addrsig_sym WTERMSIG
	.addrsig_sym SIGABRT