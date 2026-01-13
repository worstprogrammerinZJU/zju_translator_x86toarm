	.text
	.globl	block_compile                   # -- Begin function block_compile
	.p2align	4, 0x90
block_compile:                          # @block_compile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$32, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$4, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-4(%rbp), %edi
	callq	count_cfunctions@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movl	-44(%rbp), %esi
	movl	$4, %edi
	callq	jv_mem_calloc@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 8(%rax)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 4(%rax)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_null@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movl	-56(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	leaq	-48(%rbp), %r8
	callq	compile@PLT
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-48(%rbp), %edi
	callq	jv_free@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	-44(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$0, -52(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rdi
	callq	bytecode_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_3:
	movl	-52(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"name"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym count_cfunctions
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_array
	.addrsig_sym jv_object_set
	.addrsig_sym jv_object
	.addrsig_sym jv_string
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym compile
	.addrsig_sym jv_free
	.addrsig_sym assert
	.addrsig_sym bytecode_free