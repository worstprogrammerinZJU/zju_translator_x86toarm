	.text
	.globl	string_to_layer_type            # -- Begin function string_to_layer_type
	.p2align	4, 0x90
string_to_layer_type:                   # @string_to_layer_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	SHORTCUT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movl	CROP(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movl	COST(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_6:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movl	DETECTION(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_8:
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movl	REGION(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_10:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movl	YOLO(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_12:
	movq	-16(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:
	movl	ISEG(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_14:
	movq	-16(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:
	movl	LOCAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_16:
	movq	-16(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_19
.LBB0_18:
	movl	CONVOLUTIONAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_19:
	movq	-16(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.20:
	movq	-16(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_22
.LBB0_21:
	movl	DECONVOLUTIONAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_22:
	movq	-16(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_24
# %bb.23:
	movl	ACTIVE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_24:
	movq	-16(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.25:
	movl	LOGXENT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_26:
	movq	-16(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_28
# %bb.27:
	movl	L2NORM(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_28:
	movq	-16(%rbp), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_30
# %bb.29:
	movq	-16(%rbp), %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_31
.LBB0_30:
	movl	NETWORK(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_31:
	movq	-16(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_33
# %bb.32:
	movl	CRNN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_33:
	movq	-16(%rbp), %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_35
# %bb.34:
	movl	GRU(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_35:
	movq	-16(%rbp), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_37
# %bb.36:
	movl	LSTM(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_37:
	movq	-16(%rbp), %rdi
	leaq	.L.str.20(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_39
# %bb.38:
	movl	RNN(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_39:
	movq	-16(%rbp), %rdi
	leaq	.L.str.21(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_41
# %bb.40:
	movq	-16(%rbp), %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_42
.LBB0_41:
	movl	CONNECTED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_42:
	movq	-16(%rbp), %rdi
	leaq	.L.str.23(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_44
# %bb.43:
	movq	-16(%rbp), %rdi
	leaq	.L.str.24(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_45
.LBB0_44:
	movl	MAXPOOL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_45:
	movq	-16(%rbp), %rdi
	leaq	.L.str.25(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_47
# %bb.46:
	movl	REORG(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_47:
	movq	-16(%rbp), %rdi
	leaq	.L.str.26(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_49
# %bb.48:
	movq	-16(%rbp), %rdi
	leaq	.L.str.27(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_50
.LBB0_49:
	movl	AVGPOOL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_50:
	movq	-16(%rbp), %rdi
	leaq	.L.str.28(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_52
# %bb.51:
	movl	DROPOUT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_52:
	movq	-16(%rbp), %rdi
	leaq	.L.str.29(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_54
# %bb.53:
	movq	-16(%rbp), %rdi
	leaq	.L.str.30(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_55
.LBB0_54:
	movl	NORMALIZATION(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_55:
	movq	-16(%rbp), %rdi
	leaq	.L.str.31(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_57
# %bb.56:
	movl	BATCHNORM(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_57:
	movq	-16(%rbp), %rdi
	leaq	.L.str.32(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_59
# %bb.58:
	movq	-16(%rbp), %rdi
	leaq	.L.str.33(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_60
.LBB0_59:
	movl	SOFTMAX(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_60:
	movq	-16(%rbp), %rdi
	leaq	.L.str.34(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_62
# %bb.61:
	movl	ROUTE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_62:
	movq	-16(%rbp), %rdi
	leaq	.L.str.35(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_64
# %bb.63:
	movl	UPSAMPLE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_65
.LBB0_64:
	movl	BLANK(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_65:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[shortcut]"
	.bss
	.globl	SHORTCUT
	.p2align	2
SHORTCUT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[crop]"
	.bss
	.globl	CROP
	.p2align	2
CROP:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"[cost]"
	.bss
	.globl	COST
	.p2align	2
COST:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"[detection]"
	.bss
	.globl	DETECTION
	.p2align	2
DETECTION:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"[region]"
	.bss
	.globl	REGION
	.p2align	2
REGION:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"[yolo]"
	.bss
	.globl	YOLO
	.p2align	2
YOLO:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"[iseg]"
	.bss
	.globl	ISEG
	.p2align	2
ISEG:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"[local]"
	.bss
	.globl	LOCAL
	.p2align	2
LOCAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"[conv]"
.L.str.9:
	.asciz	"[convolutional]"
	.bss
	.globl	CONVOLUTIONAL
	.p2align	2
CONVOLUTIONAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"[deconv]"
.L.str.11:
	.asciz	"[deconvolutional]"
	.bss
	.globl	DECONVOLUTIONAL
	.p2align	2
DECONVOLUTIONAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"[activation]"
	.bss
	.globl	ACTIVE
	.p2align	2
ACTIVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"[logistic]"
	.bss
	.globl	LOGXENT
	.p2align	2
LOGXENT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"[l2norm]"
	.bss
	.globl	L2NORM
	.p2align	2
L2NORM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"[net]"
.L.str.16:
	.asciz	"[network]"
	.bss
	.globl	NETWORK
	.p2align	2
NETWORK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"[crnn]"
	.bss
	.globl	CRNN
	.p2align	2
CRNN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"[gru]"
	.bss
	.globl	GRU
	.p2align	2
GRU:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"[lstm]"
	.bss
	.globl	LSTM
	.p2align	2
LSTM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"[rnn]"
	.bss
	.globl	RNN
	.p2align	2
RNN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"[conn]"
.L.str.22:
	.asciz	"[connected]"
	.bss
	.globl	CONNECTED
	.p2align	2
CONNECTED:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"[max]"
.L.str.24:
	.asciz	"[maxpool]"
	.bss
	.globl	MAXPOOL
	.p2align	2
MAXPOOL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"[reorg]"
	.bss
	.globl	REORG
	.p2align	2
REORG:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"[avg]"
.L.str.27:
	.asciz	"[avgpool]"
	.bss
	.globl	AVGPOOL
	.p2align	2
AVGPOOL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"[dropout]"
	.bss
	.globl	DROPOUT
	.p2align	2
DROPOUT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"[lrn]"
.L.str.30:
	.asciz	"[normalization]"
	.bss
	.globl	NORMALIZATION
	.p2align	2
NORMALIZATION:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"[batchnorm]"
	.bss
	.globl	BATCHNORM
	.p2align	2
BATCHNORM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"[soft]"
.L.str.33:
	.asciz	"[softmax]"
	.bss
	.globl	SOFTMAX
	.p2align	2
SOFTMAX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"[route]"
	.bss
	.globl	ROUTE
	.p2align	2
ROUTE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"[upsample]"
	.bss
	.globl	UPSAMPLE
	.p2align	2
UPSAMPLE:
	.long	0                               # 0x0
	.globl	BLANK
	.p2align	2
BLANK:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym SHORTCUT
	.addrsig_sym CROP
	.addrsig_sym COST
	.addrsig_sym DETECTION
	.addrsig_sym REGION
	.addrsig_sym YOLO
	.addrsig_sym ISEG
	.addrsig_sym LOCAL
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym ACTIVE
	.addrsig_sym LOGXENT
	.addrsig_sym L2NORM
	.addrsig_sym NETWORK
	.addrsig_sym CRNN
	.addrsig_sym GRU
	.addrsig_sym LSTM
	.addrsig_sym RNN
	.addrsig_sym CONNECTED
	.addrsig_sym MAXPOOL
	.addrsig_sym REORG
	.addrsig_sym AVGPOOL
	.addrsig_sym DROPOUT
	.addrsig_sym NORMALIZATION
	.addrsig_sym BATCHNORM
	.addrsig_sym SOFTMAX
	.addrsig_sym ROUTE
	.addrsig_sym UPSAMPLE
	.addrsig_sym BLANK