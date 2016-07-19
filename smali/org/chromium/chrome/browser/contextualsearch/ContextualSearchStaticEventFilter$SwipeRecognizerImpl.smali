.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;
.super Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;
.source "ContextualSearchStaticEventFilter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    .line 98
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;-><init>(Landroid/content/Context;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mTapHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return v6

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mTapHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F
    invoke-static {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)F

    move-result v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    invoke-static {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getFullscreenY(F)F

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F
    invoke-static {v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->access$300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-interface {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;->handleTapContextualSearchBar(JFF)V

    goto :goto_0
.end method
