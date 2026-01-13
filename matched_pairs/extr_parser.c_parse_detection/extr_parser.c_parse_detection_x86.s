	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function parse_detection
.LCPI0_0:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	parse_detection
	.p2align	4, 0x90
parse_detection:                        # @parse_detection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdx, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$1, %edx
	callq	option_find_int@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$7, %edx
	callq	option_find_int@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movl	-28(%rbp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	make_detection_layer@PLT
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$90, %edx
	callq	option_find_int_quiet@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	option_find_float@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rdi
	leaq	.L.str.15(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_int_quiet@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, (%rdi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coords"
.L.str.1:
	.asciz	"classes"
.L.str.2:
	.asciz	"rescore"
.L.str.3:
	.asciz	"num"
.L.str.4:
	.asciz	"side"
.L.str.5:
	.asciz	"softmax"
.L.str.6:
	.asciz	"sqrt"
.L.str.7:
	.asciz	"max"
.L.str.8:
	.asciz	"coord_scale"
.L.str.9:
	.asciz	"forced"
.L.str.10:
	.asciz	"object_scale"
.L.str.11:
	.asciz	"noobject_scale"
.L.str.12:
	.asciz	"class_scale"
.L.str.13:
	.asciz	"jitter"
.L.str.14:
	.asciz	"random"
.L.str.15:
	.asciz	"reorg"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find_int
	.addrsig_sym make_detection_layer
	.addrsig_sym option_find_int_quiet
	.addrsig_sym option_find_float