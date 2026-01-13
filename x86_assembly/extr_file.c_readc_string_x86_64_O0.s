	.text
	.p2align	4, 0x90                         # -- Begin function readc_string
readc_string:                           # @readc_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rax
	movsbl	8(%rax), %eax
	cmpl	$10, %eax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movsbl	8(%rax), %eax
	movsbl	EOF(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_4
.LBB0_3:
	movsbl	EOF(%rip), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	$10, %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB0_12
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	jne	.LBB0_10
# %bb.7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
.LBB0_9:
	movl	$10, -12(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rcx)
	movsbl	(%rax), %eax
	movl	%eax, -12(%rbp)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 8(%rax)
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
EOF:
	.byte	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readc_string
	.addrsig_sym EOF