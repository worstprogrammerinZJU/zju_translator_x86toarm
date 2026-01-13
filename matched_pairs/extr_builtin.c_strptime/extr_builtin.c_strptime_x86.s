	.text
	.p2align	4, 0x90                         # -- Begin function strptime
strptime:                               # @strptime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	-32(%rbp), %r8
	addq	$20, %r8
	movq	-32(%rbp), %r9
	addq	$16, %r9
	movq	-32(%rbp), %r11
	addq	$12, %r11
	movq	-32(%rbp), %r10
	addq	$8, %r10
	leaq	.L.str.1(%rip), %rsi
	leaq	-40(%rbp), %rax
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	sscanf@PLT
	movl	%eax, -36(%rbp)
	cmpl	$6, -36(%rbp)
	jne	.LBB0_5
# %bb.3:
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$90, %eax
	jne	.LBB0_5
# %bb.4:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1900, %ecx                     # imm = 0x76C
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	$0, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%Y-%m-%dT%H:%M:%SZ"
.L.str.1:
	.asciz	"%d-%d-%dT%d:%d:%d%n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strptime
	.addrsig_sym strcmp
	.addrsig_sym sscanf