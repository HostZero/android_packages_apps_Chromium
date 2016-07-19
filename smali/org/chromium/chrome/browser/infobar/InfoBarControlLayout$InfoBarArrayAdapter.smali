.class public final Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InfoBarControlLayout.java"


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private mMinWidthRequiredForValues:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/chromium/chrome/R$layout;->infobar_control_spinner_drop_down:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mLabel:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method final computeMinWidthRequiredForValues()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v1, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    move-result-object v0

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 105
    const/4 v0, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 106
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 108
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mMinWidthRequiredForValues:I

    .line 112
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mMinWidthRequiredForValues:I

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 61
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    check-cast p2, Landroid/widget/TextView;

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p2

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_spinner_drop_down:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    goto :goto_0
.end method

.method public final bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    instance-of v0, p2, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    if-eqz v0, :cond_0

    .line 76
    check-cast p2, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    .line 83
    :goto_0
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mMinWidthRequiredForValues:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 93
    return-object p2

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->infobar_control_spinner_view:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarDualControlLayout;

    move-object p2, v0

    goto :goto_0
.end method

.method final setMinWidthRequiredForValues(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout$InfoBarArrayAdapter;->mMinWidthRequiredForValues:I

    .line 120
    return-void
.end method
