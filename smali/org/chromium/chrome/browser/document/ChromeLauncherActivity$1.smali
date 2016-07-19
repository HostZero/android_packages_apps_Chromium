.class Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;
.super Ljava/lang/Object;
.source "ChromeLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getHomepageUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "chrome-native://newtab/"

    .line 527
    :cond_0
    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 529
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentStartedBy(I)V

    .line 530
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    # getter for: Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsInMultiInstanceMode:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->access$000(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;->setDocumentLaunchMode(I)V

    .line 532
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchDocumentInstance(Landroid/app/Activity;ZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)I

    .line 534
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    # getter for: Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->mIsFinishDelayed:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->access$100(Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity$1;->this$0:Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->finish()V

    .line 535
    :cond_1
    return-void

    .line 530
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method
