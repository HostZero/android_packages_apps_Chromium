.class public Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;
.super Landroid/support/v7/widget/O;
.source "TemplatePreservingTextView.java"


# instance fields
.field private mContent:Ljava/lang/CharSequence;

.field private mTemplate:Ljava/lang/String;

.field private mVisibleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    .line 39
    return-void
.end method

.method private getTruncatedText(I)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 81
    int-to-float v2, p1

    sub-float v1, v2, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 84
    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateVisibleText(IZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    .line 100
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mVisibleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mVisibleText:Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mVisibleText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/O;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 107
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getMaxLines()I

    move-result v0

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_3

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getTruncatedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->updateVisibleText(IZ)V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/O;->onMeasure(II)V

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    invoke-direct {p0, v3, v4}, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->updateVisibleText(IZ)V

    .line 62
    return-void

    .line 59
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mTemplate:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;->mContent:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
