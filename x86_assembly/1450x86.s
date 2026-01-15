	.text
	.globl	yy_scan_buffer                  # -- Begin function yy_scan_buffer
	.p2align	4, 0x90
yy_scan_buffer:                         # @yy_scan_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$2, -20(%rbp)
	jl	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	movsbl	YY_END_OF_BUFFER_CHAR(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	movsbl	YY_END_OF_BUFFER_CHAR(%rip), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_4
.LBB0_3:
	movq	$0, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movl	-24(%rbp), %esi
	movl	$4, %edi
	callq	yyalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_6:
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movl	YY_BUFFER_NEW(%rip), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	yy_switch_to_buffer@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
YY_END_OF_BUFFER_CHAR:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_scan_buffer()"
	.bss
	.globl	YY_BUFFER_NEW
	.p2align	2
YY_BUFFER_NEW:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_switch_to_buffer
	.addrsig_sym YY_END_OF_BUFFER_CHAR
	.addrsig_sym YY_BUFFER_NEW