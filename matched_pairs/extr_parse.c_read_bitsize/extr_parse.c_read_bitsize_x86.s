	.text
	.p2align	4, 0x90                         # -- Begin function read_bitsize
read_bitsize:                           # @read_bitsize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_inttype@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	ty2s@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_BOOL(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	$1, %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	shll	$3, %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB0_7
# %bb.6:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_8
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ty2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movslq	%eax, %rdx
	movl	-28(%rbp), %ecx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_8:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_11
# %bb.9:
	cmpq	$0, -8(%rbp)
	je	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_11:
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-integer type cannot be a bitfield: %s"
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid bitfield size for %s: %d"
.L.str.2:
	.asciz	"zero-width bitfield needs to be unnamed: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_bitsize
	.addrsig_sym is_inttype
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym peek
	.addrsig_sym read_intexpr
	.addrsig_sym errort
	.addrsig_sym KIND_BOOL