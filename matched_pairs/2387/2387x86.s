	.text
	.globl	cttest_job_creation             # -- Begin function cttest_job_creation
	.p2align	4, 0x90
cttest_job_creation:                    # @cttest_job_creation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	default_tube(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	default_tube(%rip), %r8d
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%edx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	sete	%al
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
	.asciz	"priority should match"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym default_tube