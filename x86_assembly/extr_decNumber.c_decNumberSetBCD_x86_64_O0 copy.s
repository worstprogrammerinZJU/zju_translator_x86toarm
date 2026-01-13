	.text
	.globl	decNumberSetBCD                 # -- Begin function decNumberSetBCD
	.p2align	4, 0x90
decNumberSetBCD:                        # @decNumberSetBCD
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edi
	callq	MSUDIGITS@PLT
	movq	%rax, -48(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jb	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	jle	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	X10@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	DECDPUN(%rip), %rax
	movq	%rax, -48(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym X10
	.addrsig_sym DECDPUN