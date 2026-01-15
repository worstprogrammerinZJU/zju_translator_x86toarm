	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbi__idct_simd
.LCPI0_0:
	.long	0x3fc02b4a                      # float 1.50132108
.LCPI0_1:
	.long	0xbec7c5c2                      # float -0.390180647
.LCPI0_2:
	.long	0x40036651                      # float 2.0531199
.LCPI0_3:
	.long	0x4044a74c                      # float 3.07271099
.LCPI0_4:
	.long	0xbffb14be                      # float -1.9615705
.LCPI0_5:
	.long	0x3e98e635                      # float 0.29863134
.LCPI0_6:
	.long	0xc02406cf                      # float -2.56291556
.LCPI0_7:
	.long	0x3f968317                      # float 1.17587554
.LCPI0_8:
	.long	0xbf6664d7                      # float -0.899976193
.LCPI0_9:
	.long	0x3f0a8bd4                      # float 0.541196108
.LCPI0_10:
	.long	0x3f43ef15                      # float 0.765366852
.LCPI0_11:
	.long	0xbfec835e                      # float -1.84775901
	.text
	.p2align	4, 0x90
stbi__idct_simd:                        # @stbi__idct_simd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1520, %rsp                     # imm = 0x5F0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1472(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1496(%rbp)               # 8-byte Spill
	movss	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1496(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1464(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1456(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1488(%rbp)               # 8-byte Spill
	movss	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1488(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1448(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1440(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1480(%rbp)               # 8-byte Spill
	movss	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1480(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1432(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1424(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1416(%rbp)               # 8-byte Spill
	movss	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1472(%rbp), %rdi               # 8-byte Reload
	movq	-1464(%rbp), %rsi               # 8-byte Reload
	movq	-1456(%rbp), %rdx               # 8-byte Reload
	movq	-1448(%rbp), %rcx               # 8-byte Reload
	movq	-1440(%rbp), %r8                # 8-byte Reload
	movq	-1432(%rbp), %r9                # 8-byte Reload
	movq	-1424(%rbp), %r10               # 8-byte Reload
	movq	%rax, %r11
	movq	-1416(%rbp), %rax               # 8-byte Reload
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -64(%rbp)
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1408(%rbp)               # 8-byte Spill
	movss	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1408(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1376(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1368(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1400(%rbp)               # 8-byte Spill
	movss	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1400(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1360(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1352(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1392(%rbp)               # 8-byte Spill
	movss	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1392(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1344(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1336(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1384(%rbp)               # 8-byte Spill
	movss	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1384(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1328(%rbp)               # 8-byte Spill
	movss	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1376(%rbp), %rdi               # 8-byte Reload
	movq	-1368(%rbp), %rsi               # 8-byte Reload
	movq	-1360(%rbp), %rdx               # 8-byte Reload
	movq	-1352(%rbp), %rcx               # 8-byte Reload
	movq	-1344(%rbp), %r8                # 8-byte Reload
	movq	-1336(%rbp), %r9                # 8-byte Reload
	movq	-1328(%rbp), %r10               # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -68(%rbp)
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1320(%rbp)               # 8-byte Spill
	movss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1320(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1288(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1312(%rbp)               # 8-byte Spill
	movss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1312(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1304(%rbp)               # 8-byte Spill
	movss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1304(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1296(%rbp)               # 8-byte Spill
	movss	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1296(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1240(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1288(%rbp), %rdi               # 8-byte Reload
	movq	-1280(%rbp), %rsi               # 8-byte Reload
	movq	-1272(%rbp), %rdx               # 8-byte Reload
	movq	-1264(%rbp), %rcx               # 8-byte Reload
	movq	-1256(%rbp), %r8                # 8-byte Reload
	movq	-1248(%rbp), %r9                # 8-byte Reload
	movq	-1240(%rbp), %r10               # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -72(%rbp)
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1232(%rbp)               # 8-byte Spill
	movss	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1232(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	movss	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1224(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	movss	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1216(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1160(%rbp)               # 8-byte Spill
	movss	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	movss	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1208(%rbp), %rdi               # 8-byte Reload
	movq	-1200(%rbp), %rsi               # 8-byte Reload
	movq	-1192(%rbp), %rdx               # 8-byte Reload
	movq	-1184(%rbp), %rcx               # 8-byte Reload
	movq	-1176(%rbp), %r8                # 8-byte Reload
	movq	-1168(%rbp), %r9                # 8-byte Reload
	movq	-1160(%rbp), %r10               # 8-byte Reload
	movq	%rax, %r11
	movq	-1152(%rbp), %rax               # 8-byte Reload
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -76(%rbp)
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	movss	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1144(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1112(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1104(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1136(%rbp)               # 8-byte Spill
	movss	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1136(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1088(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	movss	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1128(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1072(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1120(%rbp)               # 8-byte Spill
	movss	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1120(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1064(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1112(%rbp), %rdi               # 8-byte Reload
	movq	-1104(%rbp), %rsi               # 8-byte Reload
	movq	-1096(%rbp), %rdx               # 8-byte Reload
	movq	-1088(%rbp), %rcx               # 8-byte Reload
	movq	-1080(%rbp), %r8                # 8-byte Reload
	movq	-1072(%rbp), %r9                # 8-byte Reload
	movq	-1064(%rbp), %r10               # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -80(%rbp)
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1032(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1056(%rbp)               # 8-byte Spill
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1056(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1024(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1016(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1048(%rbp)               # 8-byte Spill
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1048(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -1008(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1000(%rbp)               # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -1040(%rbp)               # 8-byte Spill
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-1040(%rbp), %rax               # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -992(%rbp)                # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -984(%rbp)                # 8-byte Spill
	movss	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -976(%rbp)                # 8-byte Spill
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-1032(%rbp), %rdi               # 8-byte Reload
	movq	-1024(%rbp), %rsi               # 8-byte Reload
	movq	-1016(%rbp), %rdx               # 8-byte Reload
	movq	-1008(%rbp), %rcx               # 8-byte Reload
	movq	-1000(%rbp), %r8                # 8-byte Reload
	movq	-992(%rbp), %r9                 # 8-byte Reload
	movq	-984(%rbp), %r10                # 8-byte Reload
	movq	%rax, %r11
	movq	-976(%rbp), %rax                # 8-byte Reload
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -84(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -968(%rbp)                # 8-byte Spill
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-968(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -928(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -960(%rbp)                # 8-byte Spill
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-960(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -912(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -952(%rbp)                # 8-byte Spill
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-952(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -896(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -944(%rbp)                # 8-byte Spill
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-944(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -888(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-936(%rbp), %rdi                # 8-byte Reload
	movq	-928(%rbp), %rsi                # 8-byte Reload
	movq	-920(%rbp), %rdx                # 8-byte Reload
	movq	-912(%rbp), %rcx                # 8-byte Reload
	movq	-904(%rbp), %r8                 # 8-byte Reload
	movq	-896(%rbp), %r9                 # 8-byte Reload
	movq	-888(%rbp), %r10                # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -88(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -856(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -880(%rbp)                # 8-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-880(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -848(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -840(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -872(%rbp)                # 8-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-872(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -832(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -824(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -864(%rbp)                # 8-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, %rcx
	movq	-864(%rbp), %rax                # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -808(%rbp)                # 8-byte Spill
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	%rax, -800(%rbp)                # 8-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	stbi__f2f@PLT
	movq	-856(%rbp), %rdi                # 8-byte Reload
	movq	-848(%rbp), %rsi                # 8-byte Reload
	movq	-840(%rbp), %rdx                # 8-byte Reload
	movq	-832(%rbp), %rcx                # 8-byte Reload
	movq	-824(%rbp), %r8                 # 8-byte Reload
	movq	-816(%rbp), %r9                 # 8-byte Reload
	movq	-808(%rbp), %r10                # 8-byte Reload
	movq	%rax, %r11
	movq	-800(%rbp), %rax                # 8-byte Reload
	addq	%r11, %rax
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	_mm_setr_epi16@PLT
	movl	%eax, -92(%rbp)
	movl	$512, %edi                      # imm = 0x200
	callq	_mm_set1_epi32@PLT
	movl	%eax, -96(%rbp)
	movl	$16842752, %edi                 # imm = 0x1010000
	callq	_mm_set1_epi32@PLT
	movl	%eax, -100(%rbp)
	movq	-24(%rbp), %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	addq	$16, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	addq	$32, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	addq	$48, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	addq	$80, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	addq	$96, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	addq	$112, %rdi
	callq	_mm_load_si128@PLT
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -104(%rbp)
	movl	-36(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -108(%rbp)
	movl	-104(%rbp), %edi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -112(%rbp)
	movl	-108(%rbp), %edi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -116(%rbp)
	movl	-104(%rbp), %edi
	movl	-68(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -120(%rbp)
	movl	-108(%rbp), %edi
	movl	-68(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -124(%rbp)
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -128(%rbp)
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi16@PLT
	movl	%eax, -132(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-128(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -136(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-128(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -140(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-132(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -144(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-132(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -148(%rbp)
	movl	-136(%rbp), %edi
	movl	-120(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -152(%rbp)
	movl	-140(%rbp), %edi
	movl	-124(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -156(%rbp)
	movl	-136(%rbp), %edi
	movl	-120(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -160(%rbp)
	movl	-140(%rbp), %edi
	movl	-124(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -164(%rbp)
	movl	-144(%rbp), %edi
	movl	-112(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -168(%rbp)
	movl	-148(%rbp), %edi
	movl	-116(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -172(%rbp)
	movl	-144(%rbp), %edi
	movl	-112(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -176(%rbp)
	movl	-148(%rbp), %edi
	movl	-116(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -180(%rbp)
	movl	-56(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -184(%rbp)
	movl	-56(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -188(%rbp)
	movl	-184(%rbp), %edi
	movl	-80(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -192(%rbp)
	movl	-188(%rbp), %edi
	movl	-80(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -196(%rbp)
	movl	-184(%rbp), %edi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -200(%rbp)
	movl	-188(%rbp), %edi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -204(%rbp)
	movl	-48(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -208(%rbp)
	movl	-48(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -212(%rbp)
	movl	-208(%rbp), %edi
	movl	-88(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -216(%rbp)
	movl	-212(%rbp), %edi
	movl	-88(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -220(%rbp)
	movl	-208(%rbp), %edi
	movl	-92(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -224(%rbp)
	movl	-212(%rbp), %edi
	movl	-92(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -228(%rbp)
	movl	-32(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -232(%rbp)
	movl	-40(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -236(%rbp)
	movl	-232(%rbp), %edi
	movl	-236(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -240(%rbp)
	movl	-232(%rbp), %edi
	movl	-236(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -244(%rbp)
	movl	-240(%rbp), %edi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -248(%rbp)
	movl	-244(%rbp), %edi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -252(%rbp)
	movl	-240(%rbp), %edi
	movl	-76(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -256(%rbp)
	movl	-244(%rbp), %edi
	movl	-76(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -260(%rbp)
	movl	-192(%rbp), %edi
	movl	-248(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -264(%rbp)
	movl	-196(%rbp), %edi
	movl	-252(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -268(%rbp)
	movl	-216(%rbp), %edi
	movl	-256(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -272(%rbp)
	movl	-220(%rbp), %edi
	movl	-260(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -276(%rbp)
	movl	-200(%rbp), %edi
	movl	-256(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -280(%rbp)
	movl	-204(%rbp), %edi
	movl	-260(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -284(%rbp)
	movl	-224(%rbp), %edi
	movl	-248(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -288(%rbp)
	movl	-228(%rbp), %edi
	movl	-252(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -292(%rbp)
	movl	-152(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -296(%rbp)
	movl	-156(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -300(%rbp)
	movl	-296(%rbp), %edi
	movl	-288(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -304(%rbp)
	movl	-300(%rbp), %edi
	movl	-292(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -308(%rbp)
	movl	-296(%rbp), %edi
	movl	-288(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -312(%rbp)
	movl	-300(%rbp), %edi
	movl	-292(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -316(%rbp)
	movl	-304(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -792(%rbp)                # 4-byte Spill
	movl	-308(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-792(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -28(%rbp)
	movl	-312(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -788(%rbp)                # 4-byte Spill
	movl	-316(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-788(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -56(%rbp)
	movl	-168(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -320(%rbp)
	movl	-172(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -324(%rbp)
	movl	-320(%rbp), %edi
	movl	-280(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -328(%rbp)
	movl	-324(%rbp), %edi
	movl	-284(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -332(%rbp)
	movl	-320(%rbp), %edi
	movl	-280(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -336(%rbp)
	movl	-324(%rbp), %edi
	movl	-284(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -340(%rbp)
	movl	-328(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -784(%rbp)                # 4-byte Spill
	movl	-332(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-784(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -32(%rbp)
	movl	-336(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -780(%rbp)                # 4-byte Spill
	movl	-340(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-780(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -52(%rbp)
	movl	-176(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -344(%rbp)
	movl	-180(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -348(%rbp)
	movl	-344(%rbp), %edi
	movl	-272(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -352(%rbp)
	movl	-348(%rbp), %edi
	movl	-276(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -356(%rbp)
	movl	-344(%rbp), %edi
	movl	-272(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -360(%rbp)
	movl	-348(%rbp), %edi
	movl	-276(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -364(%rbp)
	movl	-352(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -776(%rbp)                # 4-byte Spill
	movl	-356(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-776(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -36(%rbp)
	movl	-360(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -772(%rbp)                # 4-byte Spill
	movl	-364(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-772(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -48(%rbp)
	movl	-160(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -368(%rbp)
	movl	-164(%rbp), %edi
	movl	-96(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -372(%rbp)
	movl	-368(%rbp), %edi
	movl	-264(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -376(%rbp)
	movl	-372(%rbp), %edi
	movl	-268(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -380(%rbp)
	movl	-368(%rbp), %edi
	movl	-264(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -384(%rbp)
	movl	-372(%rbp), %edi
	movl	-268(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -388(%rbp)
	movl	-376(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -768(%rbp)                # 4-byte Spill
	movl	-380(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-768(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -40(%rbp)
	movl	-384(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -764(%rbp)                # 4-byte Spill
	movl	-388(%rbp), %edi
	movl	$10, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-764(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -32(%rbp)
	movl	-60(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-40(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %edi
	movl	-36(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %edi
	movl	-36(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -32(%rbp)
	movl	-60(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -392(%rbp)
	movl	-36(%rbp), %edi
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -396(%rbp)
	movl	-392(%rbp), %edi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -400(%rbp)
	movl	-396(%rbp), %edi
	movl	-64(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -404(%rbp)
	movl	-392(%rbp), %edi
	movl	-68(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -408(%rbp)
	movl	-396(%rbp), %edi
	movl	-68(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -412(%rbp)
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -416(%rbp)
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi16@PLT
	movl	%eax, -420(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-416(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -424(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-416(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -428(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-420(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -432(%rbp)
	movb	$0, %al
	callq	_mm_setzero_si128@PLT
	movl	%eax, %edi
	movl	-420(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, %edi
	movl	$4, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -436(%rbp)
	movl	-424(%rbp), %edi
	movl	-408(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -440(%rbp)
	movl	-428(%rbp), %edi
	movl	-412(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -444(%rbp)
	movl	-424(%rbp), %edi
	movl	-408(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -448(%rbp)
	movl	-428(%rbp), %edi
	movl	-412(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -452(%rbp)
	movl	-432(%rbp), %edi
	movl	-400(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -456(%rbp)
	movl	-436(%rbp), %edi
	movl	-404(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -460(%rbp)
	movl	-432(%rbp), %edi
	movl	-400(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -464(%rbp)
	movl	-436(%rbp), %edi
	movl	-404(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -468(%rbp)
	movl	-56(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -472(%rbp)
	movl	-56(%rbp), %edi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -476(%rbp)
	movl	-472(%rbp), %edi
	movl	-80(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -480(%rbp)
	movl	-476(%rbp), %edi
	movl	-80(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -484(%rbp)
	movl	-472(%rbp), %edi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -488(%rbp)
	movl	-476(%rbp), %edi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -492(%rbp)
	movl	-48(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -496(%rbp)
	movl	-48(%rbp), %edi
	movl	-32(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -500(%rbp)
	movl	-496(%rbp), %edi
	movl	-88(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -504(%rbp)
	movl	-500(%rbp), %edi
	movl	-88(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -508(%rbp)
	movl	-496(%rbp), %edi
	movl	-92(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -512(%rbp)
	movl	-500(%rbp), %edi
	movl	-92(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -516(%rbp)
	movl	-32(%rbp), %edi
	movl	-56(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -520(%rbp)
	movl	-40(%rbp), %edi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi16@PLT
	movl	%eax, -524(%rbp)
	movl	-520(%rbp), %edi
	movl	-524(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi16@PLT
	movl	%eax, -528(%rbp)
	movl	-520(%rbp), %edi
	movl	-524(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi16@PLT
	movl	%eax, -532(%rbp)
	movl	-528(%rbp), %edi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -536(%rbp)
	movl	-532(%rbp), %edi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -540(%rbp)
	movl	-528(%rbp), %edi
	movl	-76(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -544(%rbp)
	movl	-532(%rbp), %edi
	movl	-76(%rbp), %esi
	movb	$0, %al
	callq	_mm_madd_epi16@PLT
	movl	%eax, -548(%rbp)
	movl	-480(%rbp), %edi
	movl	-536(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -552(%rbp)
	movl	-484(%rbp), %edi
	movl	-540(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -556(%rbp)
	movl	-504(%rbp), %edi
	movl	-544(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -560(%rbp)
	movl	-508(%rbp), %edi
	movl	-548(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -564(%rbp)
	movl	-488(%rbp), %edi
	movl	-544(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -568(%rbp)
	movl	-492(%rbp), %edi
	movl	-548(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -572(%rbp)
	movl	-512(%rbp), %edi
	movl	-536(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -576(%rbp)
	movl	-516(%rbp), %edi
	movl	-540(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -580(%rbp)
	movl	-440(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -584(%rbp)
	movl	-444(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -588(%rbp)
	movl	-584(%rbp), %edi
	movl	-576(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -592(%rbp)
	movl	-588(%rbp), %edi
	movl	-580(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -596(%rbp)
	movl	-584(%rbp), %edi
	movl	-576(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -600(%rbp)
	movl	-588(%rbp), %edi
	movl	-580(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -604(%rbp)
	movl	-592(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -760(%rbp)                # 4-byte Spill
	movl	-596(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-760(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -28(%rbp)
	movl	-600(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -756(%rbp)                # 4-byte Spill
	movl	-604(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-756(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -56(%rbp)
	movl	-456(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -608(%rbp)
	movl	-460(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -612(%rbp)
	movl	-608(%rbp), %edi
	movl	-568(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -616(%rbp)
	movl	-612(%rbp), %edi
	movl	-572(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -620(%rbp)
	movl	-608(%rbp), %edi
	movl	-568(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -624(%rbp)
	movl	-612(%rbp), %edi
	movl	-572(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -628(%rbp)
	movl	-616(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -752(%rbp)                # 4-byte Spill
	movl	-620(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-752(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -32(%rbp)
	movl	-624(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -748(%rbp)                # 4-byte Spill
	movl	-628(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-748(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -52(%rbp)
	movl	-464(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -632(%rbp)
	movl	-468(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -636(%rbp)
	movl	-632(%rbp), %edi
	movl	-560(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -640(%rbp)
	movl	-636(%rbp), %edi
	movl	-564(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -644(%rbp)
	movl	-632(%rbp), %edi
	movl	-560(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -648(%rbp)
	movl	-636(%rbp), %edi
	movl	-564(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -652(%rbp)
	movl	-640(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -744(%rbp)                # 4-byte Spill
	movl	-644(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-744(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -36(%rbp)
	movl	-648(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -740(%rbp)                # 4-byte Spill
	movl	-652(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-740(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -48(%rbp)
	movl	-448(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -656(%rbp)
	movl	-452(%rbp), %edi
	movl	-100(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -660(%rbp)
	movl	-656(%rbp), %edi
	movl	-552(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -664(%rbp)
	movl	-660(%rbp), %edi
	movl	-556(%rbp), %esi
	movb	$0, %al
	callq	_mm_add_epi32@PLT
	movl	%eax, -668(%rbp)
	movl	-656(%rbp), %edi
	movl	-552(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -672(%rbp)
	movl	-660(%rbp), %edi
	movl	-556(%rbp), %esi
	movb	$0, %al
	callq	_mm_sub_epi32@PLT
	movl	%eax, -676(%rbp)
	movl	-664(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -736(%rbp)                # 4-byte Spill
	movl	-668(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-736(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -40(%rbp)
	movl	-672(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	%eax, -732(%rbp)                # 4-byte Spill
	movl	-676(%rbp), %edi
	movl	$17, %esi
	movb	$0, %al
	callq	_mm_srai_epi32@PLT
	movl	-732(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	_mm_packs_epi32@PLT
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	_mm_packus_epi16@PLT
	movl	%eax, -680(%rbp)
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	_mm_packus_epi16@PLT
	movl	%eax, -684(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	_mm_packus_epi16@PLT
	movl	%eax, -688(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	_mm_packus_epi16@PLT
	movl	%eax, -692(%rbp)
	movl	-680(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-680(%rbp), %edi
	movl	-688(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -680(%rbp)
	movl	-60(%rbp), %edi
	movl	-688(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -688(%rbp)
	movl	-684(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-684(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -684(%rbp)
	movl	-60(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -692(%rbp)
	movl	-680(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-680(%rbp), %edi
	movl	-684(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -680(%rbp)
	movl	-60(%rbp), %edi
	movl	-684(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -684(%rbp)
	movl	-688(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-688(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -688(%rbp)
	movl	-60(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -692(%rbp)
	movl	-680(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-680(%rbp), %edi
	movl	-688(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -680(%rbp)
	movl	-60(%rbp), %edi
	movl	-688(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -688(%rbp)
	movl	-684(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-684(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpacklo_epi8@PLT
	movl	%eax, -684(%rbp)
	movl	-60(%rbp), %edi
	movl	-692(%rbp), %esi
	movb	$0, %al
	callq	_mm_unpackhi_epi8@PLT
	movl	%eax, -692(%rbp)
	movq	-8(%rbp), %rdi
	movl	-680(%rbp), %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -728(%rbp)                # 8-byte Spill
	movl	-680(%rbp), %edi
	movl	$78, %esi
	callq	_mm_shuffle_epi32@PLT
	movq	-728(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	-688(%rbp), %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	movl	-688(%rbp), %edi
	movl	$78, %esi
	callq	_mm_shuffle_epi32@PLT
	movq	-720(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	-684(%rbp), %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -712(%rbp)                # 8-byte Spill
	movl	-684(%rbp), %edi
	movl	$78, %esi
	callq	_mm_shuffle_epi32@PLT
	movq	-712(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	-692(%rbp), %esi
	callq	_mm_storel_epi64@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -704(%rbp)                # 8-byte Spill
	movl	-692(%rbp), %edi
	movl	$78, %esi
	callq	_mm_shuffle_epi32@PLT
	movq	-704(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	_mm_storel_epi64@PLT
	addq	$1520, %rsp                     # imm = 0x5F0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__idct_simd
	.addrsig_sym _mm_setr_epi16
	.addrsig_sym stbi__f2f
	.addrsig_sym _mm_set1_epi32
	.addrsig_sym _mm_load_si128
	.addrsig_sym _mm_unpacklo_epi16
	.addrsig_sym _mm_unpackhi_epi16
	.addrsig_sym _mm_madd_epi16
	.addrsig_sym _mm_add_epi16
	.addrsig_sym _mm_sub_epi16
	.addrsig_sym _mm_srai_epi32
	.addrsig_sym _mm_setzero_si128
	.addrsig_sym _mm_add_epi32
	.addrsig_sym _mm_sub_epi32
	.addrsig_sym _mm_packs_epi32
	.addrsig_sym _mm_packus_epi16
	.addrsig_sym _mm_unpacklo_epi8
	.addrsig_sym _mm_unpackhi_epi8
	.addrsig_sym _mm_storel_epi64
	.addrsig_sym _mm_shuffle_epi32