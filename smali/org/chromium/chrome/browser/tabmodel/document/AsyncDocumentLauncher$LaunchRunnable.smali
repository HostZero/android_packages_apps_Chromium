.class Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
.super Ljava/lang/Object;
.source "AsyncDocumentLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAsyncParams:Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

.field private final mIsIncognito:Z

.field private mLaunchedId:I

.field private final mParentId:I

.field private mTabCountAtLaunch:I

.field private mTimestampAtLaunch:J

.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;ZILorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mIsIncognito:Z

    .line 55
    iput p3, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mParentId:I

    .line 56
    iput-object p4, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mAsyncParams:Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mLaunchedId:I

    .line 58
    return-void
.end method

.method private finishLaunch()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$302(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;)Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$400(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$400(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    # setter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$302(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;)Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mCurrentRunnable:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$300(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->launch()V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTotalTabCount()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mTabCountAtLaunch:I

    .line 64
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mParentId:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getActivityForTabId(I)Landroid/app/Activity;

    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mIsIncognito:Z

    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mAsyncParams:Lorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;->launchDocumentInstance(Landroid/app/Activity;ZLorg/chromium/chrome/browser/tabmodel/document/AsyncTabCreationParams;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mLaunchedId:I

    .line 68
    iget v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mLaunchedId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    const-string/jumbo v0, "document_AsyncLaunc"

    const-string/jumbo v1, "Failed to launch document."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->finishLaunch()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mTimestampAtLaunch:J

    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->run()V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$100(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    move-result-object v0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mIsIncognito:Z

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;

    .line 82
    iget v0, v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$Entry;->tabId:I

    iget v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mLaunchedId:I

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTotalTabCount()I

    move-result v0

    iget v3, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mTabCountAtLaunch:I

    if-le v0, v3, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->finishLaunch()V

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->mTimestampAtLaunch:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 91
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->finishLaunch()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LaunchRunnable;->this$0:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;->access$200(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
