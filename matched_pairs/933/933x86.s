	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function testmain
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x4008000000000000              # double 3
.LCPI0_2:
	.quad	0x4014000000000000              # double 5
.LCPI0_3:
	.quad	0x401c000000000000              # double 7
.LCPI0_4:
	.quad	0x4022000000000000              # double 9
.LCPI0_5:
	.quad	0x4026000000000000              # double 11
.LCPI0_6:
	.quad	0x402a000000000000              # double 13
.LCPI0_7:
	.quad	0x402e000000000000              # double 15
.LCPI0_8:
	.quad	0x4031000000000000              # double 17
.LCPI0_9:
	.quad	0x4033000000000000              # double 19
.LCPI0_10:
	.quad	0x4035000000000000              # double 21
.LCPI0_11:
	.quad	0x4037000000000000              # double 23
.LCPI0_12:
	.quad	0x4039000000000000              # double 25
.LCPI0_13:
	.quad	0x403b000000000000              # double 27
.LCPI0_14:
	.quad	0x403d000000000000              # double 29
.LCPI0_15:
	.quad	0x403f000000000000              # double 31
.LCPI0_16:
	.quad	0x4040800000000000              # double 33
.LCPI0_17:
	.quad	0x4041800000000000              # double 35
.LCPI0_18:
	.quad	0x4042800000000000              # double 37
.LCPI0_19:
	.quad	0x4043800000000000              # double 39
.LCPI0_20:
	.quad	0x4000000000000000              # double 2
.LCPI0_21:
	.quad	0x4010000000000000              # double 4
.LCPI0_22:
	.quad	0x4018000000000000              # double 6
.LCPI0_23:
	.quad	0x4020000000000000              # double 8
.LCPI0_24:
	.quad	0x4024000000000000              # double 10
.LCPI0_25:
	.quad	0x4028000000000000              # double 12
.LCPI0_26:
	.quad	0x402c000000000000              # double 14
.LCPI0_27:
	.quad	0x4030000000000000              # double 16
	.text
	.globl	testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp                      # imm = 0x110
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	$1, %edi
	movl	$2, %esi
	movl	$3, %edx
	movl	$4, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movl	$7, (%rsp)
	movl	$8, 8(%rsp)
	movl	$9, 16(%rsp)
	callq	many_ints@PLT
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)                # 8-byte Spill
	movsd	.LCPI0_20(%rip), %xmm1          # xmm1 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm4           # xmm4 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm5          # xmm5 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm6           # xmm6 = mem[0],zero
	movsd	.LCPI0_23(%rip), %xmm7          # xmm7 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm8           # xmm8 = mem[0],zero
	movsd	.LCPI0_24(%rip), %xmm15         # xmm15 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm14          # xmm14 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm13         # xmm13 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm12          # xmm12 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm11         # xmm11 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm10          # xmm10 = mem[0],zero
	movsd	.LCPI0_27(%rip), %xmm9          # xmm9 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)                # 8-byte Spill
	movsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm8, (%rsp)
	movsd	-48(%rbp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm15, 8(%rsp)
	movsd	%xmm14, 16(%rsp)
	movsd	%xmm13, 24(%rsp)
	movsd	%xmm12, 32(%rsp)
	movsd	%xmm11, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm9, 56(%rsp)
	movsd	%xmm8, 64(%rsp)
	callq	many_floats@PLT
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	movl	$2, %edi
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movl	$4, %esi
	movsd	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero
	movl	$6, %edx
	movsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	movl	$8, %ecx
	movsd	.LCPI0_4(%rip), %xmm4           # xmm4 = mem[0],zero
	movl	$10, %r8d
	movsd	.LCPI0_5(%rip), %xmm5           # xmm5 = mem[0],zero
	movl	$12, %r9d
	movsd	.LCPI0_6(%rip), %xmm6           # xmm6 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm7           # xmm7 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm8           # xmm8 = mem[0],zero
	movsd	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movsd	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movsd	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	movsd	.LCPI0_12(%rip), %xmm15         # xmm15 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm14         # xmm14 = mem[0],zero
	movsd	.LCPI0_14(%rip), %xmm13         # xmm13 = mem[0],zero
	movsd	.LCPI0_15(%rip), %xmm12         # xmm12 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm11         # xmm11 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm10         # xmm10 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm9          # xmm9 = mem[0],zero
	movsd	.LCPI0_19(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)                 # 8-byte Spill
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$14, (%rsp)
	movl	$16, 8(%rsp)
	movsd	%xmm8, 16(%rsp)
	movsd	-32(%rbp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movl	$18, 24(%rsp)
	movsd	%xmm8, 32(%rsp)
	movsd	-24(%rbp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movl	$20, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	-16(%rbp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movl	$22, 56(%rsp)
	movsd	%xmm8, 64(%rsp)
	movsd	-8(%rbp), %xmm8                 # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movl	$24, 72(%rsp)
	movsd	%xmm15, 80(%rsp)
	movl	$26, 88(%rsp)
	movsd	%xmm14, 96(%rsp)
	movl	$28, 104(%rsp)
	movsd	%xmm13, 112(%rsp)
	movl	$30, 120(%rsp)
	movsd	%xmm12, 128(%rsp)
	movl	$32, 136(%rsp)
	movsd	%xmm11, 144(%rsp)
	movl	$34, 152(%rsp)
	movsd	%xmm10, 160(%rsp)
	movl	$36, 168(%rsp)
	movsd	%xmm9, 176(%rsp)
	movl	$38, 184(%rsp)
	movsd	%xmm8, 192(%rsp)
	movl	$40, 200(%rsp)
	callq	mixed@PLT
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function argument"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym many_ints
	.addrsig_sym many_floats
	.addrsig_sym mixed