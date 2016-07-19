.class Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;
.super Ljava/lang/Object;
.source "ChromiumSyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

.field final synthetic val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    # getter for: Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mAsyncStartup:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->access$000(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    # getter for: Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mApplication:Landroid/app/Application;
    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->access$100(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;)Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesAsync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "invalidation"

    const-string/jumbo v2, "Unable to load native library."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    # invokes: Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->startBrowserProcessesSync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->access$200(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    goto :goto_0
.end method
