	.text
	.p2align	4, 0x90                         # -- Begin function open_asmfile
open_asmfile:                           # @open_asmfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	cmpq	$0, dumpasm(%rip)
	je	.LBB0_5
# %bb.1:
	cmpq	$0, outfile(%rip)
	je	.LBB0_3
# %bb.2:
	movq	outfile(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movl	infile(%rip), %edi
	callq	base@PLT
	movl	%eax, %edi
	movl	$115, %esi
	callq	replace_suffix@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB0_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rax, asmfile(%rip)
	jmp	.LBB0_8
.LBB0_5:
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	movq	%rax, asmfile(%rip)
	movq	asmfile(%rip), %rdi
	movl	$2, %esi
	callq	mkstemps@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	leaq	.L.str.1(%rip), %rdi
	callq	perror@PLT
.LBB0_7:
	movl	tmpfiles(%rip), %edi
	movq	asmfile(%rip), %rsi
	callq	vec_push@PLT
.LBB0_8:
	movq	asmfile(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movq	stdout(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movq	asmfile(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_12
# %bb.11:
	leaq	.L.str.4(%rip), %rdi
	callq	perror@PLT
.LBB0_12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dumpasm
	.p2align	3
dumpasm:
	.quad	0                               # 0x0
	.globl	outfile
	.p2align	3
outfile:
	.quad	0                               # 0x0
	.globl	infile
	.p2align	2
infile:
	.long	0                               # 0x0
	.globl	asmfile
	.p2align	3
asmfile:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/8ccXXXXXX.s"
.L.str.1:
	.asciz	"mkstemps"
	.bss
	.globl	tmpfiles
	.p2align	2
tmpfiles:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"-"
	.bss
	.globl	stdout
	.p2align	3
stdout:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"w"
.L.str.4:
	.asciz	"fopen"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open_asmfile
	.addrsig_sym replace_suffix
	.addrsig_sym base
	.addrsig_sym format
	.addrsig_sym mkstemps
	.addrsig_sym perror
	.addrsig_sym vec_push
	.addrsig_sym strcmp
	.addrsig_sym fopen
	.addrsig_sym dumpasm
	.addrsig_sym outfile
	.addrsig_sym infile
	.addrsig_sym asmfile
	.addrsig_sym tmpfiles
	.addrsig_sym stdout