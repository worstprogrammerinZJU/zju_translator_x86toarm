	.text
	.globl	parse_shortcut                  # -- Begin function parse_shortcut
	.p2align	4, 0x90
parse_shortcut:                         # @parse_shortcut
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -104(%rbp)                # 8-byte Spill
	movq	%rdi, -96(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	option_find@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_2:
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -64(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movq	16(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movq	24(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	16(%rax), %ecx
	movl	12(%rax), %r8d
	movl	8(%rax), %r9d
	movl	-36(%rbp), %r11d
	movl	-40(%rbp), %r10d
	movl	-44(%rbp), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	make_shortcut_layer@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, %ecx
	movq	-104(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float_quiet@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$1, %edx
	callq	option_find_float_quiet@PLT
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rdx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, (%rcx)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"from"
.L.str.1:
	.asciz	"activation"
.L.str.2:
	.asciz	"linear"
.L.str.3:
	.asciz	"alpha"
.L.str.4:
	.asciz	"beta"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atoi
	.addrsig_sym make_shortcut_layer
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym option_find_float_quiet