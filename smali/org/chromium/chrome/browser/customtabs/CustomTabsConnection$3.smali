.class Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;
.super Ljava/lang/Object;
.source "CustomTabsConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field final synthetic val$initialized:Z

.field final synthetic val$mayCreateSpareWebContents:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZZ)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->val$initialized:Z

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->val$mayCreateSpareWebContents:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->val$initialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->initializeBrowser(Landroid/app/Application;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->access$000(Landroid/app/Application;)V

    .line 220
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->val$mayCreateSpareWebContents:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->createSpareWebContents()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    return-void
.end method
