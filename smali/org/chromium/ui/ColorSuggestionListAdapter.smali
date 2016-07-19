.class public Lorg/chromium/ui/ColorSuggestionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorSuggestionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;

.field private mSuggestions:[Lorg/chromium/ui/ColorSuggestion;


# direct methods
.method constructor <init>(Landroid/content/Context;[Lorg/chromium/ui/ColorSuggestion;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mSuggestions:[Lorg/chromium/ui/ColorSuggestion;

    .line 46
    return-void
.end method

.method private setUpColorButton(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mSuggestions:[Lorg/chromium/ui/ColorSuggestion;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mSuggestions:[Lorg/chromium/ui/ColorSuggestion;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mSuggestions:[Lorg/chromium/ui/ColorSuggestion;

    aget-object v1, v0, p2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 72
    sget v2, Lorg/chromium/ui/R$id;->color_button_swatch:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 74
    iget v2, v1, Lorg/chromium/ui/ColorSuggestion;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75
    iget-object v0, v1, Lorg/chromium/ui/ColorSuggestion;->mLabel:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string/jumbo v0, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    iget v1, v1, Lorg/chromium/ui/ColorSuggestion;->mColor:I

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mSuggestions:[Lorg/chromium/ui/ColorSuggestion;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 98
    instance-of v1, p2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 99
    check-cast p2, Landroid/widget/LinearLayout;

    .line 122
    :cond_0
    :goto_0
    if-ge v0, v7, :cond_3

    .line 123
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    shl-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lorg/chromium/ui/ColorSuggestionListAdapter;->setUpColorButton(Landroid/view/View;I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    iget-object v1, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/ui/R$dimen;->color_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v1, v0

    .line 109
    :goto_1
    if-ge v1, v7, :cond_0

    .line 110
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 113
    invoke-static {v4, v6}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 114
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    .line 115
    invoke-static {v4, v6}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 117
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    sget v4, Lorg/chromium/ui/R$drawable;->color_button_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_3
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mListener:Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/ColorSuggestion;

    .line 89
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mListener:Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;

    invoke-interface {v1, v0}, Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;->onColorSuggestionClick(Lorg/chromium/ui/ColorSuggestion;)V

    goto :goto_0
.end method

.method public setOnColorSuggestionClickListener(Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/ui/ColorSuggestionListAdapter;->mListener:Lorg/chromium/ui/ColorSuggestionListAdapter$OnColorSuggestionClickListener;

    .line 53
    return-void
.end method
