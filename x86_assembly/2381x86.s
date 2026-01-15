	.text
	.globl	ctbench_job_free                # -- Begin function ctbench_job_free
	.p2align	4, 0x90
ctbench_job_free:                       # @ctbench_job_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	default_tube(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	default_tube(%rip), %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, %al
	callq	ctresettimer@PLT
	movl	$0, -8(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	job_free@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movb	$0, %al
	callq	ctstoptimer@PLT
	movq	-16(%rbp), %rdi
	callq	free@PLT
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym ctresettimer
	.addrsig_sym job_free
	.addrsig_sym ctstoptimer
	.addrsig_sym free
	.addrsig_sym default_tube