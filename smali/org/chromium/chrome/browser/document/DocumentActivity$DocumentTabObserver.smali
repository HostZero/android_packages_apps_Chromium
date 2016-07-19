.class Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "DocumentActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/document/DocumentActivity$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;-><init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    return-void
.end method

.method private hasSecurityWarningOrError(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    .line 200
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 182
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.chrome.append_task"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->finish()V

    goto :goto_0
.end method

.method public onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->resetIcon()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$100(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 172
    return-void
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 167
    return-void
.end method

.method public onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->resetIcon()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$100(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 177
    return-void
.end method

.method public onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2

    .prologue
    .line 151
    if-nez p4, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$202(Lorg/chromium/chrome/browser/document/DocumentActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    goto :goto_0
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 120
    if-nez p2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$200(Lorg/chromium/chrome/browser/document/DocumentActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$200(Lorg/chromium/chrome/browser/document/DocumentActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$200(Lorg/chromium/chrome/browser/document/DocumentActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # setter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$202(Lorg/chromium/chrome/browser/document/DocumentActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    goto :goto_0
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    .line 158
    sget-boolean v0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$400(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$500(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$400(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 162
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->sIsFirstPageLoadStart:Z
    invoke-static {}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {v1}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->setRunningApplicationStart(Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    # setter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->sIsFirstPageLoadStart:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$002(Z)Z

    goto :goto_0
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->hasSecurityWarningOrError(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->resetIcon()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$100(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;->onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 140
    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 130
    sget-boolean v0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$400(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$300(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$500(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$400(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 134
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 1

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$DocumentTabObserver;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->resetIcon()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$100(Lorg/chromium/chrome/browser/document/DocumentActivity;)V

    goto :goto_0
.end method
