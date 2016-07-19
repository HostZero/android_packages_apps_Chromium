.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private final mCachedEntries:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 2

    .prologue
    .line 588
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->mCachedEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->mCachedEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 605
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    .line 606
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v3, v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->updateEntryInfoFromTabState(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;Lorg/chromium/chrome/browser/TabState;)V

    goto :goto_0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 588
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->mCachedEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 614
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 615
    if-eqz v1, :cond_0

    iget-object v3, v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 616
    iget-object v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    iput-object v0, v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->currentUrl:Ljava/lang/String;

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/16 v1, 0x8

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 620
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->broadcastSessionRestoreComplete()V

    .line 622
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->loadHistoricalTabsAsync()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$500(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    .line 624
    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .prologue
    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/4 v1, 0x7

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 595
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 596
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 597
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$2;->mCachedEntries:Ljava/util/List;

    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    iget v4, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILorg/chromium/chrome/browser/TabState;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 600
    :cond_1
    return-void
.end method
