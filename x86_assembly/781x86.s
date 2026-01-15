	.text
	.p2align	4, 0x90                         # -- Begin function _initPin
_initPin:                               # @_initPin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, periph_enabled(%rip)
	jne	.LBB0_2
# %bb.1:
	movl	$1, periph_enabled(%rip)
	movl	PERIPH_RMT_MODULE(%rip), %edi
	callq	periph_module_enable@PLT
.LBB0_2:
	cmpl	$0, -12(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %edi
	movl	OUTPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-4(%rbp), %edi
	movq	RMT_SIG_OUT0_IDX(%rip), %rsi
	movslq	-8(%rbp), %rax
	addq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	pinMatrixOutAttach@PLT
	jmp	.LBB0_5
.LBB0_4:
	movl	-4(%rbp), %edi
	movl	INPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-4(%rbp), %edi
	movq	RMT_SIG_IN0_IDX(%rip), %rsi
	movslq	-8(%rbp), %rax
	addq	%rax, %rsi
	xorl	%edx, %edx
	callq	pinMatrixInAttach@PLT
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	periph_enabled
	.p2align	2
periph_enabled:
	.long	0                               # 0x0
	.globl	PERIPH_RMT_MODULE
	.p2align	2
PERIPH_RMT_MODULE:
	.long	0                               # 0x0
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.long	0                               # 0x0
	.globl	RMT_SIG_OUT0_IDX
	.p2align	3
RMT_SIG_OUT0_IDX:
	.quad	0                               # 0x0
	.globl	INPUT
	.p2align	2
INPUT:
	.long	0                               # 0x0
	.globl	RMT_SIG_IN0_IDX
	.p2align	3
RMT_SIG_IN0_IDX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _initPin
	.addrsig_sym periph_module_enable
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym pinMatrixInAttach
	.addrsig_sym periph_enabled
	.addrsig_sym PERIPH_RMT_MODULE
	.addrsig_sym OUTPUT
	.addrsig_sym RMT_SIG_OUT0_IDX
	.addrsig_sym INPUT
	.addrsig_sym RMT_SIG_IN0_IDX