.class Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;
.super Landroid/os/AsyncTask;
.source "StorageDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

.field final synthetic val$entryMap:Landroid/util/SparseArray;

.field final synthetic val$isIncognito:Z

.field final synthetic val$recentlyClosedTabIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;ZLandroid/util/SparseArray;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$isIncognito:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$entryMap:Landroid/util/SparseArray;

    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$recentlyClosedTabIdList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$isIncognito:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->readMetadataFileBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$entryMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate$2;->val$recentlyClosedTabIdList:Ljava/util/List;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->updateTabEntriesFromMetadata([BLandroid/util/SparseArray;Ljava/util/List;)V
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;->access$000(Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;[BLandroid/util/SparseArray;Ljava/util/List;)V

    .line 236
    return-void
.end method
