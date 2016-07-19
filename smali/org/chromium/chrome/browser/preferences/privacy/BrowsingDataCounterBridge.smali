.class public Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;
.super Ljava/lang/Object;
.source "BrowsingDataCounterBridge.java"


# instance fields
.field private mCallback:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;

.field private mNativeBrowsingDataCounterBridge:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;I)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mCallback:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;

    .line 36
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->nativeInit(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mNativeBrowsingDataCounterBridge:J

    .line 37
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(I)J
.end method

.method private onBrowsingDataCounterFinished(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mCallback:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;->onCounterFinished(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mNativeBrowsingDataCounterBridge:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 44
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mNativeBrowsingDataCounterBridge:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->nativeDestroy(J)V

    .line 45
    iput-wide v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->mNativeBrowsingDataCounterBridge:J

    .line 47
    :cond_0
    return-void
.end method
