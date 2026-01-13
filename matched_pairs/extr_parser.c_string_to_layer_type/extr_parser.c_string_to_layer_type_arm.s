	.text
	.globl	string_to_layer_type            // -- Begin function string_to_layer_type
	.p2align	2
	.type	string_to_layer_type,@function
string_to_layer_type:                   // @string_to_layer_type
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SHORTCUT
	ldr	w8, [x8, :lo12:SHORTCUT]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_2:
	ldr	x0, [sp]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, CROP
	ldr	w8, [x8, :lo12:CROP]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_4:
	ldr	x0, [sp]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, COST
	ldr	w8, [x8, :lo12:COST]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_6:
	ldr	x0, [sp]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DETECTION
	ldr	w8, [x8, :lo12:DETECTION]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_8:
	ldr	x0, [sp]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, REGION
	ldr	w8, [x8, :lo12:REGION]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_10:
	ldr	x0, [sp]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcmp
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, YOLO
	ldr	w8, [x8, :lo12:YOLO]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_12:
	ldr	x0, [sp]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	strcmp
	cbnz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, ISEG
	ldr	w8, [x8, :lo12:ISEG]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_14:
	ldr	x0, [sp]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	strcmp
	cbnz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, LOCAL
	ldr	w8, [x8, :lo12:LOCAL]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_16:
	ldr	x0, [sp]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	strcmp
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x0, [sp]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	strcmp
	cbnz	x0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x8, CONVOLUTIONAL
	ldr	w8, [x8, :lo12:CONVOLUTIONAL]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_19:
	ldr	x0, [sp]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	strcmp
	cbz	x0, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	x0, [sp]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	strcmp
	cbnz	x0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x8, DECONVOLUTIONAL
	ldr	w8, [x8, :lo12:DECONVOLUTIONAL]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_22:
	ldr	x0, [sp]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	strcmp
	cbnz	x0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x8, ACTIVE
	ldr	w8, [x8, :lo12:ACTIVE]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_24:
	ldr	x0, [sp]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	strcmp
	cbnz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x8, LOGXENT
	ldr	w8, [x8, :lo12:LOGXENT]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_26:
	ldr	x0, [sp]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	strcmp
	cbnz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, L2NORM
	ldr	w8, [x8, :lo12:L2NORM]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_28:
	ldr	x0, [sp]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	strcmp
	cbz	x0, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	x0, [sp]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	strcmp
	cbnz	x0, .LBB0_31
	b	.LBB0_30
.LBB0_30:
	adrp	x8, NETWORK
	ldr	w8, [x8, :lo12:NETWORK]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_31:
	ldr	x0, [sp]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	strcmp
	cbnz	x0, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	adrp	x8, CRNN
	ldr	w8, [x8, :lo12:CRNN]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_33:
	ldr	x0, [sp]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	strcmp
	cbnz	x0, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	adrp	x8, GRU
	ldr	w8, [x8, :lo12:GRU]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_35:
	ldr	x0, [sp]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	strcmp
	cbnz	x0, .LBB0_37
	b	.LBB0_36
.LBB0_36:
	adrp	x8, LSTM
	ldr	w8, [x8, :lo12:LSTM]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_37:
	ldr	x0, [sp]
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	bl	strcmp
	cbnz	x0, .LBB0_39
	b	.LBB0_38
.LBB0_38:
	adrp	x8, RNN
	ldr	w8, [x8, :lo12:RNN]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_39:
	ldr	x0, [sp]
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	bl	strcmp
	cbz	x0, .LBB0_41
	b	.LBB0_40
.LBB0_40:
	ldr	x0, [sp]
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	bl	strcmp
	cbnz	x0, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	adrp	x8, CONNECTED
	ldr	w8, [x8, :lo12:CONNECTED]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_42:
	ldr	x0, [sp]
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	bl	strcmp
	cbz	x0, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldr	x0, [sp]
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	bl	strcmp
	cbnz	x0, .LBB0_45
	b	.LBB0_44
.LBB0_44:
	adrp	x8, MAXPOOL
	ldr	w8, [x8, :lo12:MAXPOOL]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_45:
	ldr	x0, [sp]
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	bl	strcmp
	cbnz	x0, .LBB0_47
	b	.LBB0_46
