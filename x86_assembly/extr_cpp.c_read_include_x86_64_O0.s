	.text
	.p2align	4, 0x90                         # -- Begin function read_include
read_include:                           # @read_include
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	read_cpp_header_name@PLT
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	expect_newline@PLT
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB0_4
# %bb.1:
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	try_include@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_19
.LBB0_3:
	jmp	.LBB0_18
.LBB0_4:
	cmpl	$0, -24(%rbp)
	jne	.LBB0_11
# %bb.5:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	strdup@PLT
	movl	%eax, %edi
	callq	dirname@PLT
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	try_include@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	jmp	.LBB0_19
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	$0, -44(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	std_include_path(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-60(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	std_include_path(%rip), %edi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	try_include@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	jmp	.LBB0_19
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_12
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	errort@PLT
.LBB0_19:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
.L.str.1:
	.asciz	"."
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cannot find header file: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_include
	.addrsig_sym read_cpp_header_name
	.addrsig_sym expect_newline
	.addrsig_sym try_include
	.addrsig_sym dirname
	.addrsig_sym strdup
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym errort
	.addrsig_sym std_include_path