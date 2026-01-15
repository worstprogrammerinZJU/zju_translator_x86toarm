	.text
	.globl	jvp_utf8_decode_length          # -- Begin function jvp_utf8_decode_length
	.p2align	4, 0x90
jvp_utf8_decode_length:                 # @jvp_utf8_decode_length
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movsbl	-5(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movsbl	-5(%rbp), %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$2, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	movsbl	-5(%rbp), %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	.LBB0_6
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