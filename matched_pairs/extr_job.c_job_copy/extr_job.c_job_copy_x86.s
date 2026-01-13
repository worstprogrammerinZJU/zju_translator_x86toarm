	.text
	.globl	job_copy                        # -- Begin function job_copy
	.p2align	4, 0x90
job_copy:                               # @job_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	addq	$32, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	addq	$32, %rdx
	callq	memcpy@PLT
	movq	-24(%rbp), %rdi
	callq	job_list_reset@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	TUBE_ASSIGN@PLT
	movl	Copy(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.bss
	.globl	Copy
	.p2align	2
Copy:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym twarnx
	.addrsig_sym memcpy
	.addrsig_sym job_list_reset
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym Copy