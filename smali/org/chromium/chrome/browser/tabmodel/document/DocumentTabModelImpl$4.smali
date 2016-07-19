.class Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;
.super Landroid/os/AsyncTask;
.source "DocumentTabModelImpl.java"


# instance fields
.field private mCurrentTabs:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 689
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 700
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mStorageDelegate:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->getStateDirectory()Ljava/io/File;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 702
    if-nez v3, :cond_1

    .line 718
    :cond_0
    return-object v8

    .line 704
    :cond_1
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 705
    invoke-static {v5}, Lorg/chromium/chrome/browser/TabState;->parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 706
    if-eqz v6, :cond_2

    .line 708
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 709
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 710
    iget-object v6, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v6

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->mCurrentTabs:Ljava/util/List;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isTabIdInEntryList(Ljava/util/List;I)Z
    invoke-static {v0, v7}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$900(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 714
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 715
    if-nez v0, :cond_2

    const-string/jumbo v0, "DocumentTabModel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to delete: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/16 v1, 0xc

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 724
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    const/16 v1, 0xb

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->setCurrentState(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;I)V

    .line 695
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->access$800(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl$4;->mCurrentTabs:Ljava/util/List;

    .line 696
    return-void
.end method
