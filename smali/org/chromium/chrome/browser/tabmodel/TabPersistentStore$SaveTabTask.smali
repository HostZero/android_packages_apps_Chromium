.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;
.super Landroid/os/AsyncTask;
.source "TabPersistentStore.java"


# instance fields
.field mEncrypted:Z

.field mId:I

.field mState:Lorg/chromium/chrome/browser/TabState;

.field mStateSaved:Z

.field mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 873
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mStateSaved:Z

    .line 874
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 875
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mId:I

    .line 876
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mEncrypted:Z

    .line 877
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 866
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 887
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mId:I

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mEncrypted:Z

    iget-object v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mState:Lorg/chromium/chrome/browser/TabState;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveTabState(IZLorg/chromium/chrome/browser/TabState;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mStateSaved:Z

    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 866
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mStateSaved:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setIsTabStateDirty(Z)V

    .line 895
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveTabTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$502(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;

    .line 896
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveNextTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$600(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getState()Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveTabTask;->mState:Lorg/chromium/chrome/browser/TabState;

    goto :goto_0
.end method
