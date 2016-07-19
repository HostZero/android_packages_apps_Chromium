.class public abstract Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;
.super Ljava/lang/Object;
.source "FullscreenManager.java"


# static fields
.field public static final INVALID_TOKEN:I = -0x1


# instance fields
.field private final mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

.field private final mModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mOverlayVideoMode:Z


# direct methods
.method public constructor <init>(Landroid/view/Window;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->createApiDelegate()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;-><init>(Landroid/view/Window;Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mOverlayVideoMode:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract createApiDelegate()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;
.end method

.method protected getHtmlApiHandler()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    return-object v0
.end method

.method public getPersistentFullscreenMode()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->getPersistentFullscreenMode()Z

    move-result v0

    return v0
.end method

.method protected getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method public abstract hideControlsPersistent(I)V
.end method

.method public isOverlayVideoMode()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mOverlayVideoMode:Z

    return v0
.end method

.method public onContentViewScrollingStateChanged(Z)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onContentViewSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->onContentViewSystemUiVisibilityChange(I)V

    .line 159
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->onWindowFocusChanged(Z)V

    .line 167
    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mOverlayVideoMode:Z

    .line 99
    return-void
.end method

.method public setPersistentFullscreenMode(Z)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mHtmlApiHandler:Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->setPersistentFullscreenMode(Z)V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->mModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 142
    :cond_0
    return-void
.end method

.method public abstract setPositionsForTab(FF)V
.end method

.method public abstract setPositionsForTabToNonFullscreen()V
.end method

.method public abstract showControlsPersistentAndClearOldToken(I)I
.end method

.method public abstract showControlsTransient()V
.end method

.method public abstract updateContentViewChildrenState()V
.end method
