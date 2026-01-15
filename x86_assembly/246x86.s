	.text
	.globl	run_compare                     # -- Begin function run_compare
	.p2align	4, 0x90
run_compare:                            # @run_compare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$4, -4(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	jmp	.LBB0_16
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$4, -4(%rbp)
	jle	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jne	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	train_compare@PLT
	jmp	.LBB0_16
.LBB0_7:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jne	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	validate_compare@PLT
	jmp	.LBB0_15
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jne	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	SortMaster3000@PLT
	jmp	.LBB0_14
.LBB0_11:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jne	.LBB0_13
# %bb.12:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	BattleRoyaleWithCheese@PLT
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n"
.L.str.1:
	.asciz	"train"
.L.str.2:
	.asciz	"valid"
.L.str.3:
	.asciz	"sort"
.L.str.4:
	.asciz	"battle"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym strcmp
	.addrsig_sym train_compare
	.addrsig_sym validate_compare
	.addrsig_sym SortMaster3000
	.addrsig_sym BattleRoyaleWithCheese
	.addrsig_sym stderr