.LBB0_46:
	adrp	x8, REORG
	ldr	w8, [x8, :lo12:REORG]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_47:
	ldr	x0, [sp]
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
	bl	strcmp
	cbz	x0, .LBB0_49
	b	.LBB0_48
.LBB0_48:
	ldr	x0, [sp]
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	bl	strcmp
	cbnz	x0, .LBB0_50
	b	.LBB0_49
.LBB0_49:
	adrp	x8, AVGPOOL
	ldr	w8, [x8, :lo12:AVGPOOL]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_50:
	ldr	x0, [sp]
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	bl	strcmp
	cbnz	x0, .LBB0_52
	b	.LBB0_51
.LBB0_51:
	adrp	x8, DROPOUT
	ldr	w8, [x8, :lo12:DROPOUT]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_52:
	ldr	x0, [sp]
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	bl	strcmp
	cbz	x0, .LBB0_54
	b	.LBB0_53
.LBB0_53:
	ldr	x0, [sp]
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	bl	strcmp
	cbnz	x0, .LBB0_55
	b	.LBB0_54
.LBB0_54:
	adrp	x8, NORMALIZATION
	ldr	w8, [x8, :lo12:NORMALIZATION]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_55:
	ldr	x0, [sp]
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	bl	strcmp
	cbnz	x0, .LBB0_57
	b	.LBB0_56
.LBB0_56:
	adrp	x8, BATCHNORM
	ldr	w8, [x8, :lo12:BATCHNORM]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_57:
	ldr	x0, [sp]
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	bl	strcmp
	cbz	x0, .LBB0_59
	b	.LBB0_58
.LBB0_58:
	ldr	x0, [sp]
	adrp	x1, .L.str.33
	add	x1, x1, :lo12:.L.str.33
	bl	strcmp
	cbnz	x0, .LBB0_60
	b	.LBB0_59
.LBB0_59:
	adrp	x8, SOFTMAX
	ldr	w8, [x8, :lo12:SOFTMAX]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_60:
	ldr	x0, [sp]
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	bl	strcmp
	cbnz	x0, .LBB0_62
	b	.LBB0_61
.LBB0_61:
	adrp	x8, ROUTE
	ldr	w8, [x8, :lo12:ROUTE]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_62:
	ldr	x0, [sp]
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	bl	strcmp
	cbnz	x0, .LBB0_64
	b	.LBB0_63
