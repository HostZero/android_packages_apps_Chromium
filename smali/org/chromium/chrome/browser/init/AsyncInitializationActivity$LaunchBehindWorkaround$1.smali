.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;-><init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    const/4 v0, 0x1

    return v0
.end method
