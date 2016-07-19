.class Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;
.super Landroid/os/AsyncTask;
.source "WebappDirectoryManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentWebappId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->val$currentWebappId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->val$currentWebappId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->getWebappDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    const/4 v0, 0x1

    .line 72
    :goto_0
    if-eqz v0, :cond_0

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->sMustCleanUpOldDirectories:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->findStaleWebappDirectories(Landroid/content/Context;Ljava/util/Set;)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;->access$100(Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager;Landroid/content/Context;Ljava/util/Set;)V

    .line 76
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappDirectoryManager$1;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    :cond_1
    return-object v5

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 78
    :cond_3
    invoke-static {v0}, Lorg/chromium/base/FileUtils;->recursivelyDeleteFile(Ljava/io/File;)V

    goto :goto_1
.end method
