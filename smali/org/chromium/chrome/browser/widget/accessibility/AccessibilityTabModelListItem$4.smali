.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "AccessibilityTabModelListItem.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    .line 356
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mCloseButtonClicked:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # getter for: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;->tabChanged(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateFavicon()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1300(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->notifyTabUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 367
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1500(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->notifyTabUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 373
    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->updateTabTitle()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1500(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    .line 378
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$4;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->notifyTabUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$1400(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 379
    return-void
.end method
