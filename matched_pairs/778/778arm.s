	.text
	.globl	initArduino                     // -- Begin function initArduino
	.p2align	2
	.type	initArduino,@function
initArduino:                            // @initArduino
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, CONFIG_LOG_DEFAULT_LEVEL
	ldr	w1, [x8, :lo12:CONFIG_LOG_DEFAULT_LEVEL]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	esp_log_level_set
	bl	nvs_flash_init
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, ESP_ERR_NVS_NO_FREE_PAGES
	ldr	x9, [x9, :lo12:ESP_ERR_NVS_NO_FREE_PAGES]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_1
.LBB0_1:
	adrp	x8, ESP_PARTITION_TYPE_DATA
	ldr	w0, [x8, :lo12:ESP_PARTITION_TYPE_DATA]
	adrp	x8, ESP_PARTITION_SUBTYPE_DATA_NVS
	ldr	w1, [x8, :lo12:ESP_PARTITION_SUBTYPE_DATA_NVS]
	mov	x2, xzr
	bl	esp_partition_find_first
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	ldr	x8, [sp]
	ldr	w2, [x8]
	mov	w1, wzr
	bl	esp_partition_erase_range
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	nvs_flash_init
	str	x0, [sp, #8]
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	log_e
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	log_e
	b	.LBB0_9
.LBB0_9:
	bl	init
	bl	initVariant
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	initArduino, .Lfunc_end0-initArduino
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2
	.type	CONFIG_LOG_DEFAULT_LEVEL,@object // @CONFIG_LOG_DEFAULT_LEVEL
	.bss
	.globl	CONFIG_LOG_DEFAULT_LEVEL
	.p2align	2
CONFIG_LOG_DEFAULT_LEVEL:
	.word	0                               // 0x0
	.size	CONFIG_LOG_DEFAULT_LEVEL, 4
	.type	ESP_ERR_NVS_NO_FREE_PAGES,@object // @ESP_ERR_NVS_NO_FREE_PAGES
	.globl	ESP_ERR_NVS_NO_FREE_PAGES
	.p2align	3
ESP_ERR_NVS_NO_FREE_PAGES:
	.xword	0                               // 0x0
	.size	ESP_ERR_NVS_NO_FREE_PAGES, 8
	.type	ESP_PARTITION_TYPE_DATA,@object // @ESP_PARTITION_TYPE_DATA
	.globl	ESP_PARTITION_TYPE_DATA
	.p2align	2
ESP_PARTITION_TYPE_DATA:
	.word	0                               // 0x0
	.size	ESP_PARTITION_TYPE_DATA, 4
	.type	ESP_PARTITION_SUBTYPE_DATA_NVS,@object // @ESP_PARTITION_SUBTYPE_DATA_NVS
	.globl	ESP_PARTITION_SUBTYPE_DATA_NVS
	.p2align	2
ESP_PARTITION_SUBTYPE_DATA_NVS:
	.word	0                               // 0x0
	.size	ESP_PARTITION_SUBTYPE_DATA_NVS, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Failed to format the broken NVS partition!"
	.size	.L.str.1, 43
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Failed to initialize NVS! Error: %u"
	.size	.L.str.2, 36
	.type	ESP_BT_MODE_BTDM,@object        // @ESP_BT_MODE_BTDM
	.bss
	.globl	ESP_BT_MODE_BTDM
	.p2align	2
ESP_BT_MODE_BTDM:
	.word	0                               // 0x0
	.size	ESP_BT_MODE_BTDM, 4
	.type	ESP_OK,@object                  // @ESP_OK
	.globl	ESP_OK
	.p2align	3
ESP_OK:
	.xword	0                               // 0x0
	.size	ESP_OK, 8
	.type	ESP_OTA_IMG_PENDING_VERIFY,@object // @ESP_OTA_IMG_PENDING_VERIFY
	.globl	ESP_OTA_IMG_PENDING_VERIFY
	.p2align	3
ESP_OTA_IMG_PENDING_VERIFY:
	.xword	0                               // 0x0
	.size	ESP_OTA_IMG_PENDING_VERIFY, 8
	.type	F_CPU,@object                   // @F_CPU
	.globl	F_CPU
	.p2align	2
F_CPU:
	.word	0                               // 0x0
	.size	F_CPU, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym esp_log_level_set
	.addrsig_sym nvs_flash_init
	.addrsig_sym esp_partition_find_first
	.addrsig_sym esp_partition_erase_range
	.addrsig_sym log_e
	.addrsig_sym init
	.addrsig_sym initVariant
	.addrsig_sym CONFIG_LOG_DEFAULT_LEVEL
	.addrsig_sym ESP_ERR_NVS_NO_FREE_PAGES
	.addrsig_sym ESP_PARTITION_TYPE_DATA
	.addrsig_sym ESP_PARTITION_SUBTYPE_DATA_NVS