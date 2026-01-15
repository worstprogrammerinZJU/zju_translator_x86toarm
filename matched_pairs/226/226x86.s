	.text
	.p2align	4, 0x90                         # -- Begin function base64_decode_value_signed
base64_decode_value_signed:             # @base64_decode_value_signed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$43, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$320, -8(%rbp)                  # imm = 0x140
	jle	.LBB0_3
.LBB0_2:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movslq	-8(%rbp), %rcx
	leaq	base64_decode_value_signed.decoding(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
base64_decode_value_signed.decoding:
	.long	62                              # 0x3e
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	63                              # 0x3f
	.long	52                              # 0x34
	.long	53                              # 0x35
	.long	54                              # 0x36
	.long	55                              # 0x37
	.long	56                              # 0x38
	.long	57                              # 0x39
	.long	58                              # 0x3a
	.long	59                              # 0x3b
	.long	60                              # 0x3c
	.long	61                              # 0x3d
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967294                      # 0xfffffffe
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	16                              # 0x10
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	26                              # 0x1a
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	32                              # 0x20
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	35                              # 0x23
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	40                              # 0x28
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	43                              # 0x2b
	.long	44                              # 0x2c
	.long	45                              # 0x2d
	.long	46                              # 0x2e
	.long	47                              # 0x2f
	.long	48                              # 0x30
	.long	49                              # 0x31
	.long	50                              # 0x32
	.long	51                              # 0x33
	.p2align	2
base64_decode_value_signed.decoding_size:
	.long	320                             # 0x140
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_value_signed
	.addrsig_sym base64_decode_value_signed.decoding