.class abstract Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;
.super Ljava/lang/Object;
.source "ChromeBrowserInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

.field final synthetic val$initQueue:Ljava/util/LinkedList;

.field final synthetic val$isAsync:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Ljava/util/LinkedList;Z)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    iput-object p2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->val$initQueue:Ljava/util/LinkedList;

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->val$isAsync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract initFunction()V
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->initFunction()V

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->val$initQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->val$initQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 230
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->val$isAsync:Z

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1NativeInitTask;->this$0:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    # getter for: Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->access$000(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
