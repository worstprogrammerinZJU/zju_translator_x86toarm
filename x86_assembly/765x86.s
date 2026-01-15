	.text
	.globl	ledcAttachPin                   # -- Begin function ledcAttachPin
	.p2align	4, 0x90
ledcAttachPin:                          # @ledcAttachPin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$15, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movl	-4(%rbp), %edi
	movl	OUTPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movq	LEDC_LS_SIG_OUT0_IDX(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movq	LEDC_HS_SIG_OUT0_IDX(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB0_5:
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	addq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	pinMatrixOutAttach@PLT
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.long	0                               # 0x0
	.globl	LEDC_LS_SIG_OUT0_IDX
	.p2align	3
LEDC_LS_SIG_OUT0_IDX:
	.quad	0                               # 0x0
	.globl	LEDC_HS_SIG_OUT0_IDX
	.p2align	3
LEDC_HS_SIG_OUT0_IDX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym OUTPUT
	.addrsig_sym LEDC_LS_SIG_OUT0_IDX
	.addrsig_sym LEDC_HS_SIG_OUT0_IDX