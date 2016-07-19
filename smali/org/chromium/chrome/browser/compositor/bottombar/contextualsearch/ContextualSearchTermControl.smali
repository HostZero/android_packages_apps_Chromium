.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;
.source "ContextualSearchTermControl.java"


# instance fields
.field private mSearchTerm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 7

    .prologue
    .line 36
    sget v2, Lorg/chromium/chrome/R$layout;->contextual_search_term_view:I

    sget v3, Lorg/chromium/chrome/R$id;->contextual_search_term_view:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelInflater;->onFinishInflate()V

    .line 56
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->getView()Landroid/view/View;

    move-result-object v0

    .line 57
    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_term:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->mSearchTerm:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->inflate()V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->mSearchTerm:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->sanitizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->invalidate()V

    .line 50
    return-void
.end method
