.class Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;
.super Ljava/lang/Object;
.source "TabModelImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabList;


# instance fields
.field private final mRewoundTabs:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;)V
    .locals 1

    .prologue
    .line 575
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$1;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 686
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroy()V

    goto :goto_0

    .line 688
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNextRewindableTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 660
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->hasPendingClosures()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object v3

    .line 662
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    move-object v2, v0

    .line 664
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 666
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    if-eq v4, v2, :cond_4

    :cond_2
    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 663
    goto :goto_2

    .line 662
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public getPendingRewindTab(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 651
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-nez v1, :cond_0

    .line 652
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 611
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method

.method public hasPendingClosures()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public index()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 597
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->index()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 598
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isClosurePending(I)Z

    move-result v0

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->isIncognito()Z

    move-result v0

    return v0
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 678
    return-void
.end method

.method public resetRewoundState()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->supportsPendingClosures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->mRewoundTabs:Ljava/util/List;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl$RewoundList;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method
