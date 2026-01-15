	.text
	.p2align	2                               // -- Begin function lua_proto_append_masterinfo_string
	.type	lua_proto_append_masterinfo_string,@function
lua_proto_append_masterinfo_string:     // @lua_proto_append_masterinfo_string
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_TTABLE
	ldr	w2, [x8, :lo12:LUA_TTABLE]
	mov	w1, #1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	luaL_checktype
	bl	network_mysqld_masterinfo_new
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x8, master_lines
	ldr	w1, [x8, :lo12:master_lines]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, master_log_file
	ldr	w1, [x8, :lo12:master_log_file]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_log_pos
	ldr	w1, [x8, :lo12:master_log_pos]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, master_host
	ldr	w1, [x8, :lo12:master_host]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_user
	ldr	w1, [x8, :lo12:master_user]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_password
	ldr	w1, [x8, :lo12:master_password]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_port
	ldr	w1, [x8, :lo12:master_port]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, master_connect_retry
	ldr	w1, [x8, :lo12:master_connect_retry]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl
	ldr	w1, [x8, :lo12:master_ssl]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_ca
	ldr	w1, [x8, :lo12:master_ssl_ca]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_capath
	ldr	w1, [x8, :lo12:master_ssl_capath]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_cert
	ldr	w1, [x8, :lo12:master_ssl_cert]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_cipher
	ldr	w1, [x8, :lo12:master_ssl_cipher]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_key
	ldr	w1, [x8, :lo12:master_ssl_key]
	bl	LUA_IMPORT_STR
	ldr	x0, [sp, #24]
	adrp	x8, master_ssl_verify_server_cert
	ldr	w1, [x8, :lo12:master_ssl_verify_server_cert]
	bl	LUA_IMPORT_INT
	mov	x0, xzr
	bl	g_string_new
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	network_mysqld_masterinfo_append
	ldr	x0, [sp, #24]
	bl	network_mysqld_masterinfo_free
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	S
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_pushlstring
	ldur	x0, [x29, #-16]
	adrp	x8, TRUE
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_proto_append_masterinfo_string, .Lfunc_end0-lua_proto_append_masterinfo_string
                                        // -- End function
	.type	LUA_TTABLE,@object              // @LUA_TTABLE
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.word	0                               // 0x0
	.size	LUA_TTABLE, 4
	.type	master_lines,@object            // @master_lines
	.globl	master_lines
	.p2align	2
master_lines:
	.word	0                               // 0x0
	.size	master_lines, 4
	.type	master_log_file,@object         // @master_log_file
	.globl	master_log_file
	.p2align	2
master_log_file:
	.word	0                               // 0x0
	.size	master_log_file, 4
	.type	master_log_pos,@object          // @master_log_pos
	.globl	master_log_pos
	.p2align	2
master_log_pos:
	.word	0                               // 0x0
	.size	master_log_pos, 4
	.type	master_host,@object             // @master_host
	.globl	master_host
	.p2align	2
master_host:
	.word	0                               // 0x0
	.size	master_host, 4
	.type	master_user,@object             // @master_user
	.globl	master_user
	.p2align	2
master_user:
	.word	0                               // 0x0
	.size	master_user, 4
	.type	master_password,@object         // @master_password
	.globl	master_password
	.p2align	2
master_password:
	.word	0                               // 0x0
	.size	master_password, 4
	.type	master_port,@object             // @master_port
	.globl	master_port
	.p2align	2
master_port:
	.word	0                               // 0x0
	.size	master_port, 4
	.type	master_connect_retry,@object    // @master_connect_retry
	.globl	master_connect_retry
	.p2align	2
master_connect_retry:
	.word	0                               // 0x0
	.size	master_connect_retry, 4
	.type	master_ssl,@object              // @master_ssl
	.globl	master_ssl
	.p2align	2
master_ssl:
	.word	0                               // 0x0
	.size	master_ssl, 4
	.type	master_ssl_ca,@object           // @master_ssl_ca
	.globl	master_ssl_ca
	.p2align	2
master_ssl_ca:
	.word	0                               // 0x0
	.size	master_ssl_ca, 4
	.type	master_ssl_capath,@object       // @master_ssl_capath
	.globl	master_ssl_capath
	.p2align	2
master_ssl_capath:
	.word	0                               // 0x0
	.size	master_ssl_capath, 4
	.type	master_ssl_cert,@object         // @master_ssl_cert
	.globl	master_ssl_cert
	.p2align	2
master_ssl_cert:
	.word	0                               // 0x0
	.size	master_ssl_cert, 4
	.type	master_ssl_cipher,@object       // @master_ssl_cipher
	.globl	master_ssl_cipher
	.p2align	2
master_ssl_cipher:
	.word	0                               // 0x0
	.size	master_ssl_cipher, 4
	.type	master_ssl_key,@object          // @master_ssl_key
	.globl	master_ssl_key
	.p2align	2
master_ssl_key:
	.word	0                               // 0x0
	.size	master_ssl_key, 4
	.type	master_ssl_verify_server_cert,@object // @master_ssl_verify_server_cert
	.globl	master_ssl_verify_server_cert
	.p2align	2
master_ssl_verify_server_cert:
	.word	0                               // 0x0
	.size	master_ssl_verify_server_cert, 4
	.type	TRUE,@object                    // @TRUE
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_masterinfo_string
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_masterinfo_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_masterinfo_append
	.addrsig_sym network_mysqld_masterinfo_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym master_lines
	.addrsig_sym master_log_file
	.addrsig_sym master_log_pos
	.addrsig_sym master_host
	.addrsig_sym master_user
	.addrsig_sym master_password
	.addrsig_sym master_port
	.addrsig_sym master_connect_retry
	.addrsig_sym master_ssl
	.addrsig_sym master_ssl_ca
	.addrsig_sym master_ssl_capath
	.addrsig_sym master_ssl_cert
	.addrsig_sym master_ssl_cipher
	.addrsig_sym master_ssl_key
	.addrsig_sym master_ssl_verify_server_cert
	.addrsig_sym TRUE