	.text
	.globl	spiFrequencyToClockDiv          # -- Begin function spiFrequencyToClockDiv
	.p2align	4, 0x90
spiFrequencyToClockDiv:                 # @spiFrequencyToClockDiv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	getApbFrequency@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB0_2
# %bb.1:
	movq	SPI_CLK_EQU_SYSCLK(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_2:
	movq	.L__const.spiFrequencyToClockDiv.minFreqReg(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	.L__const.spiFrequencyToClockDiv.minFreqReg+8(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	.L__const.spiFrequencyToClockDiv.minFreqReg+16(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	.L__const.spiFrequencyToClockDiv.minFreqReg+24(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-56(%rbp), %rdi
	callq	ClkRegToFreq@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB0_4
# %bb.3:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
.LBB0_4:
	movl	$1, -68(%rbp)
	leaq	-104(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movl	$0, -108(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$63, -68(%rbp)
	jg	.LBB0_25
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movq	$-2, -160(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	cmpq	$1, %rax
	jg	.LBB0_22
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movl	-128(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	cqto
	idivq	%rcx
	cqto
	idivq	-16(%rbp)
	subq	$1, %rax
	addq	-160(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -152(%rbp)
	cmpl	$8191, -152(%rbp)               # imm = 0x1FFF
	jle	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	movl	$8191, -124(%rbp)               # imm = 0x1FFF
	jmp	.LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	cmpl	$0, -152(%rbp)
	jg	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=2
	movl	$0, -124(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-152(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -120(%rbp)
	leaq	-144(%rbp), %rdi
	callq	ClkRegToFreq@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	leaq	-104(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movl	$32, %edx
	callq	memcpy@PLT
	jmp	.LBB0_22
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jge	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-16(%rbp), %rax
	movslq	-148(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edi
	callq	abs@PLT
	movq	%rax, -168(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movslq	-108(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edi
	callq	abs@PLT
	movq	%rax, %rcx
	movq	-168(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-148(%rbp), %eax
	movl	%eax, -108(%rbp)
	leaq	-104(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movl	$32, %edx
	callq	memcpy@PLT
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_7
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jne	.LBB0_24
# %bb.23:
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_5
.LBB0_25:
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_26:
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SPI_CLK_EQU_SYSCLK
	.p2align	3
SPI_CLK_EQU_SYSCLK:
	.quad	0                               # 0x0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3
.L__const.spiFrequencyToClockDiv.minFreqReg:
	.long	2147479552                      # 0x7ffff000
	.zero	4
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getApbFrequency
	.addrsig_sym ClkRegToFreq
	.addrsig_sym memcpy
	.addrsig_sym abs
	.addrsig_sym SPI_CLK_EQU_SYSCLK