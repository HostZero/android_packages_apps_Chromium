.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;
.super Landroid/widget/RelativeLayout;
.source "ContextualSearchOptOutPromo.java"


# instance fields
.field private mHost:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;

.field private mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mHost:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;

    return-object v0
.end method


# virtual methods
.method public getHeightForGivenWidth(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 138
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 140
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->measure(II)V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    sget v1, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_promo:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 86
    sget v0, Lorg/chromium/chrome/R$id;->contextual_search_opt_out_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)V

    .line 102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->contextual_search_short_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v4, 0x0

    new-instance v5, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v6, "<link>"

    const-string/jumbo v7, "</link>"

    invoke-direct {v5, v6, v7, v1}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 108
    sget v0, Lorg/chromium/chrome/R$id;->contextual_search_no_thanks_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$2;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lorg/chromium/chrome/R$id;->contextual_search_got_it_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$3;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public setPromoHost(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mHost:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;

    .line 76
    return-void
.end method
