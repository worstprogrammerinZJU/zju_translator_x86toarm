	.text
	.globl	allocate_job                    # -- Begin function allocate_job
	.p2align	4, 0x90
allocate_job:                           # @allocate_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movslq	-12(%rbp), %rax
	addq	$16, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rcx
	addq	$16, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rdi
	callq	job_list_reset@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym twarnx
	.addrsig_sym memset
	.addrsig_sym nanoseconds
	.addrsig_sym job_list_reset