.LBB0_63:
	adrp	x8, UPSAMPLE
	ldr	w8, [x8, :lo12:UPSAMPLE]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_64:
	adrp	x8, BLANK
	ldr	w8, [x8, :lo12:BLANK]
	stur	w8, [x29, #-4]
	b	.LBB0_65
.LBB0_65:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	string_to_layer_type, .Lfunc_end0-string_to_layer_type
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[shortcut]"
	.size	.L.str, 11
	.type	SHORTCUT,@object                // @SHORTCUT
	.bss
	.globl	SHORTCUT
	.p2align	2
SHORTCUT:
	.word	0                               // 0x0
	.size	SHORTCUT, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[crop]"
	.size	.L.str.1, 7
	.type	CROP,@object                    // @CROP
	.bss
	.globl	CROP
	.p2align	2
CROP:
	.word	0                               // 0x0
	.size	CROP, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"[cost]"
	.size	.L.str.2, 7
	.type	COST,@object                    // @COST
	.bss
	.globl	COST
	.p2align	2
COST:
	.word	0                               // 0x0
	.size	COST, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"[detection]"
	.size	.L.str.3, 12
	.type	DETECTION,@object               // @DETECTION
	.bss
	.globl	DETECTION
	.p2align	2
DETECTION:
	.word	0                               // 0x0
	.size	DETECTION, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"[region]"
	.size	.L.str.4, 9
	.type	REGION,@object                  // @REGION
	.bss
	.globl	REGION
	.p2align	2
REGION:
	.word	0                               // 0x0
	.size	REGION, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"[yolo]"
	.size	.L.str.5, 7
	.type	YOLO,@object                    // @YOLO
	.bss
	.globl	YOLO
	.p2align	2
YOLO:
	.word	0                               // 0x0
	.size	YOLO, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"[iseg]"
	.size	.L.str.6, 7
	.type	ISEG,@object                    // @ISEG
	.bss
	.globl	ISEG
	.p2align	2
ISEG:
	.word	0                               // 0x0
	.size	ISEG, 4
	.type	.L.str.7,@object                // @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"[local]"
	.size	.L.str.7, 8
	.type	LOCAL,@object                   // @LOCAL
	.bss
	.globl	LOCAL
	.p2align	2
LOCAL:
	.word	0                               // 0x0
	.size	LOCAL, 4
	.type	.L.str.8,@object                // @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"[conv]"
	.size	.L.str.8, 7
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"[convolutional]"
	.size	.L.str.9, 16
	.type	CONVOLUTIONAL,@object           // @CONVOLUTIONAL
	.bss
	.globl	CONVOLUTIONAL
	.p2align	2
CONVOLUTIONAL:
	.word	0                               // 0x0
	.size	CONVOLUTIONAL, 4
	.type	.L.str.10,@object               // @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"[deconv]"
	.size	.L.str.10, 9
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"[deconvolutional]"
	.size	.L.str.11, 18
	.type	DECONVOLUTIONAL,@object         // @DECONVOLUTIONAL
	.bss
	.globl	DECONVOLUTIONAL
	.p2align	2
DECONVOLUTIONAL:
	.word	0                               // 0x0
	.size	DECONVOLUTIONAL, 4
	.type	.L.str.12,@object               // @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"[activation]"
	.size	.L.str.12, 13
	.type	ACTIVE,@object                  // @ACTIVE
	.bss
	.globl	ACTIVE
	.p2align	2
ACTIVE:
	.word	0                               // 0x0
	.size	ACTIVE, 4
	.type	.L.str.13,@object               // @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"[logistic]"
	.size	.L.str.13, 11
	.type	LOGXENT,@object                 // @LOGXENT
	.bss
	.globl	LOGXENT
	.p2align	2
LOGXENT:
	.word	0                               // 0x0
	.size	LOGXENT, 4
	.type	.L.str.14,@object               // @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"[l2norm]"
	.size	.L.str.14, 9
	.type	L2NORM,@object                  // @L2NORM
	.bss
	.globl	L2NORM
	.p2align	2
L2NORM:
	.word	0                               // 0x0
	.size	L2NORM, 4
	.type	.L.str.15,@object               // @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"[net]"
	.size	.L.str.15, 6
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"[network]"
	.size	.L.str.16, 10
	.type	NETWORK,@object                 // @NETWORK
	.bss
	.globl	NETWORK
	.p2align	2
NETWORK:
	.word	0                               // 0x0
	.size	NETWORK, 4
	.type	.L.str.17,@object               // @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"[crnn]"
	.size	.L.str.17, 7
	.type	CRNN,@object                    // @CRNN
	.bss
	.globl	CRNN
	.p2align	2
CRNN:
	.word	0                               // 0x0
	.size	CRNN, 4
	.type	.L.str.18,@object               // @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"[gru]"
	.size	.L.str.18, 6
	.type	GRU,@object                     // @GRU
	.bss
	.globl	GRU
	.p2align	2
GRU:
	.word	0                               // 0x0
	.size	GRU, 4
	.type	.L.str.19,@object               // @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"[lstm]"
	.size	.L.str.19, 7
	.type	LSTM,@object                    // @LSTM
	.bss
	.globl	LSTM
	.p2align	2
LSTM:
	.word	0                               // 0x0
	.size	LSTM, 4
	.type	.L.str.20,@object               // @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"[rnn]"
	.size	.L.str.20, 6
	.type	RNN,@object                     // @RNN
	.bss
	.globl	RNN
	.p2align	2
RNN:
	.word	0                               // 0x0
	.size	RNN, 4
	.type	.L.str.21,@object               // @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"[conn]"
	.size	.L.str.21, 7
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"[connected]"
	.size	.L.str.22, 12
	.type	CONNECTED,@object               // @CONNECTED
	.bss
	.globl	CONNECTED
	.p2align	2
CONNECTED:
	.word	0                               // 0x0
	.size	CONNECTED, 4
	.type	.L.str.23,@object               // @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"[max]"
	.size	.L.str.23, 6
	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"[maxpool]"
	.size	.L.str.24, 10
	.type	MAXPOOL,@object                 // @MAXPOOL
	.bss
	.globl	MAXPOOL
	.p2align	2
MAXPOOL:
	.word	0                               // 0x0
	.size	MAXPOOL, 4
	.type	.L.str.25,@object               // @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"[reorg]"
	.size	.L.str.25, 8
	.type	REORG,@object                   // @REORG
	.bss
	.globl	REORG
	.p2align	2
REORG:
	.word	0                               // 0x0
	.size	REORG, 4
	.type	.L.str.26,@object               // @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"[avg]"
	.size	.L.str.26, 6
	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"[avgpool]"
	.size	.L.str.27, 10
	.type	AVGPOOL,@object                 // @AVGPOOL
	.bss
	.globl	AVGPOOL
	.p2align	2
AVGPOOL:
	.word	0                               // 0x0
	.size	AVGPOOL, 4
	.type	.L.str.28,@object               // @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"[dropout]"
	.size	.L.str.28, 10
	.type	DROPOUT,@object                 // @DROPOUT
	.bss
	.globl	DROPOUT
	.p2align	2
DROPOUT:
	.word	0                               // 0x0
	.size	DROPOUT, 4
	.type	.L.str.29,@object               // @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"[lrn]"
	.size	.L.str.29, 6
	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"[normalization]"
	.size	.L.str.30, 16
	.type	NORMALIZATION,@object           // @NORMALIZATION
	.bss
	.globl	NORMALIZATION
	.p2align	2
NORMALIZATION:
	.word	0                               // 0x0
	.size	NORMALIZATION, 4
	.type	.L.str.31,@object               // @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"[batchnorm]"
	.size	.L.str.31, 12
	.type	BATCHNORM,@object               // @BATCHNORM
	.bss
	.globl	BATCHNORM
	.p2align	2
BATCHNORM:
	.word	0                               // 0x0
	.size	BATCHNORM, 4
	.type	.L.str.32,@object               // @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"[soft]"
	.size	.L.str.32, 7
	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"[softmax]"
	.size	.L.str.33, 10
	.type	SOFTMAX,@object                 // @SOFTMAX
	.bss
	.globl	SOFTMAX
	.p2align	2
SOFTMAX:
	.word	0                               // 0x0
	.size	SOFTMAX, 4
	.type	.L.str.34,@object               // @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"[route]"
	.size	.L.str.34, 8
	.type	ROUTE,@object                   // @ROUTE
	.bss
	.globl	ROUTE
	.p2align	2
ROUTE:
	.word	0                               // 0x0
	.size	ROUTE, 4
	.type	.L.str.35,@object               // @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"[upsample]"
	.size	.L.str.35, 11
	.type	UPSAMPLE,@object                // @UPSAMPLE
	.bss
	.globl	UPSAMPLE
	.p2align	2
UPSAMPLE:
	.word	0                               // 0x0
	.size	UPSAMPLE, 4
	.type	BLANK,@object                   // @BLANK
	.globl	BLANK
	.p2align	2
BLANK:
	.word	0                               // 0x0
	.size	BLANK, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym SHORTCUT
	.addrsig_sym CROP
	.addrsig_sym COST
	.addrsig_sym DETECTION
	.addrsig_sym REGION
	.addrsig_sym YOLO
	.addrsig_sym ISEG
	.addrsig_sym LOCAL
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym ACTIVE
	.addrsig_sym LOGXENT
	.addrsig_sym L2NORM
	.addrsig_sym NETWORK
	.addrsig_sym CRNN
	.addrsig_sym GRU
	.addrsig_sym LSTM
	.addrsig_sym RNN
	.addrsig_sym CONNECTED
	.addrsig_sym MAXPOOL
	.addrsig_sym REORG
	.addrsig_sym AVGPOOL
	.addrsig_sym DROPOUT
	.addrsig_sym NORMALIZATION
	.addrsig_sym BATCHNORM
	.addrsig_sym SOFTMAX
	.addrsig_sym ROUTE
	.addrsig_sym UPSAMPLE
	.addrsig_sym BLANK