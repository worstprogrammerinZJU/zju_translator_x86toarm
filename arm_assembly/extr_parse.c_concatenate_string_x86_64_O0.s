	.text
	.p2align	4, 0x90                         # -- Begin function concatenate_string
concatenate_string:                     # @concatenate_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	callq	buf_append@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_token@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	16(%rax), %esi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	subq	$1, %rdx
	callq	buf_append@PLT
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	cmpl	ENC_NONE(%rip), %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	ENC_NONE(%rip), %eax
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	tok2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	ENC_NONE(%rip), %eax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_9:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-24(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rdi
	callq	buf_len@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unsupported non-standard concatenation of string literals: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concatenate_string
	.addrsig_sym make_buffer
	.addrsig_sym buf_append
	.addrsig_sym peek
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym buf_write
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym TSTRING
	.addrsig_sym ENC_NONE