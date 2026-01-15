	.text
	.p2align	4, 0x90                         # -- Begin function writetokens
writetokens:                            # @writetokens
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movb	$43, -5(%rbp)
	cmpq	$0, wjobfd(%rip)
	jl	.LBB0_8
# %bb.1:
	movq	wjobfd(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	F_SETFL(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movq	wjobfd(%rip), %rdi
	movl	F_GETFL(%rip), %esi
	movb	$0, %al
	callq	fcntl@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	orl	O_NONBLOCK(%rip), %edx
	movb	$0, %al
	callq	fcntl@PLT
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1, -4(%rbp)
	jle	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	wjobfd(%rip), %rdi
	leaq	-5(%rbp), %rsi
	movl	$1, %edx
	callq	write@PLT
	cmpl	$1, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_2
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	wjobfd
	.p2align	3
wjobfd:
	.quad	0                               # 0x0
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.long	0                               # 0x0
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.long	0                               # 0x0
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym writetokens
	.addrsig_sym fcntl
	.addrsig_sym write
	.addrsig_sym wjobfd
	.addrsig_sym F_SETFL
	.addrsig_sym F_GETFL
	.addrsig_sym O_NONBLOCK