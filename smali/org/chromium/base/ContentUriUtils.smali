.class public abstract Lorg/chromium/base/ContentUriUtils;
.super Ljava/lang/Object;
.source "ContentUriUtils.java"


# static fields
.field private static sFileProviderUtil:Lorg/chromium/base/ContentUriUtils$FileProviderUtil;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/ContentUriUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentUriExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    invoke-static {p0, p1}, Lorg/chromium/base/ContentUriUtils;->getParcelFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lorg/chromium/base/ContentUriUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lorg/chromium/base/ContentUriUtils;->sFileProviderUtil:Lorg/chromium/base/ContentUriUtils$FileProviderUtil;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lorg/chromium/base/ContentUriUtils;->sFileProviderUtil:Lorg/chromium/base/ContentUriUtils$FileProviderUtil;

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/ContentUriUtils$FileProviderUtil;->getContentUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v1

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    monitor-exit v1

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const-string/jumbo v0, ""

    .line 158
    :cond_1
    :goto_0
    return-object v0

    .line 144
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 146
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 149
    if-ltz v0, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 156
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    const-string/jumbo v0, ""

    .line 156
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParcelFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 115
    const/4 v0, 0x0

    .line 117
    :try_start_0
    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    const-string/jumbo v2, "ContentUriUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot find content uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    .line 121
    const-string/jumbo v2, "ContentUriUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot open content uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    :catch_2
    move-exception v1

    .line 123
    const-string/jumbo v2, "ContentUriUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown content uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    :catch_3
    move-exception v1

    .line 125
    const-string/jumbo v2, "ContentUriUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown content uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static openContentUriForRead(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 70
    invoke-static {p0, p1}, Lorg/chromium/base/ContentUriUtils;->getParcelFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setFileProviderUtil(Lorg/chromium/base/ContentUriUtils$FileProviderUtil;)V
    .locals 2

    .prologue
    .line 46
    sget-object v1, Lorg/chromium/base/ContentUriUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sput-object p0, Lorg/chromium/base/ContentUriUtils;->sFileProviderUtil:Lorg/chromium/base/ContentUriUtils$FileProviderUtil;

    .line 48
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
