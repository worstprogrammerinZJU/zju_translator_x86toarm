	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_slice
jvp_array_slice:                        # @jvp_array_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	JV_KIND_ARRAY(%rip), %esi
	movq	-16(%rbp), %rdi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rdi
	callq	jvp_array_length@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	callq	jvp_clamp_slice_params@PLT
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
	cmpl	-20(%rbp), %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jg	.LBB0_3
# %bb.1:
	movl	-20(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-24(%rbp), %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jg	.LBB0_3
# %bb.2:
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setle	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	CHAR_BIT(%rip), %rcx
	shlq	$2, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_11
# %bb.6:
	movl	-24(%rbp), %edi
	subl	-20(%rbp), %edi
	callq	jv_array_sized@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-32(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	jv_array_append@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	jv_free@PLT
	jmp	.LBB0_12
.LBB0_11:
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_12:
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
	.globl	CHAR_BIT
	.p2align	2
CHAR_BIT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_slice
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_clamp_slice_params
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_array_sized
	.addrsig_sym jv_array_append
	.addrsig_sym jv_array_get
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym CHAR_BIT