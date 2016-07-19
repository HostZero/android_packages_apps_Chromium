.class public Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;
.super Ljava/lang/Object;
.source "ExternalDataUseObserver.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mControlAppManager:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;

.field private mNativeExternalDataUseObserverBridge:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 5

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    .line 94
    sget-boolean v0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;JZ)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->nativeOnControlAppInstallStateChange(JZ)V

    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;
    .locals 1

    .prologue
    .line 85
    check-cast p0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeApplication;->createExternalDataUseObserver(J)Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    move-result-object v0

    return-object v0
.end method

.method private native nativeFetchMatchingRulesDone(J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeOnControlAppInstallStateChange(JZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeOnReportDataUseDone(JZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private onDestroy()V
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    .line 112
    return-void
.end method


# virtual methods
.method protected fetchMatchingRules()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v0, v0}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->fetchMatchingRulesDone([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected fetchMatchingRulesDone([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->nativeFetchMatchingRulesDone(J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected reportDataUse(Ljava/lang/String;ILjava/lang/String;JJJJ)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected setControlAppPackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;-><init>(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mControlAppManager:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;

    .line 104
    return-void
.end method
