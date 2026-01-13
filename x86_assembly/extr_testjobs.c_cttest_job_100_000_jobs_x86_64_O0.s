	.text
	.globl	cttest_job_100_000_jobs         # -- Begin function cttest_job_100_000_jobs
	.p2align	4, 0x90
cttest_job_100_000_jobs:                # @cttest_job_100_000_jobs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	default_tube(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	make_tube@PLT
	movl	-8(%rbp), %edi                  # 4-byte Reload
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100000, -4(%rbp)               # imm = 0x186A0
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	default_tube(%rip), %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	make_job@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$100000, %eax                   # imm = 0x186A0
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	movl	$1, -4(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100000, -4(%rbp)               # imm = 0x186A0
	jg	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %edi
	callq	job_find@PLT
	movl	%eax, %edi
	callq	job_free@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	stderr(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str.2(%rip), %rsi
	callq	fprintf@PLT
	movb	$0, %al
	callq	get_all_jobs_used@PLT
	cmpl	$0, %eax
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
	.asciz	"should match"
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"get_all_jobs_used() => %zu\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym make_tube
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym get_all_jobs_used
	.addrsig_sym job_free
	.addrsig_sym job_find
	.addrsig_sym fprintf
	.addrsig_sym default_tube
	.addrsig_sym stderr