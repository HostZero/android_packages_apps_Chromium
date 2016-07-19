.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private mEntries:Ljava/util/List;

.field private mHistoricalTabsForBackgroundThread:Ljava/util/Set;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 662
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mHistoricalTabsForBackgroundThread:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 664
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->restoreTabState(IZ)Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    .line 665
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mEntries:Ljava/util/List;

    new-instance v4, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;-><init>(ILorg/chromium/chrome/browser/TabState;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->deleteTabState(IZ)V

    goto :goto_0

    .line 669
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 648
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mEntries:Ljava/util/List;

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

    .line 675
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->createHistoricalTab()V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$600(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 679
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/16 v1, 0xa

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->cleanUpObsoleteTabStatesAsync()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$700(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V

    .line 681
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/16 v1, 0x9

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 655
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$600(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mHistoricalTabsForBackgroundThread:Ljava/util/Set;

    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mHistoricalTabsForBackgroundThread:Ljava/util/Set;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mHistoricalTabs:Ljava/util/List;
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$600(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mHistoricalTabsForBackgroundThread:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$3;->mEntries:Ljava/util/List;

    .line 658
    return-void
.end method
