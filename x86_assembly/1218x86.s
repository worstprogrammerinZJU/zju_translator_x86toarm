	.text
	.globl	jv_equal                        # -- Begin function jv_equal
	.p2align	4, 0x90
jv_equal:                               # @jv_equal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	jv_get_kind@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -8(%rbp)                  # 4-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	jv_get_kind@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax                  # 4-byte Reload
	cmpl	%ecx, %eax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	JVP_IS_ALLOCATED@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	JVP_IS_ALLOCATED@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.4:
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	cmpq	(%rcx), %rax
	jne	.LBB0_8
# %bb.5:
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	cmpq	8(%rcx), %rax
	jne	.LBB0_8
# %bb.6:
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	cmpq	16(%rcx), %rax
	jne	.LBB0_8
# %bb.7:
	movl	$1, -4(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	16(%rcx), %rdx
	movq	%rsp, %rax
	movq	%rdx, 16(%rax)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	callq	jv_get_kind@PLT
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_13
# %bb.17:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_9:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	jvp_number_equal@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_10:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	jvp_array_equal@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	jvp_string_equal@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	jvp_object_equal@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	$1, -4(%rbp)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	jv_free@PLT
                                        # kill: def $ecx killed $eax
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	jv_free@PLT
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_get_kind
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym jvp_number_equal
	.addrsig_sym jvp_array_equal
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_object_equal
	.addrsig_sym jv_free