.class public abstract Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;
.super Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;
.source "OverlayPanelInflater.java"


# instance fields
.field protected mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;-><init>(IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 48
    return-void
.end method

.method public static sanitizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\ufffc"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWidth(I)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->shouldAttachView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->getView()Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->destroy()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 55
    return-void
.end method

.method protected getWidthMeasureSpec()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getMaximumWidthPx()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isFullWidthSizePanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->mOverlayPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getMaximumWidthPx()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->setWidth(I)V

    .line 62
    :cond_0
    return-void
.end method
