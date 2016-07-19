.class public Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;
.super Landroid/preference/PreferenceGroup;
.source "ExpandablePreferenceGroup.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExpanded:Z

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget v0, Lorg/chromium/chrome/R$layout;->site_list_expandable_header:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onBindView(Landroid/view/View;)V

    .line 84
    sget v0, Lorg/chromium/chrome/R$id;->expando:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mExpanded:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$string;->accessibility_expanded_group:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 88
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_collapsed_group:I

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mExpanded:Z

    .line 73
    return-void
.end method

.method public setGroupTitle(II)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 46
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, " - %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 52
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->expandable_group_dark_gray:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    .line 65
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .line 57
    :cond_0
    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "sans-serif-medium"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 77
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    return-void
.end method
