	.text
	.globl	save_weights_upto               # -- Begin function save_weights_upto
	.p2align	4, 0x90
save_weights_upto:                      # @save_weights_upto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$704, %rsp                      # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	$0, -36(%rbp)
	movl	$2, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	-32(%rbp), %rcx
	leaq	-44(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$0, -48(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %ecx
	movq	-8(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	16(%rdx), %ecx
	movb	%al, -281(%rbp)                 # 1-byte Spill
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%al
	movb	%al, -281(%rbp)                 # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-281(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_27
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movslq	-48(%rbp), %rax
	imulq	$224, %rax, %rax
	addq	%rax, %rsi
	leaq	-272(%rbp), %rdi
	movl	$224, %edx
	callq	memcpy@PLT
	cmpq	$0, -56(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_26
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	CONVOLUTIONAL(%rip), %rax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	DECONVOLUTIONAL(%rip), %rax
	jne	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-272(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	-296(%rbp), %rdi                # 8-byte Reload
	callq	save_convolutional_weights@PLT
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	CONNECTED(%rip), %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-272(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	-304(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	BATCHNORM(%rip), %rax
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-272(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	-312(%rbp), %rdi                # 8-byte Reload
	callq	save_batchnorm_weights@PLT
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	RNN(%rip), %rax
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-200(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-336(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-328(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-216(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-320(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	LSTM(%rip), %rax
	jne	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-400(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-392(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-384(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-376(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-368(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-104(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-360(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-352(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-120(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-344(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	GRU(%rip), %rax
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-448(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-136(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-440(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-432(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-424(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-160(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-416(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
	movq	-168(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-408(%rbp), %rdi                # 8-byte Reload
	callq	save_connected_weights@PLT
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	CRNN(%rip), %rax
	jne	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-200(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-472(%rbp), %rdi                # 8-byte Reload
	callq	save_convolutional_weights@PLT
	movq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-464(%rbp), %rdi                # 8-byte Reload
	callq	save_convolutional_weights@PLT
	movq	-216(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-456(%rbp), %rdi                # 8-byte Reload
	callq	save_convolutional_weights@PLT
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-272(%rbp), %rax
	cmpq	LOCAL(%rip), %rax
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-264(%rbp), %eax
	imull	-260(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	-256(%rbp), %eax
	imull	-256(%rbp), %eax
	imull	-252(%rbp), %eax
	imull	-248(%rbp), %eax
	imull	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
	movq	-224(%rbp), %rdi
	movl	-280(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_27:
	movq	-32(%rbp), %rdi
	callq	fclose@PLT
	addq	$704, %rsp                      # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Saving weights to %s\n"
.L.str.1:
	.asciz	"wb"
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.quad	0                               # 0x0
	.globl	DECONVOLUTIONAL
	.p2align	3
DECONVOLUTIONAL:
	.quad	0                               # 0x0
	.globl	CONNECTED
	.p2align	3
CONNECTED:
	.quad	0                               # 0x0
	.globl	BATCHNORM
	.p2align	3
BATCHNORM:
	.quad	0                               # 0x0
	.globl	RNN
	.p2align	3
RNN:
	.quad	0                               # 0x0
	.globl	LSTM
	.p2align	3
LSTM:
	.quad	0                               # 0x0
	.globl	GRU
	.p2align	3
GRU:
	.quad	0                               # 0x0
	.globl	CRNN
	.p2align	3
CRNN:
	.quad	0                               # 0x0
	.globl	LOCAL
	.p2align	3
LOCAL:
	.quad	0                               # 0x0
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fwrite
	.addrsig_sym save_convolutional_weights
	.addrsig_sym save_connected_weights
	.addrsig_sym save_batchnorm_weights
	.addrsig_sym fclose
	.addrsig_sym stderr
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym CONNECTED
	.addrsig_sym BATCHNORM
	.addrsig_sym RNN
	.addrsig_sym LSTM
	.addrsig_sym GRU
	.addrsig_sym CRNN
	.addrsig_sym LOCAL