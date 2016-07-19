.class public Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;
.super Ljava/lang/Object;
.source "EmptyBackgroundViewWrapper.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

.field private final mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

.field private final mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

.field private final mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private final mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private final mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p4, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    .line 57
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 58
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 59
    iput-object p5, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$1;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$2;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->updateEmptyContainerState()V

    return-void
.end method

.method private inflateViewIfNecessary()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mActivity:Landroid/app/Activity;

    sget v1, Lorg/chromium/chrome/R$id;->empty_container_stub:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setTabCreator(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setMenuOnTouchListener(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    new-instance v1, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper$3;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private shouldShowEmptyContainer()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    .line 145
    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 149
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v4

    .line 155
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mOverviewModeBehavior:Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;->overviewVisible()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 148
    goto :goto_1
.end method

.method private updateEmptyContainerState()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->shouldShowEmptyContainer()Z

    move-result v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->inflateViewIfNecessary()V

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mBackgroundView:Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->setEmptyContainerState(Z)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 100
    return-void
.end method

.method public uninitialize()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 107
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 110
    return-void
.end method
