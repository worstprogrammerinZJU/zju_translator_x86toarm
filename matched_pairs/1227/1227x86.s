	.text
	.globl	jv_invalid_with_msg             # -- Begin function jv_invalid_with_msg
	.p2align	4, 0x90
jv_invalid_with_msg:                    # @jv_invalid_with_msg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	JV_KIND_NULL(%rip), %edi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	JVP_HAS_KIND@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	JV_INVALID(%rip), %rcx
	movq	%rcx, (%rax)
	movq	JV_INVALID+8(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	JV_INVALID+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB0_3
.LBB0_2:
	movl	$32, %edi
	callq	jv_mem_alloc@PLT
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movl	JV_REFCNT_INIT(%rip), %esi
	movq	-8(%rbp), %rcx
	movl	%esi, (%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 16(%rcx)
	movq	16(%rdx), %rdx
	movq	%rdx, 24(%rcx)
	movslq	JVP_FLAGS_INVALID_MSG(%rip), %rcx
	movq	%rcx, -32(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
.LBB0_3:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	2
JV_KIND_NULL:
	.long	0                               # 0x0
	.globl	JV_INVALID
	.p2align	3
JV_INVALID:
	.zero	24
	.globl	JV_REFCNT_INIT
	.p2align	2
JV_REFCNT_INIT:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_INVALID_MSG
	.p2align	2
JVP_FLAGS_INVALID_MSG:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_mem_alloc
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_INVALID
	.addrsig_sym JV_REFCNT_INIT
	.addrsig_sym JVP_FLAGS_INVALID_MSG