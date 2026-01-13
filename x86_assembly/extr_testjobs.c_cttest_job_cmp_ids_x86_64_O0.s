	.text
	.globl	cttest_job_cmp_ids              # -- Begin function cttest_job_cmp_ids
	.p2align	4, 0x90
cttest_job_cmp_ids:                     # @cttest_job_cmp_ids
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	default_tube(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	default_tube(%rip), %r8d
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%edx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
	movq	%rax, -8(%rbp)
	movl	default_tube(%rip), %r8d
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%edx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	$49, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	job_pri_less@PLT
	movl	%eax, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	default_tube
	.p2align	2
default_tube:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default"
.L.str.1:
	.asciz	"should be less"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym job_pri_less
	.addrsig_sym default_tube