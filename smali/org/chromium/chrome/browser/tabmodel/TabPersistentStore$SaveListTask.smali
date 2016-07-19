.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;
.super Landroid/os/AsyncTask;
.source "TabPersistentStore.java"


# instance fields
.field mListData:[B

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 900
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->mListData:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-object v2

    .line 916
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->mListData:[B

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->saveListToFile([B)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$800(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;[B)V

    .line 917
    iput-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->mListData:[B

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 900
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$900(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mSaveListTask:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$902(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;

    .line 927
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mObserver:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$TabPersistentStoreObserver;->onMetadataSavedAsynchronously()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mDestroyed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$400(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->serializeTabMetadata()[B
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$700(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->mListData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$SaveListTask;->mListData:[B

    goto :goto_0
.end method
