.class Lorg/chromium/chrome/browser/webapps/WebappActivity$3;
.super Ljava/lang/Object;
.source "WebappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappActivity;I)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    iput p2, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 494
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$900(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$900(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mSplashScreen:Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$902(Lorg/chromium/chrome/browser/webapps/WebappActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 497
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->this$0:Lorg/chromium/chrome/browser/webapps/WebappActivity;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappActivity;->mWebappUma:Lorg/chromium/chrome/browser/metrics/WebappUma;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappActivity;->access$1000(Lorg/chromium/chrome/browser/webapps/WebappActivity;)Lorg/chromium/chrome/browser/metrics/WebappUma;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappActivity$3;->val$reason:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/WebappUma;->splashscreenHidden(I)V

    goto :goto_0
.end method
