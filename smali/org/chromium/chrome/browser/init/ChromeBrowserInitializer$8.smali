.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;
.super Ljava/lang/Object;
.source "ChromeBrowserInitializer.java"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

.field final synthetic val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

.field final synthetic val$initQueue:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Lorg/chromium/chrome/browser/init/BrowserParts;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    iput-object p2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    iput-object p3, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->val$initQueue:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->val$delegate:Lorg/chromium/chrome/browser/init/BrowserParts;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/init/BrowserParts;->onStartupFailure()V

    .line 313
    return-void
.end method

.method public onSuccess(Z)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # getter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$000(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;->val$initQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method
