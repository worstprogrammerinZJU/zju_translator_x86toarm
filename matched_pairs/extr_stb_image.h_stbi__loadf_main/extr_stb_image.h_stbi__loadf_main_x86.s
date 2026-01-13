	.text
	.p2align	4, 0x90                         # -- Begin function stbi__loadf_main
stbi__loadf_main:                       # @stbi__loadf_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_test@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	leaq	-60(%rbp), %r9
	callq	stbi__hdr_load@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_3
# %bb.2:
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	stbi__float_postprocess@PLT
.LBB0_3:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	stbi__load_and_postprocess_8bit@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_9
# %bb.5:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	cmpl	$0, -44(%rbp)
	je	.LBB0_7
# %bb.6:
	movl	-44(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
.LBB0_8:
	movl	-76(%rbp), %edx                 # 4-byte Reload
	movl	-80(%rbp), %esi                 # 4-byte Reload
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-92(%rbp), %ecx                 # 4-byte Reload
	callq	stbi__ldr_to_hdr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
.LBB0_10:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown image type"
.L.str.1:
	.asciz	"Image not of any known type, or corrupt"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__loadf_main
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_load
	.addrsig_sym stbi__float_postprocess
	.addrsig_sym stbi__load_and_postprocess_8bit
	.addrsig_sym stbi__ldr_to_hdr
	.addrsig_sym stbi__errpf