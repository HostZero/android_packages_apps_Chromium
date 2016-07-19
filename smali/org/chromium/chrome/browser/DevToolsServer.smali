.class public Lorg/chromium/chrome/browser/DevToolsServer;
.super Ljava/lang/Object;
.source "DevToolsServer.java"


# instance fields
.field private mNativeDevToolsServer:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:J

    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeInitRemoteDebugging(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:J

    .line 32
    return-void
.end method

.method private static checkDebugPermission(Landroid/content/Context;II)Z
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".permission.DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroyRemoteDebugging(J)V
.end method

.method private native nativeInitRemoteDebugging(Ljava/lang/String;)J
.end method

.method private native nativeIsRemoteDebuggingEnabled(J)Z
.end method

.method private native nativeSetRemoteDebuggingEnabled(JZZ)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeDestroyRemoteDebugging(J)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:J

    .line 37
    return-void
.end method

.method public setRemoteDebuggingEnabled(ZLorg/chromium/chrome/browser/DevToolsServer$Security;)V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lorg/chromium/chrome/browser/DevToolsServer$Security;->ALLOW_DEBUG_PERMISSION:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/DevToolsServer;->mNativeDevToolsServer:J

    invoke-direct {p0, v2, v3, p1, v0}, Lorg/chromium/chrome/browser/DevToolsServer;->nativeSetRemoteDebuggingEnabled(JZZ)V

    .line 46
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
