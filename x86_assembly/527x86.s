	.text
	.globl	load_data                       # -- Begin function load_data
	.p2align	4, 0x90
load_data:                              # @load_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	load_threads(%rip), %edx
	movq	-24(%rbp), %rcx
	leaq	-12(%rbp), %rdi
	xorl	%esi, %esi
	callq	pthread_create@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	load_threads
	.p2align	2
load_threads:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Thread creation failed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym pthread_create
	.addrsig_sym error
	.addrsig_sym load_threads