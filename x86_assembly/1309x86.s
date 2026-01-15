	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_new
jvp_string_new:                         # @jvp_string_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jvp_string_alloc@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	memcpy@PLT
.LBB0_2:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-12(%rbp), %rsi
	movq	$0, (%rdx,%rsi,8)
	movslq	JVP_FLAGS_STRING(%rip), %rdx
	movq	%rdx, (%rcx)
	movl	$0, 8(%rcx)
	movl	$0, 12(%rcx)
	movl	$0, 16(%rcx)
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, 20(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_STRING
	.p2align	2
JVP_FLAGS_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_new
	.addrsig_sym jvp_string_alloc
	.addrsig_sym memcpy
	.addrsig_sym JVP_FLAGS_STRING