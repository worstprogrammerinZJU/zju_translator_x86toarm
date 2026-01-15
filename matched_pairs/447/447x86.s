	.text
	.p2align	4, 0x90                         # -- Begin function read_include_next
read_include_next:                      # @read_include_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rsi
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
	leaq	.L.str(%rip), %rdi
	xorl	%edx, %edx
	callq	try_include@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_18
.LBB0_3:
	jmp	.LBB0_17
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	fullpath@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	std_include_path(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-60(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	std_include_path(%rip), %edi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movl	%eax, %edi
	callq	fullpath@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	jmp	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	std_include_path(%rip), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	std_include_path(%rip), %edi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	xorl	%edx, %edx
	callq	try_include@PLT
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.13:
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_11
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	errort@PLT
.LBB0_18:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.bss
	.globl	std_include_path
	.p2align	2
std_include_path:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s/%s"
.L.str.2:
	.asciz	"cannot find header file: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_include_next
	.addrsig_sym read_cpp_header_name
	.addrsig_sym expect_newline
	.addrsig_sym try_include
	.addrsig_sym fullpath
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym strcmp
	.addrsig_sym format
	.addrsig_sym errort
	.addrsig_sym std_include_path