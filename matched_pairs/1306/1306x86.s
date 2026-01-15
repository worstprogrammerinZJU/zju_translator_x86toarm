	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_equal
jvp_string_equal:                       # @jvp_string_equal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jvp_string_ptr@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	jvp_string_ptr@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	jvp_string_length@PLT
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	jvp_string_length@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	jvp_string_length@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	callq	memcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_equal
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_string_ptr
	.addrsig_sym jvp_string_length
	.addrsig_sym memcmp
	.addrsig_sym JV_KIND_STRING