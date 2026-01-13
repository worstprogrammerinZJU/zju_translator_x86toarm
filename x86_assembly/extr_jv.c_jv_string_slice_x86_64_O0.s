	.text
	.globl	jv_string_slice                 # -- Begin function jv_string_slice
	.p2align	4, 0x90
jv_string_slice:                        # @jv_string_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	jvp_clamp_slice_params@PLT
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
	cmpl	-12(%rbp), %ecx
	movb	%al, -57(%rbp)                  # 1-byte Spill
	jg	.LBB0_3
# %bb.1:
	movl	-12(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-16(%rbp), %ecx
	movb	%al, -57(%rbp)                  # 1-byte Spill
	jg	.LBB0_3
# %bb.2:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setle	%al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-57(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rax
	addq	%rax, %rsi
	leaq	-52(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	$16, %edi
	callq	jv_string_empty@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB0_9
# %bb.8:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_4
.LBB0_11:
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -48(%rbp)
	movb	%al, -58(%rbp)                  # 1-byte Spill
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setl	%al
	movb	%al, -58(%rbp)                  # 1-byte Spill
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	movb	-58(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_15
	jmp	.LBB0_21
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rax
	addq	%rax, %rsi
	leaq	-52(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_17
# %bb.16:
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_21
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB0_19
# %bb.18:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_12
.LBB0_21:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	callq	jv_string_sized@PLT
	movl	%eax, -56(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_22:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid UTF-8 string"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jvp_clamp_slice_params
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_free
	.addrsig_sym jv_string_empty
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string
	.addrsig_sym jv_string_sized
	.addrsig_sym JV_KIND_STRING