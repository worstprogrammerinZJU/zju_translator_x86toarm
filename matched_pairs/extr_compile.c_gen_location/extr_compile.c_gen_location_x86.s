	.text
	.globl	gen_location                    # -- Begin function gen_location
	.p2align	4, 0x90
gen_location:                           # @gen_location
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	UNKNOWN_LOCATION(%rip), %rax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	UNKNOWN_LOCATION+8(%rip), %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rdi
	callq	locfile_retain@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	3
UNKNOWN_LOCATION:
	.zero	16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym locfile_retain
	.addrsig_sym UNKNOWN_LOCATION