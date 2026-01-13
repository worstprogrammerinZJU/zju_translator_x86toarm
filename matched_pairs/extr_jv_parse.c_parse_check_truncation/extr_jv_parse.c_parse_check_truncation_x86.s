	.text
	.p2align	4, 0x90                         # -- Begin function parse_check_truncation
parse_check_truncation:                 # @parse_check_truncation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	andl	JV_PARSE_SEQ(%rip), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, 28(%rcx)
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_6
# %bb.2:
	movq	-8(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, 8(%rcx)
	movb	%al, -10(%rbp)                  # 1-byte Spill
	jg	.LBB0_5
# %bb.3:
	movq	-8(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, 16(%rcx)
	movb	%al, -10(%rbp)                  # 1-byte Spill
	jg	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	sete	%al
	movb	%al, -10(%rbp)                  # 1-byte Spill
.LBB0_5:
	movb	-10(%rbp), %al                  # 1-byte Reload
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_6:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.long	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_check_truncation
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_KIND_NUMBER