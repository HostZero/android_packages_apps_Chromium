.class public Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;
.source "ReaderModeBarControl.java"


# instance fields
.field private mLastDisplayedStringId:I

.field private mReaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 7

    .prologue
    .line 41
    sget v2, Lorg/chromium/chrome/R$layout;->reader_mode_text_view:I

    sget v3, Lorg/chromium/chrome/R$id;->reader_mode_text_view:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->invalidate()V

    .line 44
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->getView()Landroid/view/View;

    move-result-object v0

    .line 64
    sget v1, Lorg/chromium/chrome/R$id;->reader_mode_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->mReaderText:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public setBarText(I)V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->mLastDisplayedStringId:I

    if-ne p1, v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->mLastDisplayedStringId:I

    .line 54
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->inflate()V

    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->mReaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModeBarControl;->invalidate()V

    goto :goto_0
.end method
