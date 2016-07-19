.class Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;
.super Ljava/lang/Object;
.source "UrlManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/physicalweb/PwsClient$ResolveScanCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

.field final synthetic val$timestamp:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$timestamp:J

    iput-object p4, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPwsResults(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->val$timestamp:J

    sub-long/2addr v0, v2

    .line 327
    iget-object v2, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->access$000(Lorg/chromium/chrome/browser/physicalweb/UrlManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onBackgroundPwsResolution(Landroid/content/Context;J)V

    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$2$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager$2;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method
