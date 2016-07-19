.class Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;
.super Lorg/chromium/content/browser/ContentViewClient;
.source "OverlayPanel.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;)V

    return-object v0
.end method

.method public getDesiredHeightMeasureSpec()I
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-super {p0}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredHeightMeasureSpec()I

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewHeightPx()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredWidthMeasureSpec()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-super {p0}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredWidthMeasureSpec()I

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewWidthPx()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method
