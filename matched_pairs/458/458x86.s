	.text
	.p2align	4, 0x90                         # -- Begin function stringize
stringize:                              # @stringize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	buf_len@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	tok2s@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	buf_write@PLT
	movq	-8(%rbp), %rdi
	callq	copy_token@PLT
	movq	%rax, -48(%rbp)
	movl	TSTRING(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-24(%rbp), %rdi
	callq	buf_body@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rdi
	callq	buf_len@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	ENC_NONE(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
.L.str.1:
	.asciz	"%s"
	.bss
	.globl	TSTRING
	.p2align	2
TSTRING:
	.long	0                               # 0x0
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stringize
	.addrsig_sym make_buffer
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym buf_len
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym buf_write
	.addrsig_sym copy_token
	.addrsig_sym buf_body
	.addrsig_sym TSTRING
	.addrsig_sym ENC_NONE