	.text
	.p2align	4, 0x90                         # -- Begin function yyensure_buffer_stack
yyensure_buffer_stack:                  # @yyensure_buffer_stack
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
# %bb.1:
	movl	$1, -12(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	yyalloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB0_8
.LBB0_4:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_8
# %bb.5:
	movl	$8, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	callq	yyrealloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_7
# %bb.6:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movslq	-28(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yyensure_buffer_stack()"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym memset
	.addrsig_sym yyrealloc