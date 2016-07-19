.class public Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
.source "ReaderModePanel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

.field private mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

.field private mReaderBarTextOpacity:F

.field private mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

.field private mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

.field private mStartTime:J

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->createNewReaderModeSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    .line 65
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    return-object v0
.end method

.method private onTimerEnded()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mTimerRunning:Z

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mStartTime:J

    sub-long/2addr v0, v2

    .line 279
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mStartTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    invoke-interface {v2, v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->recordTimeSpentInReader(J)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateBasePageTargetY(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getToolbarHeight()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public canBeSuppressed()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 261
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mTimerRunning:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->onTimerEnded()V

    .line 264
    :cond_0
    return-void
.end method

.method public createNewOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)V

    .line 113
    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    new-instance v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;-><init>()V

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v1, v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v1
.end method

.method protected createNewReaderModeSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;-><init>(F)V

    return-object v0
.end method

.method public destroyComponents()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroyComponents()V

    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->destroyReaderModeBarControl()V

    .line 194
    return-void
.end method

.method protected destroyReaderModeBarControl()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->destroy()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    .line 350
    :cond_0
    return-void
.end method

.method public getBarTextViewId()I
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getReaderModeBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->getViewId()I

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getToolbarHeight()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getBarHeightPeeking()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 290
    :goto_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getTopControlsOffsetDp()F

    move-result v0

    :goto_1
    add-float/2addr v0, v1

    return v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPriority()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;->MEDIUM:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;

    return-object v0
.end method

.method protected getReaderModeBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;
    .locals 4

    .prologue
    .line 330
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 331
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 333
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    .line 338
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 339
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderModeBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    return-object v0
.end method

.method public getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    return-object v0
.end method

.method protected getThresholdToNextState()F
    .locals 1

    .prologue
    .line 213
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method

.method public handleBarClick(JFF)V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleBarClick(JFF)V

    .line 173
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->isCoordinateInsideCloseButton(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->maximizePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method protected isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected maximizePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 4

    .prologue
    .line 242
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    const-wide/16 v2, 0x170

    invoke-super {p0, v0, p1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 243
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onAnimationFinished()V

    .line 248
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 250
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mTimerRunning:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mStartTime:J

    .line 252
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mTimerRunning:Z

    .line 256
    :cond_0
    :goto_1
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mTimerRunning:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->onTimerEnded()V

    goto :goto_1
.end method

.method protected onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public onInterceptBarClick()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(FF)V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onSizeChanged(FF)V

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->onSizeChanged()V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->resizePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 310
    :cond_1
    return-void
.end method

.method public setManagerDelegate(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-eq v0, p1, :cond_0

    .line 155
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->setChromeActivity(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 158
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->initializeUiState()V

    .line 161
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->updateBasePageTargetY()V

    .line 164
    :cond_0
    return-void
.end method

.method protected updatePanelForCloseOrPeek(F)V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForCloseOrPeek(F)V

    .line 221
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getReaderModeBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->reader_view_text:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->setBarText(I)V

    .line 224
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderBarTextOpacity:F

    goto :goto_0
.end method

.method protected updatePanelForMaximization(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 229
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForMaximization(F)V

    .line 230
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderBarTextOpacity:F

    .line 232
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getReaderModeBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->reader_view_text:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->setBarText(I)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    sub-float v0, p1, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderBarTextOpacity:F

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getReaderModeBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->reader_mode_maximized_title:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->setBarText(I)V

    goto :goto_0
.end method

.method public updateSceneLayer(Lorg/chromium/ui/resources/ResourceManager;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->updateTopControlsState()V

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->getBarTextViewId()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mReaderBarTextOpacity:F

    invoke-virtual {v0, p1, p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/scene_layer/ReaderModeSceneLayer;->update(Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IF)V

    goto :goto_0
.end method
