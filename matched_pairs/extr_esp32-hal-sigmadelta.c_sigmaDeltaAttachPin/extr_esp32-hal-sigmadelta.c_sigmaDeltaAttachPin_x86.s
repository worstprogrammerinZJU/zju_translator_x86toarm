	.text
	.globl	sigmaDeltaAttachPin             # -- Begin function sigmaDeltaAttachPin
	.p2align	4, 0x90
sigmaDeltaAttachPin:                    # @sigmaDeltaAttachPin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$7, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movl	-4(%rbp), %edi
	movl	OUTPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-4(%rbp), %edi
	movq	GPIO_SD0_OUT_IDX(%rip), %rsi
	movslq	-8(%rbp), %rax
	addq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	pinMatrixOutAttach@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.long	0                               # 0x0
	.globl	GPIO_SD0_OUT_IDX
	.p2align	3
GPIO_SD0_OUT_IDX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym OUTPUT
	.addrsig_sym GPIO_SD0_OUT_IDX