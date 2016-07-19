.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private final mStatesToWrite:Landroid/util/SparseArray;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 1

    .prologue
    .line 766
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 767
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 766
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 780
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 781
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 782
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/TabState;

    invoke-virtual {v3, v2, v4, v0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->saveTabState(IZLorg/chromium/chrome/browser/TabState;)Z

    .line 780
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 784
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 766
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 789
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 790
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 791
    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 792
    if-eqz v0, :cond_0

    .line 793
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isDirty:Z

    .line 789
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 795
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 771
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 772
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mEntryMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 773
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->isDirty:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$6;->mStatesToWrite:Landroid/util/SparseArray;

    iget v3, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->getTabState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 776
    :cond_1
    return-void
.end method
