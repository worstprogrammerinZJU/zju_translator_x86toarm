	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_read
jvp_array_read:                         # @jvp_array_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	cmpl	$0, -16(%rbp)
	jl	.LBB0_3
# %bb.1:
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_length@PLT
	movl	%eax, %ecx
	movl	-28(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_3
# %bb.2:
	movl	-12(%rbp), %edi
	callq	jvp_array_ptr@PLT
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_offset@PLT
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_offset@PLT
	movl	-44(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	$0, -8(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_read
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jvp_array_offset
	.addrsig_sym JV_KIND_ARRAY