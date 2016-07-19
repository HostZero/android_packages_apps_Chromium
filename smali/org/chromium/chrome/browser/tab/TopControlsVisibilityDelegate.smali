.class public Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
.super Ljava/lang/Object;
.source "TopControlsVisibilityDelegate.java"


# instance fields
.field protected final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 26
    return-void
.end method


# virtual methods
.method public isHidingTopControlsEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    .line 33
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 36
    if-eqz v5, :cond_3

    move v0, v1

    .line 37
    :goto_1
    const-string/jumbo v3, "chrome://"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    and-int/2addr v3, v0

    .line 38
    const-string/jumbo v0, "chrome-native://"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    and-int/2addr v3, v0

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    .line 41
    const/4 v5, 0x5

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    move v0, v1

    :goto_4
    and-int/2addr v3, v0

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/AccessibilityUtil;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    and-int/2addr v3, v0

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    move v0, v1

    :goto_6
    and-int/2addr v3, v0

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingErrorPage()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    and-int/2addr v3, v0

    .line 50
    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->isShowingInterstitialPage()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    and-int/2addr v3, v0

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_9
    and-int/2addr v0, v3

    .line 52
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableFullscreen()Z

    move-result v3

    and-int/2addr v3, v0

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAutoHidingToolbarDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_a
    and-int/2addr v0, v3

    .line 55
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isFullscreenWaitingForLoad()Z

    move-result v3

    if-nez v3, :cond_d

    :goto_b
    and-int v2, v0, v1

    .line 57
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 36
    goto :goto_1

    :cond_4
    move v3, v2

    .line 37
    goto :goto_2

    :cond_5
    move v0, v2

    .line 38
    goto :goto_3

    :cond_6
    move v0, v2

    .line 41
    goto :goto_4

    :cond_7
    move v0, v2

    .line 44
    goto :goto_5

    :cond_8
    move v0, v2

    .line 48
    goto :goto_6

    :cond_9
    move v0, v2

    .line 49
    goto :goto_7

    :cond_a
    move v0, v2

    .line 50
    goto :goto_8

    :cond_b
    move v0, v2

    .line 51
    goto :goto_9

    :cond_c
    move v0, v2

    .line 53
    goto :goto_a

    :cond_d
    move v1, v2

    .line 55
    goto :goto_b
.end method

.method public isShowingTopControlsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->getPersistentFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
