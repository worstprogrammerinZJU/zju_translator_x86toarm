	.text
	.globl	jvp_number_cmp                  # -- Begin function jvp_number_cmp
	.p2align	4, 0x90
jvp_number_cmp:                         # @jvp_number_cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_NUMBER(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	movl	JV_KIND_NUMBER(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.1:
	movl	-12(%rbp), %edi
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:
	leaq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_dec_number_ptr@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_dec_number_ptr@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	DEC_CONTEXT@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	-36(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	callq	decNumberCompare@PLT
	leaq	-16(%rbp), %rdi
	callq	decNumberIsZero@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	leaq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_6:
	movl	$1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_7:
	movl	-8(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_9
# %bb.8:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_9:
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB0_11
	jp	.LBB0_11
# %bb.10:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movl	$1, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym decNumberCompare
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym DEC_CONTEXT
	.addrsig_sym decNumberIsZero
	.addrsig_sym decNumberIsNegative
	.addrsig_sym jv_number_value
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL