	.text
	.p2align	4, 0x90                         # -- Begin function get
get:                                    # @get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_token@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TINVALID(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_5
# %bb.3:
	movb	$0, %al
	callq	peek@PLT
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rdi
	callq	concatenate_string@PLT
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TINVALID
	.p2align	3
TINVALID:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray character in program: '%c'"
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym peek
	.addrsig_sym concatenate_string
	.addrsig_sym TINVALID
	.addrsig_sym TSTRING