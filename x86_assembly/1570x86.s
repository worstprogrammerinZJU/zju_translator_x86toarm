	.text
	.p2align	4, 0x90                         # -- Begin function fillcharset
fillcharset:                            # @fillcharset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	addl	$-128, %eax
	subl	$2, %eax
	jb	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_2
	jmp	.LBB0_7
.LBB0_7:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$131, %eax
	je	.LBB0_3
	jmp	.LBB0_8
.LBB0_8:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$132, %eax
	je	.LBB0_2
	jmp	.LBB0_9
.LBB0_9:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$133, %eax
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	xorl	%esi, %esi
	callq	testchar@PLT
	movl	%eax, %edi
	callq	assert@PLT
.LBB0_2:
	movq	i(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	i(%rip), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	-16(%rbp), %rax
	movq	i(%rip), %rcx
	movl	%esi, (%rax,%rcx,4)
	callq	loopset@PLT
	jmp	.LBB0_5
.LBB0_3:
	movq	i(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	i(%rip), %rcx
	movl	$0, (%rax,%rcx,4)
	xorl	%esi, %esi
	callq	loopset@PLT
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	callq	setchar@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	i(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	i(%rip), %rcx
	movl	$255, (%rax,%rcx,4)
	movl	$255, %esi
	callq	loopset@PLT
.LBB0_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	i
	.p2align	3
i:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fillcharset
	.addrsig_sym assert
	.addrsig_sym testchar
	.addrsig_sym loopset
	.addrsig_sym setchar
	.addrsig_sym i