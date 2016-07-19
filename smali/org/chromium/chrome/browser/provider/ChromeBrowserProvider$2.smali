.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 635
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    # getter for: Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->mNativeChromeBrowserProvider:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->access$100(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 637
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$2;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    # invokes: Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->ensureNativeSideInitialized()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->access$000(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;)V

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
