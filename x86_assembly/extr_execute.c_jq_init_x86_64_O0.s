	.text
	.globl	jq_init                         # -- Begin function jq_init
	.p2align	4, 0x90
jq_init:                                # @jq_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$128, %edi
	callq	jv_mem_alloc_unguarded@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rdi
	addq	$104, %rdi
	callq	stack_init@PLT
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 56(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movl	default_err_cb(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	stderr(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 36(%rax)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	default_err_cb
	.p2align	2
default_err_cb:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc_unguarded
	.addrsig_sym stack_init
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym jv_object
	.addrsig_sym default_err_cb
	.addrsig_sym stderr