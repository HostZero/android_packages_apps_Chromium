.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DUMMY_KEY_ID:[B

.field private static final HEX_CHAR_LOOKUP:[C


# instance fields
.field private mMediaCryptoSession:[B

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mNativeMediaDrmBridge:J

.field private mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

.field private mProvisioningPending:Z

.field private mResetDeviceCredentialsPending:Z

.field private mSchemeUUID:Ljava/util/UUID;

.field private mSessionIds:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    .line 56
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    .line 62
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->DUMMY_KEY_ID:[B

    return-void

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    .line 188
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 190
    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 191
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 195
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 196
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 198
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$EventListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$EventListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 201
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "privacyMode"

    const-string/jumbo v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "sessionSharing"

    const-string/jumbo v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method static synthetic access$1000([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/chromium/media/MediaDrmBridge;[B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    return-void
.end method

.method static synthetic access$1500(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/chromium/media/MediaDrmBridge;[BJ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionExpirationUpdate([BJ)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/media/MediaDrmBridge;[B)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    return v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 174
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeSession([BJ)V
    .locals 6

    .prologue
    .line 660
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 661
    const-string/jumbo v0, "closeSession() called when MediaDrm is null."

    invoke-direct {p0, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 682
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid sessionId in closeSession(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 678
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-direct {p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 680
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    .line 681
    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "removeKeys failed: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static create([BLjava/lang/String;J)Lorg/chromium/media/MediaDrmBridge;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 316
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    :try_start_0
    new-instance v1, Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {v1, v2, p2, p3}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;J)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {v1, p1}, Lorg/chromium/media/MediaDrmBridge;->setSecurityLevel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    :cond_2
    invoke-direct {v1}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 344
    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Unsupported DRM scheme"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :catch_1
    move-exception v1

    .line 329
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Failed to create MediaDrmBridge"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    :catch_2
    move-exception v1

    .line 332
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Failed to create MediaDrmBridge"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private createMediaCrypto()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_1
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 227
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v2, :cond_3

    .line 235
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot create MediaCrypto Session."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    move v0, v1

    .line 231
    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    .line 242
    :try_start_1
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    invoke-static {v2}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-direct {v2, v3, v4}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 245
    invoke-direct {p0, v2}, Lorg/chromium/media/MediaDrmBridge;->onMediaCryptoReady(Landroid/media/MediaCrypto;)V

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_4
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Cannot create MediaCrypto for unsupported scheme."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_1
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    goto :goto_0

    .line 250
    :catch_1
    move-exception v2

    .line 251
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot create MediaCrypto"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createSession([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 587
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 588
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "createSession() called when MediaDrm is null."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    const-string/jumbo v0, "MediaDrm released previously."

    invoke-direct {p0, p4, p5, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_1

    .line 594
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 598
    :cond_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 601
    :cond_2
    const/4 v1, 0x0

    .line 603
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v1

    .line 604
    if-nez v1, :cond_4

    .line 605
    const-string/jumbo v0, "Open session failed."

    invoke-direct {p0, p4, p5, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    move v2, v3

    .line 625
    :goto_1
    const-string/jumbo v5, "cr_media"

    const-string/jumbo v6, "Device not provisioned"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v5, v6, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    if-eqz v2, :cond_3

    .line 627
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 629
    :cond_3
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V

    .line 630
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    goto :goto_0

    .line 609
    :cond_4
    :try_start_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 624
    :catch_1
    move-exception v0

    move v2, v4

    goto :goto_1

    .line 612
    :cond_5
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 613
    if-nez v0, :cond_6

    .line 614
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 615
    const-string/jumbo v0, "Generate request failed."

    invoke-direct {p0, p4, p5, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_6
    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    .line 621
    invoke-direct {p0, p4, p5, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(J[B)V

    .line 622
    invoke-direct {p0, v1, v0}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    .line 623
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private createSessionFromNative([BLjava/lang/String;[Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 562
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 563
    if-eqz p3, :cond_1

    .line 564
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Additional data array doesn\'t have equal keys/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 569
    aget-object v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 572
    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;Ljava/util/HashMap;J)V

    .line 573
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 421
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    .line 424
    :cond_0
    return-void
.end method

.method private static getDummyKeysInfo(I)Ljava/util/List;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->DUMMY_KEY_ID:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILorg/chromium/media/MediaDrmBridge$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v0
.end method

.method private getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 490
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 491
    :cond_0
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 494
    :cond_2
    if-nez p4, :cond_4

    .line 495
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 498
    :goto_0
    const/4 v6, 0x0

    .line 501
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_1
    return-object v0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    instance-of v1, v0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v1, :cond_3

    .line 507
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "MediaDrmStateException fired during getKeyRequest()."

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    move-object v5, p4

    goto :goto_0
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 739
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "getSecurityLevel() called when MediaDrm is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v1, "securityLevel"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUUIDFromBytes([B)Ljava/util/UUID;
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/16 v8, 0x10

    const/16 v1, 0x8

    .line 153
    array-length v0, p0

    if-eq v0, v8, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 159
    shl-long/2addr v4, v1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 161
    :goto_2
    if-ge v0, v8, :cond_2

    .line 162
    shl-long/2addr v2, v1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_2
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 2

    .prologue
    .line 297
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isNativeMediaDrmBridgeValid()Z
    .locals 4

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnLegacySessionError(J[BLjava/lang/String;)V
.end method

.method private native nativeOnMediaCryptoReady(JLandroid/media/MediaCrypto;)V
.end method

.method private native nativeOnPromiseRejected(JJLjava/lang/String;)V
.end method

.method private native nativeOnPromiseResolved(JJ)V
.end method

.method private native nativeOnPromiseResolvedWithSession(JJ[B)V
.end method

.method private native nativeOnResetDeviceCredentialsCompleted(JZ)V
.end method

.method private native nativeOnSessionClosed(J[B)V
.end method

.method private native nativeOnSessionExpirationUpdate(J[BJ)V
.end method

.method private native nativeOnSessionKeysChange(J[B[Ljava/lang/Object;Z)V
.end method

.method private native nativeOnSessionMessage(J[BI[BLjava/lang/String;)V
.end method

.method private native nativeOnStartProvisioning(JLjava/lang/String;[B)V
.end method

.method private onLegacySessionError([BLjava/lang/String;)V
    .locals 2

    .prologue
    .line 885
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->nativeOnLegacySessionError(J[BLjava/lang/String;)V

    .line 888
    :cond_0
    return-void
.end method

.method private onMediaCryptoReady(Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 821
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/media/MediaDrmBridge;->nativeOnMediaCryptoReady(JLandroid/media/MediaCrypto;)V

    .line 824
    :cond_0
    return-void
.end method

.method private onPromiseRejected(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 839
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "onPromiseRejected: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseRejected(JJLjava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method private onPromiseResolved(J)V
    .locals 3

    .prologue
    .line 827
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolved(JJ)V

    .line 830
    :cond_0
    return-void
.end method

.method private onPromiseResolvedWithSession(J[B)V
    .locals 7

    .prologue
    .line 833
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolvedWithSession(JJ[B)V

    .line 836
    :cond_0
    return-void
.end method

.method private onResetDeviceCredentialsCompleted(Z)V
    .locals 2

    .prologue
    .line 891
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/media/MediaDrmBridge;->nativeOnResetDeviceCredentialsCompleted(JZ)V

    .line 894
    :cond_0
    return-void
.end method

.method private onSessionClosed([B)V
    .locals 2

    .prologue
    .line 865
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionClosed(J[B)V

    .line 868
    :cond_0
    return-void
.end method

.method private onSessionExpirationUpdate([BJ)V
    .locals 6

    .prologue
    .line 879
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionExpirationUpdate(J[BJ)V

    .line 882
    :cond_0
    return-void
.end method

.method private onSessionKeysChange([B[Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    .line 872
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionKeysChange(J[B[Ljava/lang/Object;Z)V

    .line 876
    :cond_0
    return-void
.end method

.method private onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 8

    .prologue
    .line 847
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 850
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 851
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v5

    .line 860
    :goto_1
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v6

    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionMessage(J[BI[BLjava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private openSession()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 266
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    .line 270
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 283
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Cannot open a new session"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v0, v1

    .line 274
    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 277
    throw v0

    .line 278
    :catch_2
    move-exception v0

    .line 281
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Cannot open a new session"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v0, v1

    .line 283
    goto :goto_0
.end method

.method private processPendingCreateSessionData()V
    .locals 6

    .prologue
    .line 539
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 545
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 547
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->initData()[B
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$600(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B

    move-result-object v1

    .line 548
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mimeType()Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$700(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;

    move-result-object v2

    .line 549
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->optionalParameters()Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$800(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/util/HashMap;

    move-result-object v3

    .line 550
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->promiseId()J
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v4

    move-object v0, p0

    .line 551
    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0

    .line 553
    :cond_1
    return-void
.end method

.method private processProvisionResponse(Z[B)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 778
    :cond_0
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 779
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 781
    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    move-result v0

    .line 783
    :goto_1
    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    if-eqz v2, :cond_2

    .line 784
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onResetDeviceCredentialsCompleted(Z)V

    .line 785
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 788
    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v0

    if-nez v0, :cond_5

    .line 789
    :cond_3
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 781
    goto :goto_1

    .line 793
    :cond_5
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->processPendingCreateSessionData()V

    goto :goto_0
.end method

.method private release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 432
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 436
    # invokes: Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->promiseId()J
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v2

    const-string/jumbo v0, "Create session aborted."

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 439
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 442
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 445
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 450
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    goto :goto_1

    .line 446
    :catch_0
    move-exception v1

    .line 447
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "removeKeys failed: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 452
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 453
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 457
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v0, :cond_5

    .line 459
    invoke-direct {p0, v6}, Lorg/chromium/media/MediaDrmBridge;->onMediaCryptoReady(Landroid/media/MediaCrypto;)V

    .line 466
    :goto_3
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    if-eqz v0, :cond_3

    .line 467
    iput-boolean v7, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 468
    invoke-direct {p0, v7}, Lorg/chromium/media/MediaDrmBridge;->onResetDeviceCredentialsCompleted(Z)V

    .line 471
    :cond_3
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    .line 472
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 473
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 475
    :cond_4
    return-void

    .line 461
    :cond_5
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 462
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    goto :goto_3
.end method

.method private resetDeviceCredentials()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->onResetDeviceCredentialsCompleted(Z)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 412
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    goto :goto_0
.end method

.method private savePendingCreateSessionData([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 8

    .prologue
    .line 530
    iget-object v7, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;Ljava/util/HashMap;JLorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private sessionExists([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v1, :cond_2

    .line 643
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 644
    :cond_0
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Session doesn\'t exist because media crypto session is not created."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSecurityLevel(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 356
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 357
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_1
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "securityLevel"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Security level: current %s, new %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object p1, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    :goto_0
    return v0

    .line 369
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "securityLevel"

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    .line 372
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Failed to set security level %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :goto_1
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Security level %s not supported!"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 378
    goto :goto_0

    .line 373
    :catch_1
    move-exception v2

    .line 374
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Failed to set security level %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setServerCertificate([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v3, "serviceCertificate"

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v2

    .line 393
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Failed to set server certificate"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 398
    goto :goto_0

    .line 394
    :catch_1
    move-exception v2

    .line 395
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Failed to set server certificate"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private startProvisioning()V
    .locals 4

    .prologue
    .line 746
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 753
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 754
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 756
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->isNativeMediaDrmBridgeValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/chromium/media/MediaDrmBridge;->nativeOnStartProvisioning(JLjava/lang/String;[B)V

    goto :goto_0
.end method

.method private updateSession([B[BJ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 694
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_1

    .line 695
    const-string/jumbo v0, "updateSession() called when MediaDrm is null."

    invoke-direct {p0, p3, p4, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid session in updateSession: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 716
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    .line 717
    invoke-direct {p0, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 718
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 719
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 725
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "failed to provide key response"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :goto_2
    const-string/jumbo v0, "Update session failed."

    invoke-direct {p0, p3, p4, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    .line 714
    :try_start_2
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Exception intentionally caught when calling provideKeyResponse()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 726
    :catch_2
    move-exception v0

    .line 727
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "failed to provide key response"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method provideProvisionResponse([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 802
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 803
    :cond_0
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v2, "Invalid provision response."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 815
    :goto_0
    return v0

    .line 808
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 810
    :catch_0
    move-exception v2

    .line 811
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "failed to provide provision response"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 815
    goto :goto_0

    .line 812
    :catch_1
    move-exception v2

    .line 813
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "failed to provide provision response"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
