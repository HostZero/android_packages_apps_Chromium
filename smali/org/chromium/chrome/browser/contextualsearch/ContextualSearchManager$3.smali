.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$3;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;
.source "ContextualSearchManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$3;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindToolbarShown()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$3;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 244
    return-void
.end method
