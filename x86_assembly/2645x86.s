	.text
	.p2align	4, 0x90                         # -- Begin function reserve
reserve:                                # @reserve
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	needfree@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB0_6
# %bb.5:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	balance@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"needfree"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reserve
	.addrsig_sym needfree
	.addrsig_sym twarnx
	.addrsig_sym balance