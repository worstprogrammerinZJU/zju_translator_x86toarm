	.text
	.globl	decContextDefault               # -- Begin function decContextDefault
	.p2align	4, 0x90
decContextDefault:                      # @decContextDefault
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$9, (%rax)
	movl	DEC_MAX_EMAX(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	DEC_MIN_EMIN(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	DEC_ROUND_HALF_UP(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	DEC_Errors(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_5
# %bb.7:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	$7, (%rax)
	movq	-8(%rbp), %rax
	movl	$96, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$-95, 8(%rax)
	movq	DEC_ROUND_HALF_EVEN(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB0_6
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	$16, (%rax)
	movq	-8(%rbp), %rax
	movl	$384, 4(%rax)                   # imm = 0x180
	movq	-8(%rbp), %rax
	movl	$-383, 8(%rax)                  # imm = 0xFE81
	movq	DEC_ROUND_HALF_EVEN(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB0_6
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	$34, (%rax)
	movq	-8(%rbp), %rax
	movl	$6144, 4(%rax)                  # imm = 0x1800
	movq	-8(%rbp), %rax
	movl	$-6143, 8(%rax)                 # imm = 0xE801
	movq	DEC_ROUND_HALF_EVEN(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rdi
	movl	DEC_Invalid_operation(%rip), %esi
	callq	decContextSetStatus@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
                                        # -- End function
	.bss
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.long	0                               # 0x0
	.globl	DEC_MIN_EMIN
	.p2align	2
DEC_MIN_EMIN:
	.long	0                               # 0x0
	.globl	DEC_ROUND_HALF_UP
	.p2align	3
DEC_ROUND_HALF_UP:
	.quad	0
	.globl	DEC_Errors
	.p2align	2
DEC_Errors:
	.long	0                               # 0x0
	.globl	DEC_ROUND_HALF_EVEN
	.p2align	3
DEC_ROUND_HALF_EVEN:
	.quad	0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_ROUND_HALF_UP
	.addrsig_sym DEC_Errors
	.addrsig_sym DEC_ROUND_HALF_EVEN
	.addrsig_sym DEC_Invalid_operation