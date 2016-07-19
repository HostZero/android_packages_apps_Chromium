.class Lorg/chromium/content/browser/BrowserStartupController$1;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BrowserStartupController;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BrowserStartupController;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lorg/chromium/content/browser/BrowserStartupController$1;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 175
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$1;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BrowserStartupController;->contentStart()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$1;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lorg/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/BrowserStartupController;->access$000(Lorg/chromium/content/browser/BrowserStartupController;IZ)V

    .line 179
    :cond_0
    return-void
.end method
