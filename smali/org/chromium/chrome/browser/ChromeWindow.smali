.class public Lorg/chromium/chrome/browser/ChromeWindow;
.super Lorg/chromium/ui/base/ActivityWindowAndroid;
.source "ChromeWindow.java"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeWindow;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 36
    if-eqz v0, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 38
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->create(Lorg/chromium/chrome/browser/tab/Tab;ILjava/lang/String;Z)V

    .line 44
    :goto_1
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    goto :goto_1
.end method
