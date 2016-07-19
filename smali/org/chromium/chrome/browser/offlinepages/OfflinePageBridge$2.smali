.class Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;
.super Landroid/os/AsyncTask;
.source "OfflinePageBridge.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

.field final synthetic val$reportingAfterDelete:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Z)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->val$reportingAfterDelete:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->doInBackground([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getTotalSpaceInBytes()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getFreeSpaceInBytes()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 9

    .prologue
    .line 153
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->this$0:Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    # getter for: Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->mNativeOfflinePageBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->access$000(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)J

    move-result-wide v2

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    const/4 v0, 0x1

    aget-wide v6, p1, v0

    iget-boolean v8, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$2;->val$reportingAfterDelete:Z

    # invokes: Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->nativeRecordStorageHistograms(JJJZ)V
    invoke-static/range {v1 .. v8}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->access$100(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;JJJZ)V

    goto :goto_0
.end method
