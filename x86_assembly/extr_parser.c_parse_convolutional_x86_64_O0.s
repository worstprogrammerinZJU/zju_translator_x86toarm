	.text
	.globl	parse_convolutional             # -- Begin function parse_convolutional
	.p2align	4, 0x90
parse_convolutional:                    # @parse_convolutional
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -80(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int_quiet@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -88(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-72(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
.LBB0_2:
	movq	-64(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	option_find_str@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	get_activation@PLT
	movl	%eax, %ecx
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -100(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movl	12(%rax), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB0_5
# %bb.3:
	cmpl	$0, -112(%rbp)
	je	.LBB0_5
# %bb.4:
	cmpl	$0, -116(%rbp)
	jne	.LBB0_6
.LBB0_5:
	leaq	.L.str.8(%rip), %rdi
	callq	error@PLT
.LBB0_6:
	movq	-64(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, -140(%rbp)                # 4-byte Spill
	callq	option_find_int_quiet@PLT
	movl	-140(%rbp), %edx                # 4-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -120(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	option_find_int_quiet@PLT
	movl	-140(%rbp), %edx                # 4-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -124(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	option_find_int_quiet@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -128(%rbp)
	movl	-104(%rbp), %edi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	%ecx, -144(%rbp)                # 4-byte Spill
	movl	-68(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	-72(%rbp), %r10d
	movl	-76(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movl	-100(%rbp), %r14d
	movl	-120(%rbp), %r15d
	movl	-124(%rbp), %r12d
	movl	-128(%rbp), %r13d
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	%rsp, %rax
	movl	%ecx, 56(%rax)
	movl	-144(%rbp), %ecx                # 4-byte Reload
	movl	%r13d, 48(%rax)
	movl	%r12d, 40(%rax)
	movl	%r15d, 32(%rax)
	movl	%r14d, 24(%rax)
	movl	%ebx, 16(%rax)
	movl	%r11d, 8(%rax)
	movl	%r10d, (%rax)
	callq	make_convolutional_layer@PLT
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	-140(%rbp), %edx                # 4-byte Reload
	movl	%ecx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	option_find_int_quiet@PLT
	movl	-140(%rbp), %edx                # 4-byte Reload
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	option_find_float_quiet@PLT
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rdx
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filters"
.L.str.1:
	.asciz	"size"
.L.str.2:
	.asciz	"stride"
.L.str.3:
	.asciz	"pad"
.L.str.4:
	.asciz	"padding"
.L.str.5:
	.asciz	"groups"
.L.str.6:
	.asciz	"activation"
.L.str.7:
	.asciz	"logistic"
.L.str.8:
	.asciz	"Layer before convolutional layer must output image."
.L.str.9:
	.asciz	"batch_normalize"
.L.str.10:
	.asciz	"binary"
.L.str.11:
	.asciz	"xnor"
.L.str.12:
	.asciz	"flipped"
.L.str.13:
	.asciz	"dot"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_str
	.addrsig_sym get_activation
	.addrsig_sym error
	.addrsig_sym make_convolutional_layer
	.addrsig_sym option_find_float_quiet