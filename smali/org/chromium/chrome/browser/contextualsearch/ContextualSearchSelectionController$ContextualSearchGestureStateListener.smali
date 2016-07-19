.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "ContextualSearchSelectionController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V

    return-void
.end method


# virtual methods
.method public onScrollStarted(II)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;->handleScroll()V

    .line 73
    return-void
.end method

.method public onSingleTap(ZII)V
    .locals 2

    .prologue
    .line 85
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->mSelectionType:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-eq v0, v1, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    # invokes: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->scheduleInvalidTapNotification()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V

    .line 88
    :cond_1
    return-void
.end method
