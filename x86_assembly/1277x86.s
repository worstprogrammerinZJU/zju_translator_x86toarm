	.text
	.p2align	4, 0x90                         # -- Begin function jvp_literal_number_new
jvp_literal_number_new:                 # @jvp_literal_number_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %edi
	callq	jvp_literal_number_alloc@PLT
	movq	%rax, -16(%rbp)
	movl	JV_REFCNT_INIT(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movb	$0, %al
	callq	DEC_CONTEXT@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	addq	$8, %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	decNumberFromString@PLT
	movl	NAN(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	DEC_Conversion_syntax(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	jv_mem_free@PLT
                                        # kill: def $ecx killed $eax
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	JV_INVALID(%rip), %rcx
	movq	%rcx, (%rax)
	movq	JV_INVALID+8(%rip), %rcx
	movq	%rcx, 8(%rax)
	movq	JV_INVALID+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movslq	JVP_FLAGS_NUMBER_LITERAL(%rip), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	JV_NUMBER_SIZE_INIT(%rip), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
.LBB0_3:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_REFCNT_INIT
	.p2align	2
JV_REFCNT_INIT:
	.long	0                               # 0x0
	.globl	NAN
	.p2align	2
NAN:
	.long	0                               # 0x0
	.globl	DEC_Conversion_syntax
	.p2align	2
DEC_Conversion_syntax:
	.long	0                               # 0x0
	.globl	JV_INVALID
	.p2align	3
JV_INVALID:
	.zero	24
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.globl	JV_NUMBER_SIZE_INIT
	.p2align	2
JV_NUMBER_SIZE_INIT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_new
	.addrsig_sym jvp_literal_number_alloc
	.addrsig_sym strlen
	.addrsig_sym DEC_CONTEXT
	.addrsig_sym decNumberFromString
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_REFCNT_INIT
	.addrsig_sym NAN
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym JV_INVALID
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym JV_NUMBER_SIZE_INIT