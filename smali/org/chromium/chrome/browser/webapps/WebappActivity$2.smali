.class Lorg/chromium/chrome/browser/webapps/WebappActivity$2;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "WebappActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->hideSplashScreen(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$800(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    .line 413
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const/4 v1, 0x3

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->hideSplashScreen(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$800(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    .line 428
    return-void
.end method

.method public onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 383
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$700(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/webapps/WebappActivity$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/webapps/WebappActivity$2$1;-><init>(Lorg/chromium/chrome/browser/webapps/WebappActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->isWebappDomain()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$200(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mBrandColor:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$302(Lorg/chromium/chrome/browser/webapps/WebappActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$400(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    goto :goto_0
.end method

.method public onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    .line 408
    return-void
.end method

.method public onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    .line 376
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JJZLjava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 342
    if-eqz p6, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->isWebappDomain()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$200(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappInfo:Lorg/chromium/chrome/browser/webapps/WebappInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$500(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    if-eqz p2, :cond_0

    .line 364
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$600(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$600(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$600(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # setter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mLargestFavicon:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$602(Lorg/chromium/chrome/browser/webapps/WebappActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$400(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    goto :goto_0
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const/4 v1, 0x2

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->hideSplashScreen(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$800(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    .line 423
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->hideSplashScreen(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$800(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V

    .line 418
    return-void
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateUrlBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$100(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    .line 336
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->isWebappDomain()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$200(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$2;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappActivity;->updateTaskDescription()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$400(Lorg/chromium/chrome/browser/webapps/WebappActivity;)V

    goto :goto_0
.end method
