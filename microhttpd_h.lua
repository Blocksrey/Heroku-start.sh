local ffi = require("ffi")
if nil == FFI_INCLUDED then
	FFI_INCLUDED = {}
end
if not FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h"] then
ffi.cdef[[
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;

]]
end
if not FFI_INCLUDED["/usr/include/stdint.h"] then
ffi.cdef[[
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
typedef long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long int uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef long int intmax_t;
typedef unsigned long int uintmax_t;

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
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/types.h"] then
ffi.cdef[[
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;

]]
end
if not FFI_INCLUDED["/usr/include/time.h"] then
ffi.cdef[[
typedef __clock_t clock_t;
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;

]]
end
if not FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"] then
ffi.cdef[[
typedef long unsigned int size_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/types.h"] then
ffi.cdef[[
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));
typedef int register_t __attribute__ ((__mode__ (__word__)));

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/byteswap.h"] then
ffi.cdef[[
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sigset.h"] then
ffi.cdef[[
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/select.h"] then
ffi.cdef[[
typedef __sigset_t sigset_t;

]]
end
if not FFI_INCLUDED["/usr/include/time.h"] then
ffi.cdef[[
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/time.h"] then
ffi.cdef[[
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/select.h"] then
ffi.cdef[[
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/sysmacros.h"] then
ffi.cdef[[
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/types.h"] then
ffi.cdef[[
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"] then
ffi.cdef[[
typedef unsigned long int pthread_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    short __spins;
    short __elision;
    __pthread_list_t __list;
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;
    unsigned char __pad1[7];
    unsigned long int __pad2;
    unsigned int __flags;
  } __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;

]]
end
if not FFI_INCLUDED["/usr/include/unistd.h"] then
ffi.cdef[[
typedef __useconds_t useconds_t;
typedef __socklen_t socklen_t;
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
extern char **__environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void _exit (int __status) __attribute__ ((__noreturn__));

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/confname.h"] then
ffi.cdef[[
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };

]]
end
if not FFI_INCLUDED["/usr/include/unistd.h"] then
ffi.cdef[[
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

]]
end
if not FFI_INCLUDED["/usr/include/getopt.h"] then
ffi.cdef[[
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));

]]
end
if not FFI_INCLUDED["/usr/include/unistd.h"] then
ffi.cdef[[
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));
extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int lockf (int __fd, int __cmd, __off_t __len) ;
extern int fdatasync (int __fildes);

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/time.h"] then
ffi.cdef[[
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };
typedef struct timezone *__restrict __timezone_ptr_t;
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));
extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));
enum __itimer_which
  {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));
extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));
extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/uio.h"] then
ffi.cdef[[
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/uio.h"] then
ffi.cdef[[
extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  ;
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  ;
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count,
         __off_t __offset) ;
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count,
   __off_t __offset) ;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/socket_type.h"] then
ffi.cdef[[
enum __socket_type
{
  SOCK_STREAM = 1,
  SOCK_DGRAM = 2,
  SOCK_RAW = 3,
  SOCK_RDM = 4,
  SOCK_SEQPACKET = 5,
  SOCK_DCCP = 6,
  SOCK_PACKET = 10,
  SOCK_CLOEXEC = 02000000,
  SOCK_NONBLOCK = 00004000
};

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sockaddr.h"] then
ffi.cdef[[
typedef unsigned short int sa_family_t;

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/socket.h"] then
ffi.cdef[[
struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
struct sockaddr_storage
  {
    sa_family_t ss_family;
    char __ss_padding[(128 - (sizeof (unsigned short int)) - sizeof (unsigned long int))];
    unsigned long int __ss_align;
  };
enum
  {
    MSG_OOB = 0x01,
    MSG_PEEK = 0x02,
    MSG_DONTROUTE = 0x04,
    MSG_CTRUNC = 0x08,
    MSG_PROXY = 0x10,
    MSG_TRUNC = 0x20,
    MSG_DONTWAIT = 0x40,
    MSG_EOR = 0x80,
    MSG_WAITALL = 0x100,
    MSG_FIN = 0x200,
    MSG_SYN = 0x400,
    MSG_CONFIRM = 0x800,
    MSG_RST = 0x1000,
    MSG_ERRQUEUE = 0x2000,
    MSG_NOSIGNAL = 0x4000,
    MSG_MORE = 0x8000,
    MSG_WAITFORONE = 0x10000,
    MSG_BATCH = 0x40000,
    MSG_FASTOPEN = 0x20000000,
    MSG_CMSG_CLOEXEC = 0x40000000
  };
struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  {
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
enum
  {
    SCM_RIGHTS = 0x01
  };

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/socket.h"] then
ffi.cdef[[
struct linger
  {
    int l_onoff;
    int l_linger;
  };

]]
end
if not FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/socket.h"] then
ffi.cdef[[
struct osockaddr
  {
    unsigned short int sa_family;
    unsigned char sa_data[14];
  };
enum
{
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));
extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));

]]
end
if not FFI_INCLUDED["microhttpd/microhttpd.h"] then
ffi.cdef[[
enum MHD_Result
{
  MHD_NO = 0,
  MHD_YES = 1
};
typedef int MHD_socket;
extern const char *
MHD_get_reason_phrase_for (unsigned int code);
struct MHD_Daemon;
struct MHD_Connection;
struct MHD_Response;
struct MHD_PostProcessor;
enum MHD_FLAG
{
  MHD_NO_FLAG = 0,
  MHD_USE_ERROR_LOG = 1,
  MHD_USE_DEBUG = 1,
  MHD_USE_TLS = 2,
  MHD_USE_SSL = 2,
  MHD_USE_THREAD_PER_CONNECTION = 4,
  MHD_USE_INTERNAL_POLLING_THREAD = 8,
  MHD_USE_SELECT_INTERNALLY = 8,
  MHD_USE_IPv6 = 16,
  MHD_USE_PEDANTIC_CHECKS = 32,
  MHD_USE_POLL = 64,
  MHD_USE_POLL_INTERNAL_THREAD = MHD_USE_POLL | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_POLL_INTERNALLY = MHD_USE_POLL | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_SUPPRESS_DATE_NO_CLOCK = 128,
  MHD_SUPPRESS_DATE_NO_CLOCK = 128,
  MHD_USE_NO_LISTEN_SOCKET = 256,
  MHD_USE_EPOLL = 512,
  MHD_USE_EPOLL_LINUX_ONLY = 512,
  MHD_USE_EPOLL_INTERNAL_THREAD = MHD_USE_EPOLL
                                  | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_EPOLL_INTERNALLY = MHD_USE_EPOLL | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_EPOLL_INTERNALLY_LINUX_ONLY = MHD_USE_EPOLL
                                        | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_ITC = 1024,
  MHD_USE_PIPE_FOR_SHUTDOWN = 1024,
  MHD_USE_DUAL_STACK = MHD_USE_IPv6 | 2048,
  MHD_USE_TURBO = 4096,
  MHD_USE_EPOLL_TURBO = 4096,
  MHD_ALLOW_SUSPEND_RESUME = 8192 | MHD_USE_ITC,
  MHD_USE_SUSPEND_RESUME = 8192 | MHD_USE_ITC,
  MHD_USE_TCP_FASTOPEN = 16384,
  MHD_ALLOW_UPGRADE = 32768,
  MHD_USE_AUTO = 65536,
  MHD_USE_AUTO_INTERNAL_THREAD = MHD_USE_AUTO | MHD_USE_INTERNAL_POLLING_THREAD,
  MHD_USE_POST_HANDSHAKE_AUTH_SUPPORT = 1U << 17,
  MHD_USE_INSECURE_TLS_EARLY_DATA = 1U << 18
};
typedef void
(*MHD_LogCallback)(void *cls,
                   const char *fm,
                   va_list ap);
typedef int
(*MHD_PskServerCredentialsCallback)(void *cls,
                                    const struct MHD_Connection *connection,
                                    const char *username,
                                    void **psk,
                                    size_t *psk_size);
enum MHD_OPTION
{
  MHD_OPTION_END = 0,
  MHD_OPTION_CONNECTION_MEMORY_LIMIT = 1,
  MHD_OPTION_CONNECTION_LIMIT = 2,
  MHD_OPTION_CONNECTION_TIMEOUT = 3,
  MHD_OPTION_NOTIFY_COMPLETED = 4,
  MHD_OPTION_PER_IP_CONNECTION_LIMIT = 5,
  MHD_OPTION_SOCK_ADDR = 6,
  MHD_OPTION_URI_LOG_CALLBACK = 7,
  MHD_OPTION_HTTPS_MEM_KEY = 8,
  MHD_OPTION_HTTPS_MEM_CERT = 9,
  MHD_OPTION_HTTPS_CRED_TYPE = 10,
  MHD_OPTION_HTTPS_PRIORITIES = 11,
  MHD_OPTION_LISTEN_SOCKET = 12,
  MHD_OPTION_EXTERNAL_LOGGER = 13,
  MHD_OPTION_THREAD_POOL_SIZE = 14,
  MHD_OPTION_ARRAY = 15,
  MHD_OPTION_UNESCAPE_CALLBACK = 16,
  MHD_OPTION_DIGEST_AUTH_RANDOM = 17,
  MHD_OPTION_NONCE_NC_SIZE = 18,
  MHD_OPTION_THREAD_STACK_SIZE = 19,
  MHD_OPTION_HTTPS_MEM_TRUST = 20,
  MHD_OPTION_CONNECTION_MEMORY_INCREMENT = 21,
  MHD_OPTION_HTTPS_CERT_CALLBACK = 22,
  MHD_OPTION_TCP_FASTOPEN_QUEUE_SIZE = 23,
  MHD_OPTION_HTTPS_MEM_DHPARAMS = 24,
  MHD_OPTION_LISTENING_ADDRESS_REUSE = 25,
  MHD_OPTION_HTTPS_KEY_PASSWORD = 26,
  MHD_OPTION_NOTIFY_CONNECTION = 27,
  MHD_OPTION_LISTEN_BACKLOG_SIZE = 28,
  MHD_OPTION_STRICT_FOR_CLIENT = 29,
  MHD_OPTION_GNUTLS_PSK_CRED_HANDLER = 30,
  MHD_OPTION_HTTPS_CERT_CALLBACK2 = 31,
  MHD_OPTION_SERVER_INSANITY = 32
};
enum MHD_DisableSanityCheck
{
  MHD_DSC_SANE = 0
};
struct MHD_OptionItem
{
  enum MHD_OPTION option;
  intptr_t value;
  void *ptr_value;
};
enum MHD_ValueKind
{
  MHD_RESPONSE_HEADER_KIND = 0,
  MHD_HEADER_KIND = 1,
  MHD_COOKIE_KIND = 2,
  MHD_POSTDATA_KIND = 4,
  MHD_GET_ARGUMENT_KIND = 8,
  MHD_FOOTER_KIND = 16
};
enum MHD_RequestTerminationCode
{
  MHD_REQUEST_TERMINATED_COMPLETED_OK = 0,
  MHD_REQUEST_TERMINATED_WITH_ERROR = 1,
  MHD_REQUEST_TERMINATED_TIMEOUT_REACHED = 2,
  MHD_REQUEST_TERMINATED_DAEMON_SHUTDOWN = 3,
  MHD_REQUEST_TERMINATED_READ_ERROR = 4,
  MHD_REQUEST_TERMINATED_CLIENT_ABORT = 5
};
enum MHD_ConnectionNotificationCode
{
  MHD_CONNECTION_NOTIFY_STARTED = 0,
  MHD_CONNECTION_NOTIFY_CLOSED = 1
};
union MHD_ConnectionInfo
{
  int cipher_algorithm;
  int protocol;
  int suspended;
  unsigned int connection_timeout;
  MHD_socket connect_fd;
  size_t header_size;
  void * tls_session;
  void * client_cert;
  struct sockaddr *client_addr;
  struct MHD_Daemon *daemon;
  void *socket_context;
};
enum MHD_ConnectionInfoType
{
  MHD_CONNECTION_INFO_CIPHER_ALGO,
  MHD_CONNECTION_INFO_PROTOCOL,
  MHD_CONNECTION_INFO_CLIENT_ADDRESS,
  MHD_CONNECTION_INFO_GNUTLS_SESSION,
  MHD_CONNECTION_INFO_GNUTLS_CLIENT_CERT,
  MHD_CONNECTION_INFO_DAEMON,
  MHD_CONNECTION_INFO_CONNECTION_FD,
  MHD_CONNECTION_INFO_SOCKET_CONTEXT,
  MHD_CONNECTION_INFO_CONNECTION_SUSPENDED,
  MHD_CONNECTION_INFO_CONNECTION_TIMEOUT,
  MHD_CONNECTION_INFO_REQUEST_HEADER_SIZE
};
enum MHD_DaemonInfoType
{
  MHD_DAEMON_INFO_KEY_SIZE,
  MHD_DAEMON_INFO_MAC_KEY_SIZE,
  MHD_DAEMON_INFO_LISTEN_FD,
  MHD_DAEMON_INFO_EPOLL_FD_LINUX_ONLY,
  MHD_DAEMON_INFO_EPOLL_FD = MHD_DAEMON_INFO_EPOLL_FD_LINUX_ONLY,
  MHD_DAEMON_INFO_CURRENT_CONNECTIONS,
  MHD_DAEMON_INFO_FLAGS,
  MHD_DAEMON_INFO_BIND_PORT
};
typedef void
(*MHD_PanicCallback) (void *cls,
                      const char *file,
                      unsigned int line,
                      const char *reason);
typedef enum MHD_Result
(*MHD_AcceptPolicyCallback)(void *cls,
                            const struct sockaddr *addr,
                            socklen_t addrlen);
typedef enum MHD_Result
(*MHD_AccessHandlerCallback)(void *cls,
                             struct MHD_Connection *connection,
                             const char *url,
                             const char *method,
                             const char *version,
                             const char *upload_data,
                             size_t *upload_data_size,
                             void **con_cls);
typedef void
(*MHD_RequestCompletedCallback) (void *cls,
                                 struct MHD_Connection *connection,
                                 void **con_cls,
                                 enum MHD_RequestTerminationCode toe);
typedef void
(*MHD_NotifyConnectionCallback) (void *cls,
                                 struct MHD_Connection *connection,
                                 void **socket_context,
                                 enum MHD_ConnectionNotificationCode toe);
typedef enum MHD_Result
(*MHD_KeyValueIterator)(void *cls,
                        enum MHD_ValueKind kind,
                        const char *key,
                        const char *value);
typedef enum MHD_Result
(*MHD_KeyValueIteratorN)(void *cls,
                         enum MHD_ValueKind kind,
                         const char *key,
                         size_t key_size,
                         const char *value,
                         size_t value_size);
typedef ssize_t
(*MHD_ContentReaderCallback) (void *cls,
                              uint64_t pos,
                              char *buf,
                              size_t max);
typedef void
(*MHD_ContentReaderFreeCallback) (void *cls);
typedef enum MHD_Result
(*MHD_PostDataIterator)(void *cls,
                        enum MHD_ValueKind kind,
                        const char *key,
                        const char *filename,
                        const char *content_type,
                        const char *transfer_encoding,
                        const char *data,
                        uint64_t off,
                        size_t size);
extern struct MHD_Daemon *
MHD_start_daemon_va (unsigned int flags,
                     uint16_t port,
                     MHD_AcceptPolicyCallback apc, void *apc_cls,
                     MHD_AccessHandlerCallback dh, void *dh_cls,
                     va_list ap);
extern struct MHD_Daemon *
MHD_start_daemon (unsigned int flags,
                  uint16_t port,
                  MHD_AcceptPolicyCallback apc, void *apc_cls,
                  MHD_AccessHandlerCallback dh, void *dh_cls,
                  ...);
extern MHD_socket
MHD_quiesce_daemon (struct MHD_Daemon *daemon);
extern void
MHD_stop_daemon (struct MHD_Daemon *daemon);
extern enum MHD_Result
MHD_add_connection (struct MHD_Daemon *daemon,
                    MHD_socket client_socket,
                    const struct sockaddr *addr,
                    socklen_t addrlen);
extern enum MHD_Result
MHD_get_fdset (struct MHD_Daemon *daemon,
               fd_set *read_fd_set,
               fd_set *write_fd_set,
               fd_set *except_fd_set,
               MHD_socket *max_fd);
extern enum MHD_Result
MHD_get_fdset2 (struct MHD_Daemon *daemon,
                fd_set *read_fd_set,
                fd_set *write_fd_set,
                fd_set *except_fd_set,
                MHD_socket *max_fd,
                unsigned int fd_setsize);
extern enum MHD_Result
MHD_get_timeout (struct MHD_Daemon *daemon,
                 unsigned long long *timeout);
extern enum MHD_Result
MHD_run (struct MHD_Daemon *daemon);
extern enum MHD_Result
MHD_run_from_select (struct MHD_Daemon *daemon,
                     const fd_set *read_fd_set,
                     const fd_set *write_fd_set,
                     const fd_set *except_fd_set);
extern int
MHD_get_connection_values (struct MHD_Connection *connection,
                           enum MHD_ValueKind kind,
                           MHD_KeyValueIterator iterator,
                           void *iterator_cls);
extern int
MHD_get_connection_values_n (struct MHD_Connection *connection,
                             enum MHD_ValueKind kind,
                             MHD_KeyValueIteratorN iterator,
                             void *iterator_cls);
extern enum MHD_Result
MHD_set_connection_value (struct MHD_Connection *connection,
                          enum MHD_ValueKind kind,
                          const char *key,
                          const char *value);
extern enum MHD_Result
MHD_set_connection_value_n (struct MHD_Connection *connection,
                            enum MHD_ValueKind kind,
                            const char *key,
                            size_t key_size,
                            const char *value,
                            size_t value_size);
extern void
MHD_set_panic_func (MHD_PanicCallback cb, void *cls);
extern size_t
MHD_http_unescape (char *val);
extern const char *
MHD_lookup_connection_value (struct MHD_Connection *connection,
                             enum MHD_ValueKind kind,
                             const char *key);
extern enum MHD_Result
MHD_lookup_connection_value_n (struct MHD_Connection *connection,
                               enum MHD_ValueKind kind,
                               const char *key,
                               size_t key_size,
                               const char **value_ptr,
                               size_t *value_size_ptr);
extern enum MHD_Result
MHD_queue_response (struct MHD_Connection *connection,
                    unsigned int status_code,
                    struct MHD_Response *response);
extern void
MHD_suspend_connection (struct MHD_Connection *connection);
extern void
MHD_resume_connection (struct MHD_Connection *connection);
enum MHD_ResponseFlags
{
  MHD_RF_NONE = 0,
  MHD_RF_HTTP_VERSION_1_0_ONLY = 1,
  MHD_RF_HTTP_VERSION_1_0_RESPONSE = 2,
  MHD_RF_INSANITY_HEADER_CONTENT_LENGTH = 4
};
enum MHD_ResponseOptions
{
  MHD_RO_END = 0
};
extern enum MHD_Result
MHD_set_response_options (struct MHD_Response *response,
                          enum MHD_ResponseFlags flags,
                          ...);
extern struct MHD_Response *
MHD_create_response_from_callback (uint64_t size,
                                   size_t block_size,
                                   MHD_ContentReaderCallback crc, void *crc_cls,
                                   MHD_ContentReaderFreeCallback crfc);
__attribute__((deprecated ("MHD_create_response_from_data() is deprecated, use MHD_create_response_from_buffer()")))
  extern struct MHD_Response *
MHD_create_response_from_data (size_t size,
                               void *data,
                               int must_free,
                               int must_copy);
enum MHD_ResponseMemoryMode
{
  MHD_RESPMEM_PERSISTENT,
  MHD_RESPMEM_MUST_FREE,
  MHD_RESPMEM_MUST_COPY
};
extern struct MHD_Response *
MHD_create_response_from_buffer (size_t size,
                                 void *buffer,
                                 enum MHD_ResponseMemoryMode mode);
extern struct MHD_Response *
MHD_create_response_from_buffer_with_free_callback (size_t size,
                                                    void *buffer,
                                                    MHD_ContentReaderFreeCallback
                                                    crfc);
extern struct MHD_Response *
MHD_create_response_from_fd (size_t size,
                             int fd);
extern struct MHD_Response *
MHD_create_response_from_pipe (int fd);
extern struct MHD_Response *
MHD_create_response_from_fd64 (uint64_t size,
                               int fd);
__attribute__((deprecated ("Function MHD_create_response_from_fd_at_offset() is deprecated, use MHD_create_response_from_fd_at_offset64()")))
  extern struct MHD_Response *
MHD_create_response_from_fd_at_offset (size_t size,
                                       int fd,
                                       off_t offset);
extern struct MHD_Response *
MHD_create_response_from_fd_at_offset64 (uint64_t size,
                                         int fd,
                                         uint64_t offset);
enum MHD_UpgradeAction
{
  MHD_UPGRADE_ACTION_CLOSE = 0,
  MHD_UPGRADE_ACTION_CORK_ON = 1,
  MHD_UPGRADE_ACTION_CORK_OFF = 2
};
struct MHD_UpgradeResponseHandle;
extern enum MHD_Result
MHD_upgrade_action (struct MHD_UpgradeResponseHandle *urh,
                    enum MHD_UpgradeAction action,
                    ...);
typedef void
(*MHD_UpgradeHandler)(void *cls,
                      struct MHD_Connection *connection,
                      void *con_cls,
                      const char *extra_in,
                      size_t extra_in_size,
                      MHD_socket sock,
                      struct MHD_UpgradeResponseHandle *urh);
extern struct MHD_Response *
MHD_create_response_for_upgrade (MHD_UpgradeHandler upgrade_handler,
                                 void *upgrade_handler_cls);
extern void
MHD_destroy_response (struct MHD_Response *response);
extern enum MHD_Result
MHD_add_response_header (struct MHD_Response *response,
                         const char *header,
                         const char *content);
extern enum MHD_Result
MHD_add_response_footer (struct MHD_Response *response,
                         const char *footer,
                         const char *content);
extern enum MHD_Result
MHD_del_response_header (struct MHD_Response *response,
                         const char *header,
                         const char *content);
extern int
MHD_get_response_headers (struct MHD_Response *response,
                          MHD_KeyValueIterator iterator,
                          void *iterator_cls);
extern const char *
MHD_get_response_header (struct MHD_Response *response,
                         const char *key);
extern struct MHD_PostProcessor *
MHD_create_post_processor (struct MHD_Connection *connection,
                           size_t buffer_size,
                           MHD_PostDataIterator iter, void *iter_cls);
extern enum MHD_Result
MHD_post_process (struct MHD_PostProcessor *pp,
                  const char *post_data, size_t post_data_len);
extern enum MHD_Result
MHD_destroy_post_processor (struct MHD_PostProcessor *pp);
extern char *
MHD_digest_auth_get_username (struct MHD_Connection *connection);
extern void
MHD_free (void *ptr);
enum MHD_DigestAuthAlgorithm
{
  MHD_DIGEST_ALG_AUTO = 0,
  MHD_DIGEST_ALG_MD5,
  MHD_DIGEST_ALG_SHA256
};
extern int
MHD_digest_auth_check2 (struct MHD_Connection *connection,
                        const char *realm,
                        const char *username,
                        const char *password,
                        unsigned int nonce_timeout,
                        enum MHD_DigestAuthAlgorithm algo);
extern int
MHD_digest_auth_check (struct MHD_Connection *connection,
                       const char *realm,
                       const char *username,
                       const char *password,
                       unsigned int nonce_timeout);
extern int
MHD_digest_auth_check_digest2 (struct MHD_Connection *connection,
                               const char *realm,
                               const char *username,
                               const uint8_t *digest,
                               size_t digest_size,
                               unsigned int nonce_timeout,
                               enum MHD_DigestAuthAlgorithm algo);
extern int
MHD_digest_auth_check_digest (struct MHD_Connection *connection,
                              const char *realm,
                              const char *username,
                              const uint8_t digest[16],
                              unsigned int nonce_timeout);
extern enum MHD_Result
MHD_queue_auth_fail_response2 (struct MHD_Connection *connection,
                               const char *realm,
                               const char *opaque,
                               struct MHD_Response *response,
                               int signal_stale,
                               enum MHD_DigestAuthAlgorithm algo);
extern enum MHD_Result
MHD_queue_auth_fail_response (struct MHD_Connection *connection,
                              const char *realm,
                              const char *opaque,
                              struct MHD_Response *response,
                              int signal_stale);
extern char *
MHD_basic_auth_get_username_password (struct MHD_Connection *connection,
                                      char**password);
extern enum MHD_Result
MHD_queue_basic_auth_fail_response (struct MHD_Connection *connection,
                                    const char *realm,
                                    struct MHD_Response *response);
extern const union MHD_ConnectionInfo *
MHD_get_connection_info (struct MHD_Connection *connection,
                         enum MHD_ConnectionInfoType info_type,
                         ...);
enum MHD_CONNECTION_OPTION
{
  MHD_CONNECTION_OPTION_TIMEOUT
};
extern enum MHD_Result
MHD_set_connection_option (struct MHD_Connection *connection,
                           enum MHD_CONNECTION_OPTION option,
                           ...);
union MHD_DaemonInfo
{
  size_t key_size;
  size_t mac_key_size;
  MHD_socket listen_fd;
  uint16_t port;
  int epoll_fd;
  unsigned int num_connections;
  enum MHD_FLAG flags;
};
extern const union MHD_DaemonInfo *
MHD_get_daemon_info (struct MHD_Daemon *daemon,
                     enum MHD_DaemonInfoType info_type,
                     ...);
extern const char*
MHD_get_version (void);
enum MHD_FEATURE
{
  MHD_FEATURE_MESSAGES = 1,
  MHD_FEATURE_TLS = 2,
  MHD_FEATURE_SSL = 2,
  MHD_FEATURE_HTTPS_CERT_CALLBACK = 3,
  MHD_FEATURE_IPv6 = 4,
  MHD_FEATURE_IPv6_ONLY = 5,
  MHD_FEATURE_POLL = 6,
  MHD_FEATURE_EPOLL = 7,
  MHD_FEATURE_SHUTDOWN_LISTEN_SOCKET = 8,
  MHD_FEATURE_SOCKETPAIR = 9,
  MHD_FEATURE_TCP_FASTOPEN = 10,
  MHD_FEATURE_BASIC_AUTH = 11,
  MHD_FEATURE_DIGEST_AUTH = 12,
  MHD_FEATURE_POSTPROCESSOR = 13,
  MHD_FEATURE_HTTPS_KEY_PASSWORD = 14,
  MHD_FEATURE_LARGE_FILE = 15,
  MHD_FEATURE_THREAD_NAMES = 16,
  MHD_THREAD_NAMES = 16,
  MHD_FEATURE_UPGRADE = 17,
  MHD_FEATURE_RESPONSES_SHARED_FD = 18,
  MHD_FEATURE_AUTODETECT_BIND_PORT = 19,
  MHD_FEATURE_AUTOSUPPRESS_SIGPIPE = 20,
  MHD_FEATURE_SENDFILE = 21,
  MHD_FEATURE_THREADS = 22,
  MHD_FEATURE_HTTPS_CERT_CALLBACK2 = 23
};
extern enum MHD_Result
MHD_is_feature_supported (enum MHD_FEATURE feature);

]]
end
FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stdint.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sigset.h"] = true
FFI_INCLUDED["/usr/include/time.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/select.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/wchar.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/time.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/confname.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/socket_type.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/time.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/byteswap-16.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/byteswap.h"] = true
FFI_INCLUDED["/usr/include/stdint.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/socket.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/sysmacros.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/types.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/uio.h"] = true
FFI_INCLUDED["/usr/include/features.h"] = true
FFI_INCLUDED["/usr/include/stdc-predef.h"] = true
FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stddef.h"] = true
FFI_INCLUDED["/usr/include/endian.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/environments.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/gnu/stubs.h"] = true
FFI_INCLUDED["microhttpd/microhttpd.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/cdefs.h"] = true
FFI_INCLUDED["<command-line>"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/sys/types.h"] = true
FFI_INCLUDED["/usr/lib/gcc/x86_64-linux-gnu/6/include/stdarg.h"] = true
FFI_INCLUDED["/usr/include/getopt.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/asm/sockios.h"] = true
FFI_INCLUDED["/usr/include/asm-generic/sockios.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/asm/socket.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/wordsize.h"] = true
FFI_INCLUDED["/usr/include/asm-generic/socket.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/typesizes.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/posix_opt.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/endian.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/socket.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/uio.h"] = true
FFI_INCLUDED["/usr/include/unistd.h"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/sockaddr.h"] = true
FFI_INCLUDED["<built-in>"] = true
FFI_INCLUDED["/usr/include/x86_64-linux-gnu/bits/select.h"] = true
