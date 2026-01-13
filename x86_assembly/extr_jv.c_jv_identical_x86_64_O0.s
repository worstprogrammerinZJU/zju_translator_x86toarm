	.text
	.globl	jv_identical                    # -- Begin function jv_identical
	.p2align	4, 0x90
jv_identical:                           # @jv_identical
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	48(%rbp), %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	(%rax), %rax
	cmpq	(%rcx), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	cmpq	8(%rcx), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	cmpq	16(%rcx), %rax
	je	.LBB0_4
.LBB0_3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	JVP_IS_ALLOCATED@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	24(%rax), %rax
	cmpq	24(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	addq	$24, %rdi
	addq	$24, %rsi
	movl	$8, %edx
	callq	memcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	jv_free@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	jv_free@PLT
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_IS_ALLOCATED
	.addrsig_sym memcmp
	.addrsig_sym jv_free