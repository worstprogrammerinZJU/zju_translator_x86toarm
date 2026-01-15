	.text
	.globl	jvp_utf8_encode                 # -- Begin function jvp_utf8_encode
	.p2align	4, 0x90
jvp_utf8_encode:                        # @jvp_utf8_encode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -4(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jl	.LBB0_2
# %bb.1:
	cmpl	$1114111, -4(%rbp)              # imm = 0x10FFFF
	setle	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$127, -4(%rbp)
	jg	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_11
.LBB0_4:
	cmpl	$2047, -4(%rbp)                 # imm = 0x7FF
	jg	.LBB0_6
# %bb.5:
	movl	-4(%rbp), %eax
	andl	$1984, %eax                     # imm = 0x7C0
	sarl	$6, %eax
	addl	$192, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_10
.LBB0_6:
	cmpl	$65535, -4(%rbp)                # imm = 0xFFFF
	jg	.LBB0_8
# %bb.7:
	movl	-4(%rbp), %eax
	andl	$61440, %eax                    # imm = 0xF000
	sarl	$12, %eax
	addl	$224, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$4032, %eax                     # imm = 0xFC0
	sarl	$6, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_9
.LBB0_8:
	movl	-4(%rbp), %eax
	andl	$1835008, %eax                  # imm = 0x1C0000
	sarl	$18, %eax
	addl	$240, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$258048, %eax                   # imm = 0x3F000
	sarl	$12, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$4032, %eax                     # imm = 0xFC0
	sarl	$6, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	addl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jvp_utf8_encode_length@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jvp_utf8_encode_length