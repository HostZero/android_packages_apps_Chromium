.class public Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;
.super Ljava/lang/Object;
.source "InterstitialPageDelegateAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->nativeInit(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:J

    .line 27
    return-void
.end method

.method private native nativeDontProceed(J)V
.end method

.method private native nativeInit(Ljava/lang/String;)J
.end method

.method private native nativeProceed(J)V
.end method

.method private onNativeDestroyed()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:J

    .line 63
    return-void
.end method


# virtual methods
.method protected commandReceived(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public getNative()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/chromium/content/browser/InterstitialPageDelegateAndroid;->mNativePtr:J

    return-wide v0
.end method

.method protected onDontProceed()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onProceed()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
