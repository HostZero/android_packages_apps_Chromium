.class public Lorg/chromium/chrome/browser/metrics/VariationsSession;
.super Ljava/lang/Object;
.source "VariationsSession.java"


# instance fields
.field private mInitialized:Z

.field private mRestrictMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/metrics/VariationsSession;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/metrics/VariationsSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/metrics/VariationsSession;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->nativeStartVariationsSession(Ljava/lang/String;)V

    return-void
.end method

.method private native nativeStartVariationsSession(Ljava/lang/String;)V
.end method


# virtual methods
.method protected getRestrictMode(Landroid/content/Context;Lorg/chromium/base/Callback;)V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mInitialized:Z

    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mInitialized:Z

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/metrics/VariationsSession$1;-><init>(Lorg/chromium/chrome/browser/metrics/VariationsSession;)V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->getRestrictMode(Landroid/content/Context;Lorg/chromium/base/Callback;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/VariationsSession;->mRestrictMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->nativeStartVariationsSession(Ljava/lang/String;)V

    goto :goto_0
.end method
