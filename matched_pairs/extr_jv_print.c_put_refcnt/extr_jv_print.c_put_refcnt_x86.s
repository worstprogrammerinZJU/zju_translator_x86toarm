	.text
	.p2align	4, 0x90                         # -- Begin function put_refcnt
put_refcnt:                             # @put_refcnt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	JVP_DTOA_FMT_MAX_LEN(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	$32, %edi
	callq	put_char@PLT
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	$40, %edi
	callq	put_char@PLT
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	jvp_dtoa_fmt@PLT
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	put_str@PLT
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	$41, %edi
	callq	put_char@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_DTOA_FMT_MAX_LEN
	.p2align	2
JVP_DTOA_FMT_MAX_LEN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_refcnt
	.addrsig_sym put_char
	.addrsig_sym put_str
	.addrsig_sym jvp_dtoa_fmt
	.addrsig_sym JVP_DTOA_FMT_MAX_LEN