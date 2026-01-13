	.text
	.globl	cttest_job_all_jobs_used        # -- Begin function cttest_job_all_jobs_used
	.p2align	4, 0x90
cttest_job_all_jobs_used:               # @cttest_job_all_jobs_used
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
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	movl	$10, %edi
	callq	allocate_job@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	movq	-16(%rbp), %rdi
	callq	job_free@PLT
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	movq	-8(%rbp), %rdi
	callq	job_free@PLT
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
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
	.asciz	"should match"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym get_all_jobs_used
	.addrsig_sym allocate_job
	.addrsig_sym job_free
	.addrsig_sym default_tube