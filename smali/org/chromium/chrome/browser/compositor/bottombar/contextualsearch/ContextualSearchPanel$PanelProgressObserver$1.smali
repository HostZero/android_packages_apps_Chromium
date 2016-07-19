.class Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;
.super Ljava/lang/Object;
.source "ContextualSearchPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;->this$1:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;->this$1:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$500(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Z)V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver$1;->this$1:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    # invokes: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->access$600(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    .line 109
    return-void
.end method
