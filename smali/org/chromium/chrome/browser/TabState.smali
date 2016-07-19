.class public Lorg/chromium/chrome/browser/TabState;
.super Ljava/lang/Object;
.source "TabState.java"


# static fields
.field public static final CONTENTS_STATE_CURRENT_VERSION:I = 0x2

.field public static final SAVED_TAB_STATE_FILE_PREFIX:Ljava/lang/String; = "tab"

.field public static final SAVED_TAB_STATE_FILE_PREFIX_INCOGNITO:Ljava/lang/String; = "cryptonito"

.field private static sChannelNameOverrideForTest:Ljava/lang/String;


# instance fields
.field public contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

.field protected mIsIncognito:Z

.field public openerAppId:Ljava/lang/String;

.field public parentId:I

.field public shouldPreserve:Z

.field public syncId:J

.field public timestampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/TabState;->parentId:I

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/TabState;->timestampMillis:J

    return-void
.end method

.method static synthetic access$000(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/TabState;->nativeRestoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/TabState;->nativeCreateHistoricalTab(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lorg/chromium/chrome/browser/TabState;->nativeFreeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static createSingleNavigationStateAsByteBuffer(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 369
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/TabState;->nativeCreateSingleNavigationStateAsByteBuffer(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static deleteTabState(Ljava/io/File;IZ)V
    .locals 4

    .prologue
    .line 340
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/TabState;->getTabStateFile(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TabState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to delete TabState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    return-void
.end method

.method public static getContentsStateAsByteBuffer(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 379
    invoke-static {p0}, Lorg/chromium/chrome/browser/TabState;->nativeGetContentsStateAsByteBuffer(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getTabStateFile(Ljava/io/File;IZ)Ljava/io/File;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/TabState;->getTabStateFilename(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTabStateFilename(IZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "cryptonito"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "tab"

    goto :goto_0
.end method

.method private static isStableChannelBuild()Z
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "stable"

    sget-object v1, Lorg/chromium/chrome/browser/TabState;->sChannelNameOverrideForTest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isStableBuild()Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeCreateHistoricalTab(Ljava/nio/ByteBuffer;I)V
.end method

.method private static native nativeCreateSingleNavigationStateAsByteBuffer(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeFreeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method private static native nativeGetContentsStateAsByteBuffer(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeGetDisplayTitleFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
.end method

.method private static native nativeGetVirtualUrlFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
.end method

.method private static native nativeRestoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;
.end method

.method public static parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2

    .prologue
    .line 401
    :try_start_0
    const-string/jumbo v0, "cryptonito"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 405
    :cond_0
    const-string/jumbo v0, "tab"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readState(Ljava/io/FileInputStream;Z)Lorg/chromium/chrome/browser/TabState;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/crypto/CipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_6

    .line 196
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    :goto_0
    if-nez v1, :cond_5

    .line 200
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v1

    .line 203
    :goto_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    :goto_2
    return-object v0

    .line 207
    :cond_0
    :try_start_1
    new-instance v6, Lorg/chromium/chrome/browser/TabState;

    invoke-direct {v6}, Lorg/chromium/chrome/browser/TabState;-><init>()V

    .line 208
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/chromium/chrome/browser/TabState;->timestampMillis:J

    .line 209
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 210
    if-eqz p1, :cond_3

    .line 212
    new-array v0, v9, [B

    .line 213
    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 214
    new-instance v1, Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/TabState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 215
    iget-object v1, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    :cond_1
    :goto_3
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v6, Lorg/chromium/chrome/browser/TabState;->parentId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    .line 231
    const-string/jumbo v0, ""

    iget-object v1, v6, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v6, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :cond_2
    :goto_4
    :try_start_3
    iget-object v0, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->setVersion(I)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :goto_5
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/chromium/chrome/browser/TabState;->syncId:J
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    :goto_6
    :try_start_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v6, Lorg/chromium/chrome/browser/TabState;->shouldPreserve:Z
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    :goto_7
    :try_start_6
    iput-boolean p1, v6, Lorg/chromium/chrome/browser/TabState;->mIsIncognito:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    move-object v0, v6

    goto :goto_2

    .line 218
    :cond_3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 219
    new-instance v10, Lorg/chromium/chrome/browser/TabState$WebContentsState;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    int-to-long v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v10, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 222
    int-to-long v0, v9

    invoke-virtual {p0, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    .line 223
    int-to-long v2, v9

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 224
    const-string/jumbo v2, "TabState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Only skipped "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " should\'ve been skipped. Tab restore may fail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 266
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    throw v0

    .line 234
    :catch_0
    move-exception v0

    :try_start_8
    const-string/jumbo v0, "TabState"

    const-string/jumbo v1, "Failed to read opener app id state from tab state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 241
    :catch_1
    move-exception v0

    iget-object v1, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-static {}, Lorg/chromium/chrome/browser/TabState;->isStableChannelBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_8
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->setVersion(I)V

    .line 245
    const-string/jumbo v0, "TabState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to read saved state version id from tab state. Assuming version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->version()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 241
    :cond_4
    const/4 v0, 0x1

    goto :goto_8

    .line 251
    :catch_2
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lorg/chromium/chrome/browser/TabState;->syncId:J

    .line 253
    const-string/jumbo v0, "TabState"

    const-string/jumbo v1, "Failed to read syncId from tab state. Assuming syncId is: 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 259
    :catch_3
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, v6, Lorg/chromium/chrome/browser/TabState;->shouldPreserve:Z

    .line 260
    const-string/jumbo v0, "TabState"

    const-string/jumbo v1, "Failed to read shouldPreserve flag from tab state. Assuming shouldPreserve is false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    :cond_5
    move-object v8, v1

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static restoreTabState(Ljava/io/File;I)Lorg/chromium/chrome/browser/TabState;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    .line 148
    invoke-static {p0, p1, v2}, Lorg/chromium/chrome/browser/TabState;->getTabStateFile(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-static {p0, p1, v1}, Lorg/chromium/chrome/browser/TabState;->getTabStateFile(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_1
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/TabState;->restoreTabState(Ljava/io/File;Z)Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static restoreTabState(Ljava/io/File;Z)Lorg/chromium/chrome/browser/TabState;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 170
    .line 173
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/TabState;->readState(Ljava/io/FileInputStream;Z)Lorg/chromium/chrome/browser/TabState;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 180
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string/jumbo v2, "TabState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to restore tab state for tab: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 178
    :goto_2
    :try_start_3
    const-string/jumbo v3, "TabState"

    const-string/jumbo v4, "Failed to restore tab state."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    invoke-static {v2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 177
    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    .line 176
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static saveState(Ljava/io/FileOutputStream;Lorg/chromium/chrome/browser/TabState;Z)V
    .locals 4

    .prologue
    .line 278
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-eqz p2, :cond_3

    .line 284
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/crypto/CipherFactory;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 299
    :goto_1
    if-eqz p2, :cond_2

    .line 300
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 302
    :cond_2
    iget-wide v2, p1, Lorg/chromium/chrome/browser/TabState;->timestampMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 303
    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 304
    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    if-eqz p2, :cond_4

    .line 306
    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 307
    iget-object v2, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 312
    :goto_2
    iget v0, p1, Lorg/chromium/chrome/browser/TabState;->parentId:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 313
    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 314
    iget-object v0, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->version()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    iget-wide v2, p1, Lorg/chromium/chrome/browser/TabState;->syncId:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 316
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/TabState;->shouldPreserve:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 295
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    goto :goto_1

    .line 310
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 318
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 313
    :cond_5
    :try_start_2
    const-string/jumbo v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static setChannelNameOverrideForTest(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    sput-object p0, Lorg/chromium/chrome/browser/TabState;->sChannelNameOverrideForTest:Ljava/lang/String;

    .line 423
    return-void
.end method


# virtual methods
.method public getDisplayTitleFromState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->version()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/TabState;->nativeGetDisplayTitleFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualUrlFromState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->version()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/TabState;->nativeGetVirtualUrlFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/TabState;->mIsIncognito:Z

    return v0
.end method
