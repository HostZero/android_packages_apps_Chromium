.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;->this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;->this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    # getter for: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPaused:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->access$400(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;->this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    # invokes: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getDecorView()Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->access$500(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;->this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    # invokes: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->access$700(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1$1;->this$2:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround$1;->this$1:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;

    # getter for: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;->access$600(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$LaunchBehindWorkaround;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 468
    return-void
.end method
