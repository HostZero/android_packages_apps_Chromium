.class public Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
.super Ljava/lang/Object;
.source "ChromeHttpAuthHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

.field private mAutofillPassword:Ljava/lang/String;

.field private mAutofillUsername:Ljava/lang/String;

.field private final mNativeChromeHttpAuthHandler:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:J

    .line 30
    return-void
.end method

.method private static create(J)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;-><init>(J)V

    return-object v0
.end method

.method private native nativeCancelAuth(J)V
.end method

.method private native nativeGetMessageBody(J)Ljava/lang/String;
.end method

.method private native nativeSetAuth(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;->onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private setAutofillObserver(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;)V
    .locals 3

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillObserver:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillUsername:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mAutofillPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;->onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method private showDialog(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->cancel()V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 75
    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->cancel()V

    .line 78
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/LoginPrompt;

    invoke-direct {v1, v0, p0}, Lorg/chromium/chrome/browser/LoginPrompt;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;)V

    .line 79
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->setAutofillObserver(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;)V

    .line 80
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/LoginPrompt;->show()V

    .line 81
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeCancelAuth(J)V

    .line 56
    return-void
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeGetMessageBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->mNativeChromeHttpAuthHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->nativeSetAuth(JLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
