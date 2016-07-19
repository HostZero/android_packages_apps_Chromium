.class Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;
.source "ReaderModeManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindToolbarHidden()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFindToolbarShowing:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$002(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->requestReaderPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 144
    return-void
.end method

.method public onFindToolbarShown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    # setter for: Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->mIsFindToolbarShowing:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->access$002(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;Z)Z

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 138
    return-void
.end method
