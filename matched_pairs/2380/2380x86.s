	.text
	.globl	cttest_heap_insert_and_remove_one # -- Begin function cttest_heap_insert_and_remove_one
	.p2align	4, 0x90
cttest_heap_insert_and_remove_one:      # @cttest_heap_insert_and_remove_one
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	job_setpos(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	job_pri_less(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%edx, %edi
	movl	%r8d, %esi
	movl	%r8d, %ecx
	callq	make_job@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	callq	assertf@PLT
	movq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	callq	heapinsert@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	heapremove@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.2(%rip), %rsi
	callq	assertf@PLT
	cmpq	$0, -24(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.3(%rip), %rsi
	callq	assertf@PLT
	movl	-16(%rbp), %edi
	callq	free@PLT
	movq	-32(%rbp), %rdi
	callq	job_free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	job_setpos
	.p2align	2
job_setpos:
	.long	0                               # 0x0
	.globl	job_pri_less
	.p2align	2
job_pri_less:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"allocate job"
.L.str.1:
	.asciz	"insert should succeed"
.L.str.2:
	.asciz	"j1 should come back out"
.L.str.3:
	.asciz	"h should be empty."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym heapinsert
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym job_free
	.addrsig_sym job_setpos
	.addrsig_sym job_pri_less