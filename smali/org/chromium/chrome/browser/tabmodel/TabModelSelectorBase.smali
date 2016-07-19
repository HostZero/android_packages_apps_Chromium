.class public abstract Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;
.super Ljava/lang/Object;
.source "TabModelSelectorBase.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INCOGNITO_TAB_MODEL_INDEX:I = 0x1

.field public static final NORMAL_TAB_MODEL_INDEX:I


# instance fields
.field private mActiveModelIndex:I

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mTabModels:Ljava/util/List;

.field private mTabStateInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mActiveModelIndex:I

    .line 25
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method private notifyNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 231
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;->onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->hasObserver(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public closeAllTabs()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->closeAllTabs(Z)V

    .line 166
    return-void
.end method

.method public closeAllTabs(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs(ZZ)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 171
    goto :goto_1

    .line 173
    :cond_1
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 139
    invoke-interface {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 140
    invoke-interface {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v1

    .line 144
    :cond_0
    return v1

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to close a tab that is not in any model!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public commitAllTabClosures()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitAllTabClosures()V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mActiveModelIndex:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentTabId()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 3

    .prologue
    .line 83
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requested index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object v0
.end method

.method public getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 102
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isClosurePending(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    :goto_1
    return-object v0

    .line 100
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getModels()Ljava/util/List;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    return-object v0
.end method

.method public getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 160
    :goto_1
    return-object v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTotalTabCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    move v1, v0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return v1
.end method

.method protected final varargs initialize(Z[Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p2

    if-gt v0, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 38
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_3

    .line 39
    aget-object v4, p2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    move v0, v2

    :goto_1
    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mActiveModelIndex:I

    .line 42
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabModels:Ljava/util/List;

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;)V

    .line 61
    array-length v2, p2

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, p2, v1

    .line 62
    invoke-interface {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 41
    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyChanged()V

    .line 65
    return-void
.end method

.method public isIncognitoSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mActiveModelIndex:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabStateInitialized()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabStateInitialized:Z

    return v0
.end method

.method protected markTabStateInitialized()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mTabStateInitialized:Z

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;->onTabStateInitialized()V

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 221
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;->onChange()V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public selectModel(Z)V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    .line 70
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mActiveModelIndex:I

    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 73
    if-eq v1, v2, :cond_1

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 75
    invoke-interface {v0, v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;->onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    goto :goto_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public setCloseAllTabsDelegate(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method
