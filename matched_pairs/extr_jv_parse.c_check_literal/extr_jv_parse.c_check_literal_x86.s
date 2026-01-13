	.text
	.p2align	4, 0x90                         # -- Begin function check_literal
check_literal:                          # @check_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_2:
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	subl	$102, %eax
	je	.LBB0_4
	jmp	.LBB0_22
.LBB0_22:
	movl	-60(%rbp), %eax                 # 4-byte Reload
	subl	$110, %eax
	je	.LBB0_5
	jmp	.LBB0_23
.LBB0_23:
	movl	-60(%rbp), %eax                 # 4-byte Reload
	subl	$116, %eax
	jne	.LBB0_6
	jmp	.LBB0_3
.LBB0_3:
	leaq	.L.str(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$4, -28(%rbp)
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$5, -28(%rbp)
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$4, -28(%rbp)
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -32(%rbp)
.LBB0_6:
	cmpq	$0, -24(%rbp)
	je	.LBB0_16
# %bb.7:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB0_9
# %bb.8:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_9:
	movl	$0, -36(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_13
# %bb.12:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_15:
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	value@PLT
	movl	%eax, %edi
	callq	TRY@PLT
	jmp	.LBB0_20
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	addq	$16, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	callq	jvp_strtod@PLT
	movsd	%xmm0, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_18
# %bb.17:
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_19
.LBB0_18:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_19:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	jv_number@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	value@PLT
	movl	%eax, %edi
	callq	TRY@PLT
.LBB0_20:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
.LBB0_21:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
.L.str.1:
	.asciz	"false"
.L.str.2:
	.asciz	"null"
.L.str.3:
	.asciz	"Invalid literal"
.L.str.4:
	.asciz	"Invalid numeric literal"
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_literal
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_null
	.addrsig_sym TRY
	.addrsig_sym value
	.addrsig_sym jvp_strtod
	.addrsig_sym jv_number