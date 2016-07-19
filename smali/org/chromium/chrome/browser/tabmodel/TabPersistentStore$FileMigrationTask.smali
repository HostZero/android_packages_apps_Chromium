.class Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;
.super Landroid/os/AsyncTask;
.source "TabPersistentStore.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$1;)V
    .locals 0

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1070
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1073
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->access$1500(Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1074
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore$FileMigrationTask;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabPersistentStore;->getStateDirectory()Ljava/io/File;

    move-result-object v2

    .line 1076
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1077
    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1097
    :cond_0
    return-object v9

    .line 1079
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "tab_state"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1081
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "tab_state"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1082
    const-string/jumbo v4, "tabmodel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to rename file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1087
    if-eqz v3, :cond_0

    .line 1088
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 1089
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/chrome/browser/TabState;->parseInfoFromFilename(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1090
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1091
    const-string/jumbo v6, "tabmodel"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to rename file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
