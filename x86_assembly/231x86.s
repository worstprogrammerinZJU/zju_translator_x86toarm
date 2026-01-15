	.text
	.globl	base64_encode_value             # -- Begin function base64_encode_value
	.p2align	4, 0x90
base64_encode_value:                    # @base64_encode_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	%dil, %al
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$63, %eax
	jle	.LBB0_2
# %bb.1:
	movb	$61, -1(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	base64_encode_value.encoding(%rip), %rax
	movsbl	-2(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
.LBB0_3:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.data
	.p2align	3
base64_encode_value.encoding:
	.quad	.L.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value.encoding