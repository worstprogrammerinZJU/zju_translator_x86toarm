	.text
	.globl	input_position                  # -- Begin function input_position
	.p2align	4, 0x90
input_position:                         # @input_position
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	files(%rip), %edi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	files(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(unknown)"
.L.str.1:
	.asciz	"%s:%d:%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_len
	.addrsig_sym vec_tail
	.addrsig_sym format
	.addrsig_sym files