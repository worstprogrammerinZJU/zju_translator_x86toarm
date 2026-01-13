	.text
	.p2align	4, 0x90                         # -- Begin function stbi__do_png
stbi__do_png:                           # @stbi__do_png
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$4, -44(%rbp)
	jle	.LBB0_3
.LBB0_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_3:
	movq	-16(%rbp), %rdi
	movl	STBI__SCAN_load(%rip), %esi
	movl	-44(%rbp), %edx
	callq	stbi__parse_png_file@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.4:
	movq	-16(%rbp), %rax
	cmpl	$8, (%rax)
	jge	.LBB0_6
# %bb.5:
	movq	-56(%rbp), %rax
	movl	$8, (%rax)
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	cmpl	$0, -44(%rbp)
	je	.LBB0_15
# %bb.8:
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	(%rcx), %eax
	je	.LBB0_15
# %bb.9:
	movq	-56(%rbp), %rax
	cmpl	$8, (%rax)
	jne	.LBB0_11
# %bb.10:
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %esi
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %r8d
	callq	stbi__convert_format@PLT
	movq	%rax, -64(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %esi
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %r8d
	callq	stbi__convert_format16@PLT
	movq	%rax, -64(%rbp)
.LBB0_12:
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_14
# %bb.13:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_17
# %bb.16:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	STBI_FREE@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STBI_FREE@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	STBI_FREE@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_19:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad req_comp"
.L.str.1:
	.asciz	"Internal error"
	.bss
	.globl	STBI__SCAN_load
	.p2align	2
STBI__SCAN_load:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__do_png
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__parse_png_file
	.addrsig_sym stbi__convert_format
	.addrsig_sym stbi__convert_format16
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI__SCAN_load