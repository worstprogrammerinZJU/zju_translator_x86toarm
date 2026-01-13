	.text
	.globl	spiStartBus                     # -- Begin function spiStartBus
	.p2align	4, 0x90
spiStartBus:                            # @spiStartBus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movq	_spi_bus_array(%rip), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_6
# %bb.3:
	movb	$0, %al
	callq	xSemaphoreCreateMutex@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_5
# %bb.4:
	movq	$0, -8(%rbp)
	jmp	.LBB0_17
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movl	-12(%rbp), %eax
	cmpl	HSPI(%rip), %eax
	jne	.LBB0_8
# %bb.7:
	movl	DPORT_PERIP_CLK_EN_REG(%rip), %edi
	movl	DPORT_SPI_CLK_EN(%rip), %esi
	callq	DPORT_SET_PERI_REG_MASK@PLT
	movl	DPORT_PERIP_RST_EN_REG(%rip), %edi
	movl	DPORT_SPI_RST(%rip), %esi
	callq	DPORT_CLEAR_PERI_REG_MASK@PLT
	jmp	.LBB0_12
.LBB0_8:
	movl	-12(%rbp), %eax
	cmpl	VSPI(%rip), %eax
	jne	.LBB0_10
# %bb.9:
	movl	DPORT_PERIP_CLK_EN_REG(%rip), %edi
	movl	DPORT_SPI_CLK_EN_2(%rip), %esi
	callq	DPORT_SET_PERI_REG_MASK@PLT
	movl	DPORT_PERIP_RST_EN_REG(%rip), %edi
	movl	DPORT_SPI_RST_2(%rip), %esi
	callq	DPORT_CLEAR_PERI_REG_MASK@PLT
	jmp	.LBB0_11
.LBB0_10:
	movl	DPORT_PERIP_CLK_EN_REG(%rip), %edi
	movl	DPORT_SPI_CLK_EN_1(%rip), %esi
	callq	DPORT_SET_PERI_REG_MASK@PLT
	movl	DPORT_PERIP_RST_EN_REG(%rip), %edi
	movl	DPORT_SPI_RST_1(%rip), %esi
	callq	DPORT_CLEAR_PERI_REG_MASK@PLT
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-32(%rbp), %rdi
	callq	spiStopBus@PLT
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	spiSetDataMode@PLT
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	spiSetBitOrder@PLT
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	spiSetClockDiv@PLT
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 12(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 16(%rax)
	movl	$0, -36(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -36(%rbp)
	jge	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
	movq	-32(%rbp), %rdi
	movl	_on_apb_change(%rip), %esi
	callq	addApbChangeCallback@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_17:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	_spi_bus_array
	.p2align	3
_spi_bus_array:
	.quad	0
	.globl	HSPI
	.p2align	2
HSPI:
	.long	0                               # 0x0
	.globl	DPORT_PERIP_CLK_EN_REG
	.p2align	2
DPORT_PERIP_CLK_EN_REG:
	.long	0                               # 0x0
	.globl	DPORT_SPI_CLK_EN
	.p2align	2
DPORT_SPI_CLK_EN:
	.long	0                               # 0x0
	.globl	DPORT_PERIP_RST_EN_REG
	.p2align	2
DPORT_PERIP_RST_EN_REG:
	.long	0                               # 0x0
	.globl	DPORT_SPI_RST
	.p2align	2
DPORT_SPI_RST:
	.long	0                               # 0x0
	.globl	VSPI
	.p2align	2
VSPI:
	.long	0                               # 0x0
	.globl	DPORT_SPI_CLK_EN_2
	.p2align	2
DPORT_SPI_CLK_EN_2:
	.long	0                               # 0x0
	.globl	DPORT_SPI_RST_2
	.p2align	2
DPORT_SPI_RST_2:
	.long	0                               # 0x0
	.globl	DPORT_SPI_CLK_EN_1
	.p2align	2
DPORT_SPI_CLK_EN_1:
	.long	0                               # 0x0
	.globl	DPORT_SPI_RST_1
	.p2align	2
DPORT_SPI_RST_1:
	.long	0                               # 0x0
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym DPORT_SET_PERI_REG_MASK
	.addrsig_sym DPORT_CLEAR_PERI_REG_MASK
	.addrsig_sym spiStopBus
	.addrsig_sym spiSetDataMode
	.addrsig_sym spiSetBitOrder
	.addrsig_sym spiSetClockDiv
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym addApbChangeCallback
	.addrsig_sym _spi_bus_array
	.addrsig_sym HSPI
	.addrsig_sym DPORT_PERIP_CLK_EN_REG
	.addrsig_sym DPORT_SPI_CLK_EN
	.addrsig_sym DPORT_PERIP_RST_EN_REG
	.addrsig_sym DPORT_SPI_RST
	.addrsig_sym VSPI
	.addrsig_sym DPORT_SPI_CLK_EN_2
	.addrsig_sym DPORT_SPI_RST_2
	.addrsig_sym DPORT_SPI_CLK_EN_1
	.addrsig_sym DPORT_SPI_RST_1
	.addrsig_sym _on_apb_change