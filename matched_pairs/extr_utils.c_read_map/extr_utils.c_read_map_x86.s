	.text
	.globl	read_map                        # -- Begin function read_map
	.p2align	4, 0x90
read_map:                               # @read_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	fgetl@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_3
.LBB0_5:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fgetl
	.addrsig_sym realloc
	.addrsig_sym atoi