	.text
	.globl	job_list_is_empty               # -- Begin function job_list_is_empty
	.p2align	4, 0x90
job_list_is_empty:                      # @job_list_is_empty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-8(%rbp), %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig