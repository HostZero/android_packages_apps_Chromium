.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;
.source "ContextualSearchPanel.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressBarFinished()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;)V

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

.method public onProgressBarStarted()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarCompletion(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;I)V

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Z)V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$200(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    .line 92
    return-void
.end method

.method public onProgressBarUpdated(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarCompletion(I)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$300(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;I)V

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$400(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    .line 98
    return-void
.end method
