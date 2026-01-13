	.text
	.p2align	4, 0x90                         # -- Begin function read_int
read_int:                               # @read_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$2, %edx
	callq	strncasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	addq	$2, %rdi
	leaq	-32(%rbp), %rsi
	movl	$2, %edx
	callq	strtoul@PLT
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_3:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	read_int_suffix@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ast_inttype@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_5:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-24(%rbp), %rcx
	leaq	.L.str.1(%rip), %rsi
	movsbl	%al, %edx
	callq	errort@PLT
.LBB0_7:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$48, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_12
# %bb.8:
	movq	-40(%rbp), %rax
	movq	INT_MAX(%rip), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	movq	type_int(%rip), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:
	movq	type_long(%rip), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB0_11:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ast_inttype@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_12:
	movq	-40(%rbp), %rax
	movq	INT_MAX(%rip), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:
	movq	type_int(%rip), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_21
.LBB0_14:
	movq	-40(%rbp), %rax
	movq	UINT_MAX(%rip), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:
	movq	type_uint(%rip), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_20
.LBB0_16:
	movq	-40(%rbp), %rax
	movq	LONG_MAX(%rip), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:
	movq	type_long(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB0_19
.LBB0_18:
	movq	type_ulong(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB0_19:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_20:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rbp)                 # 8-byte Spill
.LBB0_21:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ast_inttype@PLT
	movq	%rax, -8(%rbp)
.LBB0_22:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0b"
.L.str.1:
	.asciz	"invalid character '%c': %s"
	.bss
	.globl	INT_MAX
	.p2align	3
INT_MAX:
	.quad	0                               # 0x0
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.globl	type_long
	.p2align	3
type_long:
	.quad	0
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.quad	0                               # 0x0
	.globl	type_uint
	.p2align	3
type_uint:
	.quad	0
	.globl	LONG_MAX
	.p2align	3
LONG_MAX:
	.quad	0                               # 0x0
	.globl	type_ulong
	.p2align	3
type_ulong:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_int
	.addrsig_sym strncasecmp
	.addrsig_sym strtoul
	.addrsig_sym read_int_suffix
	.addrsig_sym ast_inttype
	.addrsig_sym errort
	.addrsig_sym INT_MAX
	.addrsig_sym type_int
	.addrsig_sym type_long
	.addrsig_sym UINT_MAX
	.addrsig_sym type_uint
	.addrsig_sym LONG_MAX
	.addrsig_sym type_ulong