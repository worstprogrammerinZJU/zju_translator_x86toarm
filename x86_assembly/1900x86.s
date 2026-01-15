	.text
	.p2align	4, 0x90                         # -- Begin function read_int_suffix
read_int_suffix:                        # @read_int_suffix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	type_uint(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movq	type_long(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
.LBB0_6:
	movq	type_ulong(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_7:
	movq	-16(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movq	type_llong(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_9:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
.LBB0_11:
	movq	type_ullong(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movq	$0, -8(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"u"
	.bss
	.globl	type_uint
	.p2align	3
type_uint:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"l"
	.bss
	.globl	type_long
	.p2align	3
type_long:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ul"
.L.str.3:
	.asciz	"lu"
	.bss
	.globl	type_ulong
	.p2align	3
type_ulong:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ll"
	.bss
	.globl	type_llong
	.p2align	3
type_llong:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ull"
.L.str.6:
	.asciz	"llu"
	.bss
	.globl	type_ullong
	.p2align	3
type_ullong:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_int_suffix
	.addrsig_sym strcasecmp
	.addrsig_sym type_uint
	.addrsig_sym type_long
	.addrsig_sym type_ulong
	.addrsig_sym type_llong
	.addrsig_sym type_ullong