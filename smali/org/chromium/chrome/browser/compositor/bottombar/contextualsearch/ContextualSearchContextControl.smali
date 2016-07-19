.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;
.source "ContextualSearchContextControl.java"


# instance fields
.field private mEndText:Landroid/widget/TextView;

.field private mSelectedText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 7

    .prologue
    .line 41
    sget v2, Lorg/chromium/chrome/R$layout;->contextual_search_context_view:I

    sget v3, Lorg/chromium/chrome/R$id;->contextual_search_context_view:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->getView()Landroid/view/View;

    move-result-object v1

    .line 64
    sget v0, Lorg/chromium/chrome/R$id;->selected_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->mSelectedText:Landroid/widget/TextView;

    .line 65
    sget v0, Lorg/chromium/chrome/R$id;->surrounding_text_end:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->mEndText:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public setSearchContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->inflate()V

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->mSelectedText:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->sanitizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->mEndText:Landroid/widget/TextView;

    invoke-static {p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->sanitizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->invalidate()V

    .line 57
    return-void
.end method
