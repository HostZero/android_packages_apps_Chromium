.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;
.super Landroid/os/AsyncTask;
.source "TabPersistentStore.java"


# instance fields
.field public final mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1028
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    .line 1029
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1023
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/TabState;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1033
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    iget v2, v2, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;->id:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/TabState;->restoreTabState(Ljava/io/File;I)Lorg/chromium/chrome/browser/TabState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v1

    .line 1037
    const-string/jumbo v2, "tabmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to read state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1023
    check-cast p1, Lorg/chromium/chrome/browser/TabState;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->onPostExecute(Lorg/chromium/chrome/browser/TabState;)V

    return-void
.end method

.method protected onPostExecute(Lorg/chromium/chrome/browser/TabState;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1044
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->isIncognitoTabBeingRestored(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1000(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;)Z

    move-result v0

    .line 1047
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelIncognitoTabLoads:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1100(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mCancelNormalTabLoads:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 1049
    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->mTabToRestore:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->restoreTab(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V
    invoke-static {v0, v2, p1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1300(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabRestoreDetails;Lorg/chromium/chrome/browser/TabState;Z)V

    .line 1051
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$LoadTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->loadNextTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1047
    goto :goto_1
.end method
