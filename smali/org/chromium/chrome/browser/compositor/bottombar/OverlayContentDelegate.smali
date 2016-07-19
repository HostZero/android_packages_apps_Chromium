.class public Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
.super Ljava/lang/Object;
.source "OverlayContentDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInterceptLoadUrl(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onContentLoadFinished()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onContentLoadStarted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onContentViewCreated(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onContentViewDestroyed()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onContentViewSeen()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onMainFrameLoadStarted(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onMainFrameNavigation(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onNavigationEntryCommitted()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public shouldInterceptNavigation(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
