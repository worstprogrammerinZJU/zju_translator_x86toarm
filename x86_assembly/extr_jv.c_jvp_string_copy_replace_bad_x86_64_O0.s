	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_copy_replace_bad
jvp_string_copy_replace_bad:            # @jvp_string_copy_replace_bad
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	imull	$3, -12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	jvp_string_alloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$-1, -68(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$65533, -68(%rbp)               # imm = 0xFFFD
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rsi
	callq	jvp_utf8_encode@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	jmp	.LBB0_1
.LBB0_5:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	subq	%rsi, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -12(%rbp)
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-12(%rbp), %rsi
	movb	$0, (%rdx,%rsi)
	movl	-12(%rbp), %esi
	shll	$1, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, 8(%rdx)
	movslq	JVP_FLAGS_STRING(%rip), %rdx
	movq	%rdx, (%rcx)
	movl	$0, 8(%rcx)
	movl	$0, 12(%rcx)
	movl	$0, 16(%rcx)
	movq	-56(%rbp), %rdx
	addq	$12, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, 20(%rcx)
	addq	$96, %rsp
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
	.addrsig_sym jvp_string_copy_replace_bad
	.addrsig_sym jvp_string_alloc
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jvp_utf8_encode
	.addrsig_sym assert
	.addrsig_sym JVP_FLAGS_STRING