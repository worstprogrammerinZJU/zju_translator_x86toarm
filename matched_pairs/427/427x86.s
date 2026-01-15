	.text
	.p2align	4, 0x90                         # -- Begin function read_cpp_header_name
read_cpp_header_name:                   # @read_cpp_header_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	read_header_file_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_4:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_6:
	movq	-40(%rbp), %rdi
	movl	$60, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	tok2s@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_8:
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -48(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi
	movl	$62, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_13
# %bb.12:
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_9
.LBB0_14:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-48(%rbp), %rdi
	callq	join_paths@PLT
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expected filename, but got newline"
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"< expected, but got %s"
.L.str.2:
	.asciz	"premature end of header name"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cpp_header_name
	.addrsig_sym read_header_file_name
	.addrsig_sym read_expand_newline
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym tok2s
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym join_paths
	.addrsig_sym TNEWLINE
	.addrsig_sym TSTRING