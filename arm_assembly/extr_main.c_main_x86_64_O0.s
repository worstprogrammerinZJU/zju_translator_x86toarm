	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	stdout(%rip), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	setbuf@PLT
	movl	delete_temp_files(%rip), %edi
	callq	atexit@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	perror@PLT
.LBB0_2:
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	parseopt@PLT
	movl	infile(%rip), %edi
	callq	lex_init@PLT
	movb	$0, %al
	callq	cpp_init@PLT
	movb	$0, %al
	callq	parse_init@PLT
	movb	$0, %al
	callq	open_asmfile@PLT
	movl	%eax, %edi
	callq	set_output_file@PLT
	movl	cppdefs(%rip), %edi
	callq	buf_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_4
# %bb.3:
	movl	cppdefs(%rip), %edi
	callq	buf_body@PLT
	movl	%eax, %edi
	callq	read_from_string@PLT
.LBB0_4:
	cmpq	$0, cpponly(%rip)
	je	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	preprocess@PLT
.LBB0_6:
	movb	$0, %al
	callq	read_toplevels@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-56(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, dumpast(%rip)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rdi
	callq	node2s@PLT
	movq	%rax, %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rdi
	callq	emit_toplevel@PLT
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_7
.LBB0_13:
	movb	$0, %al
	callq	close_output_file@PLT
	cmpq	$0, dumpast(%rip)
	jne	.LBB0_24
# %bb.14:
	cmpl	$0, dumpasm(%rip)
	jne	.LBB0_24
# %bb.15:
	cmpq	$0, outfile(%rip)
	jne	.LBB0_17
# %bb.16:
	movl	infile(%rip), %edi
	callq	base@PLT
	movl	%eax, %edi
	movl	$111, %esi
	callq	replace_suffix@PLT
	movq	%rax, outfile(%rip)
.LBB0_17:
	movb	$0, %al
	callq	fork@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB0_19
# %bb.18:
	leaq	.L.str.2(%rip), %rdi
	callq	perror@PLT
.LBB0_19:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_21
# %bb.20:
	movq	outfile(%rip), %rcx
	movl	asmfile(%rip), %r9d
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	leaq	.L.str.5(%rip), %r8
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rsi, %rdi
	movq	$0, (%rsp)
	callq	execlp@PLT
	leaq	.L.str.6(%rip), %rdi
	callq	perror@PLT
.LBB0_21:
	movq	-48(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	xorl	%edx, %edx
	callq	waitpid@PLT
	cmpl	$0, -52(%rbp)
	jge	.LBB0_23
# %bb.22:
	leaq	.L.str.7(%rip), %rdi
	callq	error@PLT
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.globl	delete_temp_files
	.p2align	2
delete_temp_files:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"atexit"
	.bss
	.globl	infile
	.p2align	2
infile:
	.long	0                               # 0x0
	.globl	cppdefs
	.p2align	2
cppdefs:
	.long	0                               # 0x0
	.globl	cpponly
	.p2align	3
cpponly:
	.quad	0                               # 0x0
	.globl	dumpast
	.p2align	3
dumpast:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s"
	.bss
	.globl	dumpasm
	.p2align	2
dumpasm:
	.long	0                               # 0x0
	.globl	outfile
	.p2align	3
outfile:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fork"
.L.str.3:
	.asciz	"as"
.L.str.4:
	.asciz	"-o"
.L.str.5:
	.asciz	"-c"
	.bss
	.globl	asmfile
	.p2align	2
asmfile:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"execl failed"
.L.str.7:
	.asciz	"as failed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setbuf
	.addrsig_sym atexit
	.addrsig_sym perror
	.addrsig_sym parseopt
	.addrsig_sym lex_init
	.addrsig_sym cpp_init
	.addrsig_sym parse_init
	.addrsig_sym set_output_file
	.addrsig_sym open_asmfile
	.addrsig_sym buf_len
	.addrsig_sym read_from_string
	.addrsig_sym buf_body
	.addrsig_sym preprocess
	.addrsig_sym read_toplevels
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym printf
	.addrsig_sym node2s
	.addrsig_sym emit_toplevel
	.addrsig_sym close_output_file
	.addrsig_sym replace_suffix
	.addrsig_sym base
	.addrsig_sym fork
	.addrsig_sym execlp
	.addrsig_sym waitpid
	.addrsig_sym error
	.addrsig_sym stdout
	.addrsig_sym delete_temp_files
	.addrsig_sym infile
	.addrsig_sym cppdefs
	.addrsig_sym cpponly
	.addrsig_sym dumpast
	.addrsig_sym dumpasm
	.addrsig_sym outfile
	.addrsig_sym asmfile