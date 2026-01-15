	.text
	.globl	cttest_job_hash_free_next       # -- Begin function cttest_job_hash_free_next
	.p2align	4, 0x90
cttest_job_hash_free_next:              # @cttest_job_hash_free_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$97, -20(%rbp)
	movl	$12386, -24(%rbp)               # imm = 0x3062
	movl	default_tube(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	default_tube(%rip), %r8d
	movl	-24(%rbp), %r9d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job_with_id@PLT
	movq	%rax, -16(%rbp)
	movl	default_tube(%rip), %r8d
	movl	-20(%rbp), %r9d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job_with_id@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	movq	-16(%rbp), %rdi
	callq	job_free@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.2(%rip), %rsi
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
	.asciz	"b should be chained to a"
.L.str.2:
	.asciz	"job should be missing"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job_with_id
	.addrsig_sym assertf
	.addrsig_sym job_free
	.addrsig_sym default_tube