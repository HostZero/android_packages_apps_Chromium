.class public Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;
.source "StaticLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TAG:Ljava/lang/String; = "StaticLayout"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHandlesTabLifecycles:Z

.field private mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

.field private final mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

.field private mUnstalling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z

    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z

    return p1
.end method

.method private setPostHideState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setStaticToViewBlend(F)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setSaturation(F)V

    .line 153
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z

    .line 154
    return-void
.end method

.method private setPreHideState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setStaticToViewBlend(F)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setSaturation(F)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z

    .line 147
    return-void
.end method

.method private setStaticTab(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setPostHideState()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Ljava/util/LinkedList;

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 164
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    :cond_2
    new-array v1, v5, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 165
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p1, v0, v4, v4}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    aput-object v0, v1, v4

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDrawDecoration(Z)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setPreHideState()V

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->requestRender()V

    goto :goto_0

    .line 171
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setPostHideState()V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->destroy()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    .line 262
    :cond_0
    return-void
.end method

.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x111

    return v0
.end method

.method public handlesCloseAll()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandlesTabLifecycles:Z

    return v0
.end method

.method public handlesTabClosing()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandlesTabLifecycles:Z

    return v0
.end method

.method public handlesTabCreating()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandlesTabLifecycles:Z

    return v0
.end method

.method public isTabInteractive()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabCreated(JIIIZZFF)V
    .locals 1

    .prologue
    .line 125
    invoke-super/range {p0 .. p9}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onTabCreated(JIIIZZFF)V

    .line 127
    if-nez p7, :cond_0

    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setStaticTab(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onTabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onTabModelSwitched(Z)V

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setStaticTab(I)V

    .line 134
    return-void
.end method

.method public onTabPageLoadFinished(IZ)V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onTabPageLoadFinished(IZ)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->unstallImmediately(I)V

    .line 140
    return-void
.end method

.method public onTabSelected(JIIZ)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setStaticTab(I)V

    .line 113
    invoke-super/range {p0 .. p5}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onTabSelected(JIIZ)V

    .line 114
    return-void
.end method

.method public onTabSelecting(JI)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setStaticTab(I)V

    .line 119
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onTabSelecting(JI)V

    .line 120
    return-void
.end method

.method public setLayoutHandlesTabLifecycles(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandlesTabLifecycles:Z

    .line 84
    return-void
.end method

.method public shouldDisplayContentOverlay()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public show(JZ)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->show(JZ)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setStaticTab(I)V

    .line 102
    return-void
.end method

.method public unstallImmediately()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->shouldStall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstallRunnable:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->run()V

    .line 190
    :cond_0
    return-void
.end method

.method public unstallImmediately(I)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->unstallImmediately()V

    .line 181
    :cond_0
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->updateLayout(JJ)V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    .line 108
    :cond_0
    return-void
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 228
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->getLayoutTabsToRender()[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    aget-object v6, v0, v3

    .line 235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->update(FLandroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v0

    .line 246
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/StaticTabSceneLayer;->setContentSceneLayer(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 250
    if-eqz p4, :cond_1

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    invoke-virtual {p4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->hasFullCachedThumbnail(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->logPerceivedTabSwitchLatencyMetric()V

    goto :goto_0
.end method
