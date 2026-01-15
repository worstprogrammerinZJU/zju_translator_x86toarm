	.text
	.globl	jvp_utf8_encode_length          # -- Begin function jvp_utf8_encode_length
	.p2align	4, 0x90
jvp_utf8_encode_length:                 # @jvp_utf8_encode_length
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	cmpl	$127, -8(%rbp)
	jg	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	cmpl	$2047, -8(%rbp)                 # imm = 0x7FF
	jg	.LBB0_4
# %bb.3:
	movl	$2, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	cmpl	$65535, -8(%rbp)                # imm = 0xFFFF
	jg	.LBB0_6
# %bb.5:
	movl	$3, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$4, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig