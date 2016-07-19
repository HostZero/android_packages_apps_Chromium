.class Lorg/chromium/chrome/browser/ntp/NewTabPage$3;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "NewTabPage.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPInteractionTime()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$2100(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsVisible:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1902(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z

    .line 590
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsLoaded:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1800(Lorg/chromium/chrome/browser/ntp/NewTabPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPage;->recordNTPShown()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$2000(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPage$3;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPage;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPage;->mIsVisible:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->access$1902(Lorg/chromium/chrome/browser/ntp/NewTabPage;Z)Z

    .line 584
    return-void
.end method
