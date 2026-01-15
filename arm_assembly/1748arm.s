	.text
	.globl	get_layer_string                // -- Begin function get_layer_string
	.p2align	2
	.type	get_layer_string,@function
get_layer_string:                       // @get_layer_string
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #22
	b.hi	.LBB0_25
// %bb.1:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_4:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_5:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_6:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_7:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_8:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_9:
	adrp	x8, .L.str.7
	add	x8, x8, :lo12:.L.str.7
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_10:
	adrp	x8, .L.str.8
	add	x8, x8, :lo12:.L.str.8
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_11:
	adrp	x8, .L.str.9
	add	x8, x8, :lo12:.L.str.9
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_12:
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_13:
	adrp	x8, .L.str.11
	add	x8, x8, :lo12:.L.str.11
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_14:
	adrp	x8, .L.str.12
	add	x8, x8, :lo12:.L.str.12
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_15:
	adrp	x8, .L.str.13
	add	x8, x8, :lo12:.L.str.13
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_16:
	adrp	x8, .L.str.14
	add	x8, x8, :lo12:.L.str.14
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_17:
	adrp	x8, .L.str.15
	add	x8, x8, :lo12:.L.str.15
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_18:
	adrp	x8, .L.str.16
	add	x8, x8, :lo12:.L.str.16
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_19:
	adrp	x8, .L.str.17
	add	x8, x8, :lo12:.L.str.17
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_20:
	adrp	x8, .L.str.18
	add	x8, x8, :lo12:.L.str.18
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_21:
	adrp	x8, .L.str.19
	add	x8, x8, :lo12:.L.str.19
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_22:
	adrp	x8, .L.str.20
	add	x8, x8, :lo12:.L.str.20
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_23:
	adrp	x8, .L.str.21
	add	x8, x8, :lo12:.L.str.21
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_24:
	adrp	x8, .L.str.22
	add	x8, x8, :lo12:.L.str.22
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	adrp	x8, .L.str.23
	add	x8, x8, :lo12:.L.str.23
	str	x8, [sp, #24]
	b	.LBB0_27
.LBB0_27:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_layer_string, .Lfunc_end0-get_layer_string
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_22-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_18-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_19-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_20-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_24-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_3-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"convolutional"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"activation"
	.size	.L.str.1, 11
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"local"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"deconvolutional"
	.size	.L.str.3, 16
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"connected"
	.size	.L.str.4, 10
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"rnn"
	.size	.L.str.5, 4
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"gru"
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"lstm"
	.size	.L.str.7, 5
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"crnn"
	.size	.L.str.8, 5
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"maxpool"
	.size	.L.str.9, 8
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"reorg"
	.size	.L.str.10, 6
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"avgpool"
	.size	.L.str.11, 8
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"softmax"
	.size	.L.str.12, 8
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"detection"
	.size	.L.str.13, 10
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"region"
	.size	.L.str.14, 7
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"yolo"
	.size	.L.str.15, 5
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"dropout"
	.size	.L.str.16, 8
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"crop"
	.size	.L.str.17, 5
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"cost"
	.size	.L.str.18, 5
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"route"
	.size	.L.str.19, 6
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"shortcut"
	.size	.L.str.20, 9
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"normalization"
	.size	.L.str.21, 14
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"batchnorm"
	.size	.L.str.22, 10
	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"none"
	.size	.L.str.23, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig