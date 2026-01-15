	.text
	.p2align	4, 0x90                         # -- Begin function stream_check_truncation
stream_check_truncation:                # @stream_check_truncation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, (%rcx)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jg	.LBB0_5
# %bb.1:
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpq	JV_KIND_NUMBER(%rip), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_5
# %bb.2:
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpq	JV_KIND_TRUE(%rip), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_5
# %bb.3:
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpq	JV_KIND_FALSE(%rip), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	cmpq	JV_KIND_NULL(%rip), %rax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_5:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.quad	0                               # 0x0
	.globl	JV_KIND_FALSE
	.p2align	3
JV_KIND_FALSE:
	.quad	0                               # 0x0
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_check_truncation
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_TRUE
	.addrsig_sym JV_KIND_FALSE
	.addrsig_sym JV_KIND_NULL