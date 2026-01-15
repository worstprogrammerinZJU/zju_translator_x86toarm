	.text
	.p2align	2                               // -- Begin function base64_decode_value_signed
	.type	base64_decode_value_signed,@function
base64_decode_value_signed:             // @base64_decode_value_signed
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #43
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	subs	w8, w8, #320
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	w8, #-1
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_3:
	ldrsw	x9, [sp, #8]
	adrp	x8, base64_decode_value_signed.decoding
	add	x8, x8, :lo12:base64_decode_value_signed.decoding
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	base64_decode_value_signed, .Lfunc_end0-base64_decode_value_signed
                                        // -- End function
	.type	base64_decode_value_signed.decoding,@object // @base64_decode_value_signed.decoding
	.section	.rodata,"a",@progbits
	.p2align	2
base64_decode_value_signed.decoding:
	.word	62                              // 0x3e
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	63                              // 0x3f
	.word	52                              // 0x34
	.word	53                              // 0x35
	.word	54                              // 0x36
	.word	55                              // 0x37
	.word	56                              // 0x38
	.word	57                              // 0x39
	.word	58                              // 0x3a
	.word	59                              // 0x3b
	.word	60                              // 0x3c
	.word	61                              // 0x3d
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967294                      // 0xfffffffe
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	2                               // 0x2
	.word	3                               // 0x3
	.word	4                               // 0x4
	.word	5                               // 0x5
	.word	6                               // 0x6
	.word	7                               // 0x7
	.word	8                               // 0x8
	.word	9                               // 0x9
	.word	10                              // 0xa
	.word	11                              // 0xb
	.word	12                              // 0xc
	.word	13                              // 0xd
	.word	14                              // 0xe
	.word	15                              // 0xf
	.word	16                              // 0x10
	.word	17                              // 0x11
	.word	18                              // 0x12
	.word	19                              // 0x13
	.word	20                              // 0x14
	.word	21                              // 0x15
	.word	22                              // 0x16
	.word	23                              // 0x17
	.word	24                              // 0x18
	.word	25                              // 0x19
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	4294967295                      // 0xffffffff
	.word	26                              // 0x1a
	.word	27                              // 0x1b
	.word	28                              // 0x1c
	.word	29                              // 0x1d
	.word	30                              // 0x1e
	.word	31                              // 0x1f
	.word	32                              // 0x20
	.word	33                              // 0x21
	.word	34                              // 0x22
	.word	35                              // 0x23
	.word	36                              // 0x24
	.word	37                              // 0x25
	.word	38                              // 0x26
	.word	39                              // 0x27
	.word	40                              // 0x28
	.word	41                              // 0x29
	.word	42                              // 0x2a
	.word	43                              // 0x2b
	.word	44                              // 0x2c
	.word	45                              // 0x2d
	.word	46                              // 0x2e
	.word	47                              // 0x2f
	.word	48                              // 0x30
	.word	49                              // 0x31
	.word	50                              // 0x32
	.word	51                              // 0x33
	.size	base64_decode_value_signed.decoding, 320
	.type	base64_decode_value_signed.decoding_size,@object // @base64_decode_value_signed.decoding_size
	.p2align	2
base64_decode_value_signed.decoding_size:
	.word	320                             // 0x140
	.size	base64_decode_value_signed.decoding_size, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_value_signed
	.addrsig_sym base64_decode_value_signed.decoding