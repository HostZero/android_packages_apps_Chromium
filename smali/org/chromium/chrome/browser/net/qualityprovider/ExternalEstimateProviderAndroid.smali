.class public Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;
.super Ljava/lang/Object;
.source "ExternalEstimateProviderAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final NO_VALUE:I = -0x1


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mNativePtr:J

.field private mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mLock:Ljava/lang/Object;

    .line 41
    iput-wide p1, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mNativePtr:J

    .line 42
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;
    .locals 1

    .prologue
    .line 33
    check-cast p0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeApplication;->createExternalEstimateProviderAndroid(J)Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;

    move-result-object v0

    return-object v0
.end method

.method private destroy()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mNativePtr:J

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

.method private static getNoValue()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x1

    return v0
.end method

.method private native nativeNotifyExternalEstimateProviderAndroidUpdate(J)V
.end method


# virtual methods
.method protected getDownstreamThroughputKbps()J
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getRTTMilliseconds()I
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getTimeSinceLastUpdateSeconds()J
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getUpstreamThroughputKbps()J
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected requestUpdate()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;->mThreadCheck:Lorg/chromium/chrome/browser/util/NonThreadSafe;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->calledOnValidThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method
