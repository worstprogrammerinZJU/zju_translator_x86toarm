	.text
	.globl	tube_find                       # -- Begin function tube_find
	.p2align	4, 0x90
tube_find:                              # @tube_find
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	tubes(%rip), %rax
	jae	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	tubes+8(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rsi
	movl	MAX_TUBE_NAME_LEN(%rip), %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	$0, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.globl	MAX_TUBE_NAME_LEN
	.p2align	2
MAX_TUBE_NAME_LEN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strncmp
	.addrsig_sym tubes
	.addrsig_sym MAX_TUBE_NAME_LEN