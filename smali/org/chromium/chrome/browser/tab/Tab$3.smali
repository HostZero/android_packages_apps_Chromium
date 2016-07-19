.class Lorg/chromium/chrome/browser/tab/Tab$3;
.super Landroid/os/Handler;
.source "Tab.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$3;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 632
    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$3;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    # invokes: Lorg/chromium/chrome/browser/tab/Tab;->enableFullscreenAfterLoad()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/Tab;->access$600(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method
