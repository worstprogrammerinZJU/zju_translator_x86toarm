	.text
	.p2align	4, 0x90                         # -- Begin function get
get:                                    # @get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	files(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jbe	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, %rsi
	addq	$-1, %rsi
	movq	%rsi, (%rdx)
	movl	-4(%rax,%rcx,4), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	readc_file@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	readc_string@PLT
	movl	%eax, -12(%rbp)
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	cmpl	$10, -12(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.LBB0_11
.LBB0_8:
	movl	-12(%rbp), %eax
	cmpl	EOF(%rip), %eax
	je	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym vec_tail
	.addrsig_sym readc_file
	.addrsig_sym readc_string
	.addrsig_sym files
	.addrsig_sym EOF