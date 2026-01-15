	.text
	.p2align	4, 0x90                         # -- Begin function parseopt
parseopt:                               # @parseopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	make_buffer@PLT
	movl	%eax, cppdefs(%rip)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdx
	callq	getopt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_22
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-68, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	subl	$51, %eax
	ja	.LBB0_20
# %bb.30:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %edi
	callq	add_include_path@PLT
	jmp	.LBB0_21
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, cpponly(%rip)
	jmp	.LBB0_21
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %edi
	movl	$61, %esi
	callq	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movb	$32, (%rax)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	cppdefs(%rip), %edi
	movl	optarg(%rip), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	buf_printf@PLT
	jmp	.LBB0_21
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_21
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, dumpasm(%rip)
	jmp	.LBB0_21
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	cppdefs(%rip), %edi
	movl	optarg(%rip), %edx
	leaq	.L.str.2(%rip), %rsi
	callq	buf_printf@PLT
	jmp	.LBB0_21
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %edi
	callq	parse_warnings_arg@PLT
	jmp	.LBB0_21
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, dontlink(%rip)
	jmp	.LBB0_21
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %edi
	callq	parse_f_arg@PLT
	jmp	.LBB0_21
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %edi
	callq	parse_m_arg@PLT
	jmp	.LBB0_21
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_21
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	optarg(%rip), %eax
	movl	%eax, outfile(%rip)
	jmp	.LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, enable_warning(%rip)
	jmp	.LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	xorl	%edi, %edi
	callq	usage@PLT
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %edi
	callq	usage@PLT
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_22:
	movl	optind(%rip), %eax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_24
# %bb.23:
	movl	$1, %edi
	callq	usage@PLT
.LBB0_24:
	cmpl	$0, dumpast(%rip)
	jne	.LBB0_29
# %bb.25:
	cmpl	$0, cpponly(%rip)
	jne	.LBB0_29
# %bb.26:
	cmpl	$0, dumpasm(%rip)
	jne	.LBB0_29
# %bb.27:
	cmpl	$0, dontlink(%rip)
	jne	.LBB0_29
# %bb.28:
	leaq	.L.str.3(%rip), %rdi
	callq	error@PLT
.LBB0_29:
	movq	-16(%rbp), %rax
	movslq	optind(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, infile(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_19-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
                                        # -- End function
	.bss
	.globl	cppdefs
	.p2align	2
cppdefs:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"I:ED:O:SU:W:acd:f:gm:o:hw"
	.bss
	.globl	optarg
	.p2align	2
optarg:
	.long	0                               # 0x0
	.globl	cpponly
	.p2align	2
cpponly:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"#define %s\n"
	.bss
	.globl	dumpasm
	.p2align	2
dumpasm:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"#undef %s\n"
	.bss
	.globl	dontlink
	.p2align	2
dontlink:
	.long	0                               # 0x0
	.globl	outfile
	.p2align	2
outfile:
	.long	0                               # 0x0
	.globl	enable_warning
	.p2align	2
enable_warning:
	.long	0                               # 0x0
	.globl	optind
	.p2align	2
optind:
	.long	0                               # 0x0
	.globl	dumpast
	.p2align	2
dumpast:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"One of -a, -c, -E or -S must be specified"
	.bss
	.globl	infile
	.p2align	3
infile:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parseopt
	.addrsig_sym make_buffer
	.addrsig_sym getopt
	.addrsig_sym add_include_path
	.addrsig_sym strchr
	.addrsig_sym buf_printf
	.addrsig_sym parse_warnings_arg
	.addrsig_sym parse_f_arg
	.addrsig_sym parse_m_arg
	.addrsig_sym usage
	.addrsig_sym error
	.addrsig_sym cppdefs
	.addrsig_sym optarg
	.addrsig_sym cpponly
	.addrsig_sym dumpasm
	.addrsig_sym dontlink
	.addrsig_sym outfile
	.addrsig_sym enable_warning
	.addrsig_sym optind
	.addrsig_sym dumpast
	.addrsig_sym infile