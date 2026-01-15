	.text
	.p2align	4, 0x90                         # -- Begin function is_job_reserved_by_conn
is_job_reserved_by_conn:                # @is_job_reserved_by_conn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -16(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-8(%rbp), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Reserved(%rip), %rax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_job_reserved_by_conn
	.addrsig_sym Reserved