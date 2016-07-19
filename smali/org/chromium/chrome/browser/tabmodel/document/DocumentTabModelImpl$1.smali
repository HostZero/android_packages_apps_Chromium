.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private final mEntries:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 2

    .prologue
    .line 546
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->mEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 559
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 560
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mPrioritizedTabId:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$100(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)I

    move-result v2

    iget v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    if-eq v2, v3, :cond_0

    .line 561
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v2

    iget v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->restoreTabState(IZ)Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->setTabState(Lorg/chromium/chrome/browser/TabState;)V

    .line 563
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isTabStateReady:Z

    goto :goto_0

    .line 566
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 546
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 572
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 573
    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->setTabState(Lorg/chromium/chrome/browser/TabState;)V

    .line 576
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isTabStateReady:Z

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/4 v1, 0x6

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 580
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->deserializeTabStatesAsync()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$400(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    .line 581
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/4 v1, 0x5

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 552
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->mEntries:Ljava/util/List;

    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method
