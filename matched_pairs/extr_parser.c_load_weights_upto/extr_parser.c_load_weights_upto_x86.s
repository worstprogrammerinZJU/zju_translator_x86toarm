	.text
	.globl	load_weights_upto               # -- Begin function load_weights_upto
	.p2align	4, 0x90
load_weights_upto:                      # @load_weights_upto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$848, %rsp                      # imm = 0x350
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	stdout(%rip), %edi
	callq	fflush@PLT
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
	movq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread@PLT
	movq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread@PLT
	movq	-32(%rbp), %rcx
	leaq	-44(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread@PLT
	imull	$10, -36(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	$2, %eax
	jl	.LBB0_6
# %bb.3:
	cmpl	$1000, -36(%rbp)                # imm = 0x3E8
	jge	.LBB0_6
# %bb.4:
	cmpl	$1000, -40(%rbp)                # imm = 0x3E8
	jge	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movl	$8, %esi
	movl	$1, %edx
	callq	fread@PLT
	jmp	.LBB0_7
.LBB0_6:
	movl	$0, -48(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread@PLT
	movl	-48(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	movb	$1, %al
	cmpl	$1000, -36(%rbp)                # imm = 0x3E8
	movb	%al, -289(%rbp)                 # 1-byte Spill
	jg	.LBB0_9
# %bb.8:
	cmpl	$1000, -40(%rbp)                # imm = 0x3E8
	setg	%al
	movb	%al, -289(%rbp)                 # 1-byte Spill
.LBB0_9:
	movb	-289(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %ecx
	movq	-8(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	16(%rdx), %ecx
	movb	%al, -290(%rbp)                 # 1-byte Spill
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	setl	%al
	movb	%al, -290(%rbp)                 # 1-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	movb	-290(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_13
	jmp	.LBB0_34
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movslq	-56(%rbp), %rax
	imulq	$224, %rax, %rax
	addq	%rax, %rsi
	leaq	-280(%rbp), %rdi
	movl	$224, %edx
	callq	memcpy@PLT
	cmpq	$0, -64(%rbp)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_33
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	CONVOLUTIONAL(%rip), %rax
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	DECONVOLUTIONAL(%rip), %rax
	jne	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-280(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	-304(%rbp), %rdi                # 8-byte Reload
	callq	load_convolutional_weights@PLT
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	CONNECTED(%rip), %rax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -316(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-280(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movl	-316(%rbp), %esi                # 4-byte Reload
	movq	-312(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	BATCHNORM(%rip), %rax
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	leaq	-280(%rbp), %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	-328(%rbp), %rdi                # 8-byte Reload
	callq	load_batchnorm_weights@PLT
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	CRNN(%rip), %rax
	jne	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-352(%rbp), %rdi                # 8-byte Reload
	callq	load_convolutional_weights@PLT
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-344(%rbp), %rdi                # 8-byte Reload
	callq	load_convolutional_weights@PLT
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movq	-336(%rbp), %rdi                # 8-byte Reload
	callq	load_convolutional_weights@PLT
.LBB0_24:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	RNN(%rip), %rax
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -396(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-396(%rbp), %esi                # 4-byte Reload
	movq	-392(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -380(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-380(%rbp), %esi                # 4-byte Reload
	movq	-376(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -364(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-364(%rbp), %esi                # 4-byte Reload
	movq	-360(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	LSTM(%rip), %rax
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -520(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -524(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-524(%rbp), %esi                # 4-byte Reload
	movq	-520(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-104(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -508(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-508(%rbp), %esi                # 4-byte Reload
	movq	-504(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -492(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-492(%rbp), %esi                # 4-byte Reload
	movq	-488(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-120(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -476(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-476(%rbp), %esi                # 4-byte Reload
	movq	-472(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -460(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-460(%rbp), %esi                # 4-byte Reload
	movq	-456(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-136(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -444(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-444(%rbp), %esi                # 4-byte Reload
	movq	-440(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -428(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-428(%rbp), %esi                # 4-byte Reload
	movq	-424(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -412(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-412(%rbp), %esi                # 4-byte Reload
	movq	-408(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	GRU(%rip), %rax
	jne	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-160(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -616(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -620(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-620(%rbp), %esi                # 4-byte Reload
	movq	-616(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-168(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -604(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-604(%rbp), %esi                # 4-byte Reload
	movq	-600(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-176(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -588(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-588(%rbp), %esi                # 4-byte Reload
	movq	-584(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-184(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -568(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -572(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-572(%rbp), %esi                # 4-byte Reload
	movq	-568(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-192(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -552(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -556(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-556(%rbp), %esi                # 4-byte Reload
	movq	-552(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
	movq	-200(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -536(%rbp)                # 8-byte Spill
	movl	-52(%rbp), %eax
	movl	%eax, -540(%rbp)                # 4-byte Spill
	movq	%rsp, %rdi
	movl	$28, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	movl	-540(%rbp), %esi                # 4-byte Reload
	movq	-536(%rbp), %rdi                # 8-byte Reload
	callq	load_connected_weights@PLT
.LBB0_30:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-280(%rbp), %rax
	cmpq	LOCAL(%rip), %rax
	jne	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-272(%rbp), %eax
	imull	-268(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-264(%rbp), %eax
	imull	-264(%rbp), %eax
	imull	-260(%rbp), %eax
	imull	-256(%rbp), %eax
	imull	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	movq	-248(%rbp), %rdi
	movl	-240(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
	movq	-232(%rbp), %rdi
	movl	-288(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	callq	fread@PLT
.LBB0_32:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_10
.LBB0_34:
	movl	stderr(%rip), %edi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movq	-32(%rbp), %rdi
	callq	fclose@PLT
	addq	$848, %rsp                      # imm = 0x350
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
	.asciz	"Loading weights from %s..."
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rb"
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
	.globl	CRNN
	.p2align	3
CRNN:
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
	.globl	LOCAL
	.p2align	3
LOCAL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Done!\n"
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym fflush
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fread
	.addrsig_sym load_convolutional_weights
	.addrsig_sym load_connected_weights
	.addrsig_sym load_batchnorm_weights
	.addrsig_sym fclose
	.addrsig_sym stderr
	.addrsig_sym stdout
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym CONNECTED
	.addrsig_sym BATCHNORM
	.addrsig_sym CRNN
	.addrsig_sym RNN
	.addrsig_sym LSTM
	.addrsig_sym GRU
	.addrsig_sym LOCAL