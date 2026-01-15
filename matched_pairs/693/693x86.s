	.text
	.p2align	4, 0x90                         # -- Begin function decShiftToLeast
decShiftToLeast:                        # @decShiftToLeast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_2:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	DECDPUN(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_18
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	MSUDIGITS@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	DECDPUN(%rip), %eax
	jne	.LBB0_10
# %bb.5:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_6
.LBB0_9:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	subl	-44(%rbp), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	imull	DECDPUN(%rip), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	movl	-44(%rbp), %esi
	callq	QUOT10@PLT
	movl	%eax, -52(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	DECDPUN(%rip), %ecx
	subl	-44(%rbp), %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.LBB0_13
# %bb.12:
	jmp	.LBB0_17
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	QUOT10@PLT
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	-52(%rbp), %ecx
	movq	powers(%rip), %rdx
	movslq	-44(%rbp), %rsi
	imull	(%rdx,%rsi,4), %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	-56(%rbp), %eax
	movq	powers(%rip), %rdx
	movl	DECDPUN(%rip), %esi
	subl	-44(%rbp), %esi
	movslq	%esi, %rsi
	imull	(%rdx,%rsi,4), %eax
	addl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.LBB0_15
# %bb.14:
	jmp	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_11
.LBB0_17:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
.LBB0_18:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decShiftToLeast
	.addrsig_sym MSUDIGITS
	.addrsig_sym D2U
	.addrsig_sym QUOT10
	.addrsig_sym DECDPUN
	.addrsig_sym powers