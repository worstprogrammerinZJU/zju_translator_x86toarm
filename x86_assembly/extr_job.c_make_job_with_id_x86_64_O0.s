	.text
	.globl	make_job_with_id                # -- Begin function make_job_with_id
	.p2align	4, 0x90
make_job_with_id:                       # @make_job_with_id
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	-36(%rbp), %edi
	callq	allocate_job@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	cmpq	$0, -56(%rbp)
	je	.LBB0_6
# %bb.3:
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	cmpq	next_id(%rip), %rax
	jl	.LBB0_5
# %bb.4:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, next_id(%rip)
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movq	next_id(%rip), %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, next_id(%rip)
	movq	-64(%rbp), %rax
	movq	%rcx, 32(%rax)
.LBB0_7:
	movl	-12(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-64(%rbp), %rdi
	callq	store_job@PLT
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	movq	-48(%rbp), %rsi
	callq	TUBE_ASSIGN@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.bss
	.globl	next_id
	.p2align	3
next_id:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym allocate_job
	.addrsig_sym twarnx
	.addrsig_sym store_job
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym next_id