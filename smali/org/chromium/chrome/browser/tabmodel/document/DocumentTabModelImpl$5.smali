.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private mList:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 734
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 756
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->mList:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->writeTaskFileBytes(Z[B)V

    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 740
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 741
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 742
    if-eqz v0, :cond_0

    .line 744
    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;-><init>()V

    .line 745
    iget v4, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->tabId:Ljava/lang/Integer;

    .line 746
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->canGoBack:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;->canGoBack:Ljava/lang/Boolean;

    .line 748
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 750
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->mList:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    .line 751
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$5;->mList:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    iput-object v0, v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentList;->entries:[Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelInfo$DocumentEntry;

    .line 752
    return-void
.end method
