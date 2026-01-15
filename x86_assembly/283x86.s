	.text
	.globl	gen_cbinding                    # -- Begin function gen_cbinding
	.p2align	4, 0x90
gen_cbinding:                           # @gen_cbinding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	CLOSURE_CREATE_C(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edi
	callq	strdup@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	subq	$1, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, %edi
	movl	-16(%rbp), %esi
	callq	BLOCK@PLT
	movl	%eax, -16(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOSURE_CREATE_C
	.p2align	2
CLOSURE_CREATE_C:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym BLOCK
	.addrsig_sym inst_block
	.addrsig_sym CLOSURE_CREATE_C