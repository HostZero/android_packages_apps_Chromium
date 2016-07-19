.class public Lorg/chromium/chrome/browser/cookies/CookiesFetcher;
.super Ljava/lang/Object;
.source "CookiesFetcher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCleanupReference:Lorg/chromium/content/common/CleanupReference;

.field private final mContext:Landroid/content/Context;

.field private final mNativeCookiesFetcher:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mNativeCookiesFetcher:J

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lorg/chromium/content/common/CleanupReference;

    new-instance v1, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mNativeCookiesFetcher:J

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$DestroyRunnable;-><init>(JLorg/chromium/chrome/browser/cookies/CookiesFetcher$1;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->fetchFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->scheduleDeleteCookiesFile()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mNativeCookiesFetcher:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p17}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativeRestoreCookies(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->saveFetchedCookiesToDisk([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V

    return-void
.end method

.method static synthetic access$600(J)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativeDestroy(J)V

    return-void
.end method

.method private createCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
    .locals 16

    .prologue
    .line 207
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V

    return-object v0
.end method

.method private createCookiesArray(I)[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
    .locals 1

    .prologue
    .line 293
    new-array v0, p1, [Lorg/chromium/chrome/browser/cookies/CanonicalCookie;

    return-object v0
.end method

.method public static deleteCookiesIfNecessary(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    :try_start_0
    new-instance v1, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/profiles/Profile;->hasOffTheRecordProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-direct {v1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->scheduleDeleteCookiesFile()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private fetchFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-boolean v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "COOKIES.DAT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativePersistCookies(J)V
.end method

.method private native nativeRestoreCookies(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZZI)V
.end method

.method private onCookieFetchFinished([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;-><init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void
.end method

.method public static persistCookies(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->persistCookiesInternal()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private persistCookiesInternal()V
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->mNativeCookiesFetcher:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->nativePersistCookies(J)V

    .line 99
    return-void
.end method

.method public static restoreCookies(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-static {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->deleteCookiesIfNecessary(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {v0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->restoreCookiesInternal()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private restoreCookiesInternal()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;-><init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method private saveFetchedCookiesToDisk([Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 6

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/crypto/CipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 237
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    const-string/jumbo v1, "c0Ok135"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 240
    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 241
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->saveToStream(Ljava/io/DataOutputStream;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 244
    invoke-direct {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->fetchFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/base/ImportantFileWriterAndroid;->writeFileAtomically(Ljava/lang/String;[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cookie Fetch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    const-string/jumbo v0, "CookiesFetcher"

    const-string/jumbo v1, "IOException during Cookie Fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :catch_2
    move-exception v0

    .line 250
    :goto_3
    :try_start_4
    const-string/jumbo v2, "CookiesFetcher"

    const-string/jumbo v3, "Error storing cookies."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 255
    :catch_3
    move-exception v0

    const-string/jumbo v0, "CookiesFetcher"

    const-string/jumbo v1, "IOException during Cookie Fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 256
    :cond_3
    :goto_5
    throw v0

    .line 255
    :catch_4
    move-exception v1

    const-string/jumbo v1, "CookiesFetcher"

    const-string/jumbo v2, "IOException during Cookie Fetch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 252
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 249
    :catch_5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 248
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private scheduleDeleteCookiesFile()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;-><init>(Lorg/chromium/chrome/browser/cookies/CookiesFetcher;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method
