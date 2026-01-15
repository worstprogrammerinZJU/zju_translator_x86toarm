	.text
	.p2align	4, 0x90                         # -- Begin function yy_push_state
yy_push_state:                          # @yy_push_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB0_7
# %bb.1:
	movq	YY_START_STACK_INCR(%rip), %rcx
	movq	-24(%rbp), %rax
	addq	8(%rax), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	cltq
	shlq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_3
# %bb.2:
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	yyalloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_4
.LBB0_3:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	yyrealloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_4:
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	YY_START(%rip), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	movl	%edx, (%rax,%rcx,4)
	movl	-4(%rbp), %edi
	callq	BEGIN@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_START_STACK_INCR
	.p2align	3
YY_START_STACK_INCR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of memory expanding start-condition stack"
	.bss
	.globl	YY_START
	.p2align	2
YY_START:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_push_state
	.addrsig_sym yyalloc
	.addrsig_sym yyrealloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym BEGIN
	.addrsig_sym YY_START_STACK_INCR
	.addrsig_sym YY_START