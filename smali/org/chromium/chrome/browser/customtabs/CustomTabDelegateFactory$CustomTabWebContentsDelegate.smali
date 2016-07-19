.class Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabWebContentsDelegate;
.super Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.source "CustomTabDelegateFactory.java"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected bringActivityToForeground()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public shouldResumeRequestsForCreatedWindow()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
