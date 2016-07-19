.class Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;
.super Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;
.source "ChromeBrowserInitializer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

.field final synthetic val$initQueue:Ljava/util/LinkedList;

.field final synthetic val$isAsync:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;->val$isAsync:Z

    iput-object p3, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;->val$initQueue:Ljava/util/LinkedList;

    invoke-direct {p0, p1, p3, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Ljava/util/LinkedList;Z)V

    return-void
.end method


# virtual methods
.method public initFunction()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # getter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$100(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->initializeProcess()V

    .line 244
    return-void
.end method
