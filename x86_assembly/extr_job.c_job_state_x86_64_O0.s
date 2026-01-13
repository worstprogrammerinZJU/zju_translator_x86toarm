	.text
	.globl	job_state                       # -- Begin function job_state
	.p2align	4, 0x90
job_state:                              # @job_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Ready(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Reserved(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Buried(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Delayed(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Ready
	.p2align	3
Ready:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ready"
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"reserved"
	.bss
	.globl	Buried
	.p2align	3
Buried:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"buried"
	.bss
	.globl	Delayed
	.p2align	3
Delayed:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"delayed"
.L.str.4:
	.asciz	"invalid"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Ready
	.addrsig_sym Reserved
	.addrsig_sym Buried
	.addrsig_sym Delayed