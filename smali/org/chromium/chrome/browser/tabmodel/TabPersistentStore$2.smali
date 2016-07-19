.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;
.super Landroid/os/AsyncTask;
.source "TabPersistentStore.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->val$file:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1010
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1013
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$2;->val$file:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tabmodel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to delete file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
