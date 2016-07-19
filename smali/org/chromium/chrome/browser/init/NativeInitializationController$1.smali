.class Lorg/chromium/chrome/browser/init/NativeInitializationController$1;
.super Ljava/lang/Thread;
.source "NativeInitializationController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/NativeInitializationController;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    # getter for: Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->access$000(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->asyncPrefetchLibrariesToMemory()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    # getter for: Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->access$000(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 103
    iget-object v1, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    # getter for: Lorg/chromium/chrome/browser/init/NativeInitializationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->access$000(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getChildProcessCreationParams()Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->warmUp(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    .line 104
    new-instance v0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/NativeInitializationController$1$1;-><init>(Lorg/chromium/chrome/browser/init/NativeInitializationController$1;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "NativeInitializationController"

    const-string/jumbo v2, "Unable to load native library."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/NativeInitializationController$1;->this$0:Lorg/chromium/chrome/browser/init/NativeInitializationController;

    # getter for: Lorg/chromium/chrome/browser/init/NativeInitializationController;->mActivityDelegate:Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->access$100(Lorg/chromium/chrome/browser/init/NativeInitializationController;)Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/ChromeActivityNativeDelegate;->onStartupFailure()V

    goto :goto_0
.end method
