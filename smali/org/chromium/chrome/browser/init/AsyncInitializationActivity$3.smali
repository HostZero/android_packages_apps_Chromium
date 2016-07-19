.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$3;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$3;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$3;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    # getter for: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mNativeInitializationController:Lorg/chromium/chrome/browser/init/NativeInitializationController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->access$200(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)Lorg/chromium/chrome/browser/init/NativeInitializationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/NativeInitializationController;->firstDrawComplete()V

    .line 313
    return-void
.end method
