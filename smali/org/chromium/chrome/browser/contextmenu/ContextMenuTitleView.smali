.class public Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;
.super Landroid/widget/ScrollView;
.source "ContextMenuTitleView.java"


# instance fields
.field private final mDpToPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->mDpToPx:F

    .line 33
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->mDpToPx:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    invoke-virtual {p0, v0, v0, v0, v4}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->setPadding(IIII)V

    .line 36
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x401

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    invoke-virtual {v2, p2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->default_text_color:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 52
    const/high16 v0, 0x428c0000    # 70.0f

    iget v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuTitleView;->mDpToPx:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 53
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    invoke-super {p0, p1, v0}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 55
    return-void
.end method
