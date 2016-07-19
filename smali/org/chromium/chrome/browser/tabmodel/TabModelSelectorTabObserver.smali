.class public Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "TabModelSelectorTabObserver.java"


# instance fields
.field private mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

.field private final mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 53
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->registerModelObservers()V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->registerModelObservers()V

    return-void
.end method

.method private registerModelObservers()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 76
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 77
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 78
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 80
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v4

    move v0, v2

    .line 81
    :goto_1
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 82
    invoke-interface {v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 97
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 99
    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 101
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v4

    move v0, v2

    .line 102
    :goto_1
    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 103
    invoke-interface {v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method
