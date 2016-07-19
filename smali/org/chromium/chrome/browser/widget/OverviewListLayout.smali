.class public Lorg/chromium/chrome/browser/widget/OverviewListLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.source "OverviewListLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;


# instance fields
.field private final mDpToPx:F

.field private final mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

.field private mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mDpToPx:F

    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    .line 41
    return-void
.end method

.method private adjustForFullscreen()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->getHeightMinusTopControls()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mDpToPx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public attachViews(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->accessibility_tab_switcher:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setup(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;)V

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 51
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->adjustForFullscreen()V

    .line 54
    :cond_0
    if-nez p1, :cond_2

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public detachViews()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->commitAllTabClosures()V

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_1
    return-void
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    return-object v0
.end method

.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x1000

    return v0
.end method

.method public handlesCloseAll()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public handlesTabClosing()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public handlesTabCreating()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected notifySizeChanged(FFI)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->adjustForFullscreen()V

    .line 69
    return-void
.end method

.method public onTabClosureCommitted(JIZ)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    .line 172
    return-void
.end method

.method public onTabCreated(JIIIZZFF)V
    .locals 1

    .prologue
    .line 104
    invoke-super/range {p0 .. p9}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreated(JIIIZZFF)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->startHiding(IZ)V

    .line 107
    return-void
.end method

.method public onTabCreating(I)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreating(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->startHiding(IZ)V

    .line 99
    return-void
.end method

.method public onTabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabModelSwitched(Z)V

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    goto :goto_0
.end method

.method public onTabsAllClosing(JZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabsAllClosing(JZ)V

    .line 159
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    .line 160
    :goto_0
    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabByIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z

    goto :goto_0

    .line 162
    :cond_0
    if-eqz p3, :cond_2

    .line 163
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_3

    .line 167
    :goto_1
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    goto :goto_1
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    goto :goto_0
.end method

.method public show(JZ)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->mTabModelWrapper:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    .line 122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->doneShowing()V

    goto :goto_0
.end method

.method public showTab(I)V
    .locals 2

    .prologue
    .line 176
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->onTabSelecting(JI)V

    .line 177
    return-void
.end method

.method public startHiding(IZ)V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->startHiding(IZ)V

    .line 129
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->doneHiding()V

    .line 130
    return-void
.end method
