	.text
	.globl	cttest_job_hash_free            # -- Begin function cttest_job_hash_free
	.p2align	4, 0x90
cttest_job_hash_free:                   # @cttest_job_hash_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$83, -12(%rbp)
	movl	default_tube(%rip), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	default_tube(%rip), %r8d
	movl	-12(%rbp), %r9d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job_with_id@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	job_free@PLT
	movl	-12(%rbp), %edi
	callq	job_find@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	addq	$16, %rsp
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
	.asciz	"job should be missing"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job_with_id
	.addrsig_sym job_free
	.addrsig_sym assertf
	.addrsig_sym job_find
	.addrsig_sym default_tube