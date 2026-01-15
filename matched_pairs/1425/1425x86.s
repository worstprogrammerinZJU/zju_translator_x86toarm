	.text
	.p2align	4, 0x90                         # -- Begin function read_char
read_char:                              # @read_char
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -16(%rbp)
	cmpl	$92, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	read_escaped_char@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -16(%rbp)
	cmpl	$39, -16(%rbp)
	je	.LBB0_5
# %bb.4:
	movl	pos(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	errorp@PLT
.LBB0_5:
	movl	-12(%rbp), %eax
	cmpl	ENC_NONE(%rip), %eax
	jne	.LBB0_7
# %bb.6:
	movl	-20(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movsbl	%al, %edi
	movl	-12(%rbp), %esi
	callq	make_char@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	make_char@PLT
	movq	%rax, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	pos
	.p2align	2
pos:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated char"
	.bss
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_char
	.addrsig_sym readc
	.addrsig_sym read_escaped_char
	.addrsig_sym errorp
	.addrsig_sym make_char
	.addrsig_sym pos
	.addrsig_sym ENC_NONE