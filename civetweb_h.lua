local ffi = require("ffi")
if nil == FFI_INCLUDED then
	FFI_INCLUDED = {}
end
if not FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"] then
ffi.cdef[[
typedef long unsigned int size_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/types.h"] then
ffi.cdef[[
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/types.h"] then
ffi.cdef[[
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;

]]
end
if not FFI_INCLUDED["/usr/include/stdio.h"] then
ffi.cdef[[
struct _IO_FILE;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;

]]
end
if not FFI_INCLUDED["/usr/include/wchar.h"] then
ffi.cdef[[
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;

]]
end
if not FFI_INCLUDED["/usr/include/_G_config.h"] then
ffi.cdef[[
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;

]]
end
if not FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h"] then
ffi.cdef[[
typedef __builtin_va_list __gnuc_va_list;

]]
end
if not FFI_INCLUDED["/usr/include/libio.h"] then
ffi.cdef[[
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE {
  int _flags;
  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_peekc_locked (_IO_FILE *__fp);
extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);
extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));

]]
end
if not FFI_INCLUDED["/usr/include/stdio.h"] then
ffi.cdef[[
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;
typedef _G_fpos_t fpos_t;

]]
end
if not FFI_INCLUDED["/usr/include/stdio.h"] then
ffi.cdef[[
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern FILE *tmpfile (void) ;
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")
                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))
                      ;
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) ;
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void perror (const char *__s);

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"] then
ffi.cdef[[
extern int sys_nerr;
extern const char *const sys_errlist[];

]]
end
if not FFI_INCLUDED["/usr/include/stdio.h"] then
ffi.cdef[[
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *popen (const char *__command, const char *__modes) ;
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

]]
end
if not FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"] then
ffi.cdef[[
typedef long int ptrdiff_t;
typedef int wchar_t;
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;

]]
end
if not FFI_INCLUDED["civetweb/civetweb.h"] then
ffi.cdef[[
struct mg_context;
struct mg_connection;
struct mg_request_info {
 const char *request_method;
 const char *request_uri;
 const char *local_uri;
 const char *uri;
 const char *http_version;
 const char *query_string;
 const char *remote_user;
 char remote_addr[48];
 long long content_length;
 int remote_port;
 int is_ssl;
 void *user_data;
 void *conn_data;
 int num_headers;
 struct mg_header {
  const char *name;
  const char *value;
 } http_headers[64];
};
struct mg_callbacks {
 int (*begin_request)(struct mg_connection *);
 void (*end_request)(const struct mg_connection *, int reply_status_code);
 int (*log_message)(const struct mg_connection *, const char *message);
 int (*log_access)(const struct mg_connection *, const char *message);
 int (*init_ssl)(void *ssl_context, void *user_data);
 void (*connection_close)(const struct mg_connection *);
 const char *(*open_file)(const struct mg_connection *,
                          const char *path,
                          size_t *data_len);
 void (*init_lua)(const struct mg_connection *, void *lua_context);
 int (*http_error)(struct mg_connection *, int status);
 void (*init_context)(const struct mg_context *ctx);
 void (*init_thread)(const struct mg_context *ctx, int thread_type);
 void (*exit_context)(const struct mg_context *ctx);
};
__attribute__((visibility("default"))) struct mg_context *mg_start(const struct mg_callbacks *callbacks,
                                         void *user_data,
                                         const char **configuration_options);
__attribute__((visibility("default"))) void mg_stop(struct mg_context *);
typedef int (*mg_request_handler)(struct mg_connection *conn, void *cbdata);
__attribute__((visibility("default"))) void mg_set_request_handler(struct mg_context *ctx,
                                         const char *uri,
                                         mg_request_handler handler,
                                         void *cbdata);
typedef int (*mg_websocket_connect_handler)(const struct mg_connection *,
                                            void *);
typedef void (*mg_websocket_ready_handler)(struct mg_connection *, void *);
typedef int (*mg_websocket_data_handler)(struct mg_connection *,
                                         int,
                                         char *,
                                         size_t,
                                         void *);
typedef void (*mg_websocket_close_handler)(const struct mg_connection *,
                                           void *);
__attribute__((visibility("default"))) void
mg_set_websocket_handler(struct mg_context *ctx,
                         const char *uri,
                         mg_websocket_connect_handler connect_handler,
                         mg_websocket_ready_handler ready_handler,
                         mg_websocket_data_handler data_handler,
                         mg_websocket_close_handler close_handler,
                         void *cbdata);
typedef int (*mg_authorization_handler)(struct mg_connection *conn,
                                        void *cbdata);
__attribute__((visibility("default"))) void mg_set_auth_handler(struct mg_context *ctx,
                                      const char *uri,
                                      mg_authorization_handler handler,
                                      void *cbdata);
__attribute__((visibility("default"))) const char *mg_get_option(const struct mg_context *ctx,
                                       const char *name);
__attribute__((visibility("default"))) struct mg_context *
mg_get_context(const struct mg_connection *conn);
__attribute__((visibility("default"))) void *mg_get_user_data(const struct mg_context *ctx);
__attribute__((visibility("default"))) void mg_set_user_connection_data(struct mg_connection *conn,
                                              void *data);
__attribute__((visibility("default"))) void *
mg_get_user_connection_data(const struct mg_connection *conn);
struct mg_option {
 const char *name;
/* Replacing type with type_ */
 int type_;
 const char *default_value;
};
enum {
 CONFIG_TYPE_UNKNOWN = 0x0,
 CONFIG_TYPE_NUMBER = 0x1,
 CONFIG_TYPE_STRING = 0x2,
 CONFIG_TYPE_FILE = 0x3,
 CONFIG_TYPE_DIRECTORY = 0x4,
 CONFIG_TYPE_BOOLEAN = 0x5,
 CONFIG_TYPE_EXT_PATTERN = 0x6
};
__attribute__((visibility("default"))) const struct mg_option *mg_get_valid_options(void);
struct mg_server_ports {
 int protocol;
 int port;
 int is_ssl;
 int is_redirect;
 int _reserved1;
 int _reserved2;
 int _reserved3;
 int _reserved4;
};
__attribute__((visibility("default"))) int mg_get_server_ports(const struct mg_context *ctx,
                                     int size,
                                     struct mg_server_ports *ports);
__attribute__((visibility("default"))) size_t
mg_get_ports(const struct mg_context *ctx, size_t size, int *ports, int *ssl);
__attribute__((visibility("default"))) int mg_modify_passwords_file(const char *passwords_file_name,
                                          const char *domain,
                                          const char *user,
                                          const char *password);
__attribute__((visibility("default"))) const struct mg_request_info *
mg_get_request_info(const struct mg_connection *);
__attribute__((visibility("default"))) int mg_write(struct mg_connection *, const void *buf, size_t len);
__attribute__((visibility("default"))) int mg_websocket_write(struct mg_connection *conn,
                                    int opcode,
                                    const char *data,
                                    size_t data_len);
__attribute__((visibility("default"))) int mg_websocket_client_write(struct mg_connection *conn,
                                           int opcode,
                                           const char *data,
                                           size_t data_len);
__attribute__((visibility("default"))) void mg_lock_connection(struct mg_connection *conn);
__attribute__((visibility("default"))) void mg_unlock_connection(struct mg_connection *conn);
__attribute__((visibility("default"))) void mg_lock_context(struct mg_context *ctx);
__attribute__((visibility("default"))) void mg_unlock_context(struct mg_context *ctx);
enum {
 WEBSOCKET_OPCODE_CONTINUATION = 0x0,
 WEBSOCKET_OPCODE_TEXT = 0x1,
 WEBSOCKET_OPCODE_BINARY = 0x2,
 WEBSOCKET_OPCODE_CONNECTION_CLOSE = 0x8,
 WEBSOCKET_OPCODE_PING = 0x9,
 WEBSOCKET_OPCODE_PONG = 0xa
};
__attribute__((visibility("default"))) int mg_printf(struct mg_connection *,
                           const char *fmt,
                           ...) __attribute__((format(printf, 2, 3)));
__attribute__((visibility("default"))) void mg_send_file(struct mg_connection *conn, const char *path);
__attribute__((visibility("default"))) void mg_send_mime_file(struct mg_connection *conn,
                                    const char *path,
                                    const char *mime_type);
__attribute__((visibility("default"))) long long mg_store_body(struct mg_connection *conn,
                                     const char *path);
__attribute__((visibility("default"))) int mg_read(struct mg_connection *, void *buf, size_t len);
__attribute__((visibility("default"))) const char *mg_get_header(const struct mg_connection *,
                                       const char *name);
__attribute__((visibility("default"))) int mg_get_var(const char *data,
                            size_t data_len,
                            const char *var_name,
                            char *dst,
                            size_t dst_len);
__attribute__((visibility("default"))) int mg_get_var2(const char *data,
                             size_t data_len,
                             const char *var_name,
                             char *dst,
                             size_t dst_len,
                             size_t occurrence);
__attribute__((visibility("default"))) int mg_get_cookie(const char *cookie,
                               const char *var_name,
                               char *buf,
                               size_t buf_len);
__attribute__((visibility("default"))) struct mg_connection *
mg_download(const char *host,
            int port,
            int use_ssl,
            char *error_buffer,
            size_t error_buffer_size,
            const char *request_fmt,
            ...) __attribute__((format(printf, 6, 7)));
__attribute__((visibility("default"))) void mg_close_connection(struct mg_connection *conn);
struct mg_form_data_handler {
 int (*field_found)(const char *key,
                    const char *filename,
                    char *path,
                    size_t pathlen,
                    void *user_data);
 int (*field_get)(const char *key,
                  const char *value,
                  size_t valuelen,
                  void *user_data);
 int (*field_store)(const char *path, long long file_size, void *user_data);
 void *user_data;
};
enum {
 FORM_FIELD_STORAGE_SKIP = 0x0,
 FORM_FIELD_STORAGE_GET = 0x1,
 FORM_FIELD_STORAGE_STORE = 0x2,
 FORM_FIELD_STORAGE_ABORT = 0x10
};
__attribute__((visibility("default"))) int mg_handle_form_request(struct mg_connection *conn,
                                        struct mg_form_data_handler *fdh);
typedef void *(*mg_thread_func_t)(void *);
__attribute__((visibility("default"))) int mg_start_thread(mg_thread_func_t f, void *p);
__attribute__((visibility("default"))) const char *mg_get_builtin_mime_type(const char *file_name);
__attribute__((visibility("default"))) const char *mg_get_response_code_text(struct mg_connection *conn,
                                                   int response_code);
__attribute__((visibility("default"))) const char *mg_version(void);
__attribute__((visibility("default"))) int mg_url_decode(const char *src,
                               int src_len,
                               char *dst,
                               int dst_len,
                               int is_form_url_encoded);
__attribute__((visibility("default"))) int mg_url_encode(const char *src, char *dst, size_t dst_len);
__attribute__((visibility("default"))) char *mg_md5(char buf[33], ...);
__attribute__((visibility("default"))) void mg_cry(const struct mg_connection *conn,
                         const char *fmt,
                         ...) __attribute__((format(printf, 2, 3)));
__attribute__((visibility("default"))) int mg_strcasecmp(const char *s1, const char *s2);
__attribute__((visibility("default"))) int mg_strncasecmp(const char *s1, const char *s2, size_t len);
__attribute__((visibility("default"))) struct mg_connection *
mg_connect_websocket_client(const char *host,
                            int port,
                            int use_ssl,
                            char *error_buffer,
                            size_t error_buffer_size,
                            const char *path,
                            const char *origin,
                            mg_websocket_data_handler data_func,
                            mg_websocket_close_handler close_func,
                            void *user_data);
__attribute__((visibility("default"))) struct mg_connection *mg_connect_client(const char *host,
                                                     int port,
                                                     int use_ssl,
                                                     char *error_buffer,
                                                     size_t error_buffer_size);
struct mg_client_options {
 const char *host;
 int port;
 const char *client_cert;
 const char *server_cert;
};
__attribute__((visibility("default"))) struct mg_connection *
mg_connect_client_secure(const struct mg_client_options *client_options,
                         char *error_buffer,
                         size_t error_buffer_size);
enum { TIMEOUT_INFINITE = -1 };
__attribute__((visibility("default"))) int mg_get_response(struct mg_connection *conn,
                                 char *ebuf,
                                 size_t ebuf_len,
                                 int timeout);
__attribute__((visibility("default"))) unsigned mg_check_feature(unsigned feature);

]]
end
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/wordsize.h"] = true
FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/typesizes.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"] = true
FFI_INCLUDED["/usr/include/stdio.h"] = true
FFI_INCLUDED["/usr/include/features.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/cdefs.h"] = true
FFI_INCLUDED["civetweb/civetweb.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/gnu/stubs.h"] = true
FFI_INCLUDED["/usr/include/wchar.h"] = true
FFI_INCLUDED["/usr/include/_G_config.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/types.h"] = true
FFI_INCLUDED["/usr/include/stdc-predef.h"] = true
FFI_INCLUDED["/usr/include/libio.h"] = true
FFI_INCLUDED["<command-line>"] = true
FFI_INCLUDED["<built-in>"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"] = true
FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"] = true
