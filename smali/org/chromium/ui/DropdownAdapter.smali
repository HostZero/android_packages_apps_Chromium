.class public Lorg/chromium/ui/DropdownAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DropdownAdapter.java"


# instance fields
.field private final mAreAllItemsEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mSeparators:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 35
    sget v0, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-virtual {p0, p2}, Lorg/chromium/ui/DropdownAdapter;->addAll(Ljava/util/Collection;)V

    .line 37
    iput-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lorg/chromium/ui/DropdownAdapter;->checkAreAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    .line 40
    return-void
.end method

.method private checkAreAllItemsEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 44
    invoke-virtual {p0, v1}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownItem;

    .line 45
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_1
    return v2

    .line 43
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 54
    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    sget v1, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lorg/chromium/ui/DropdownDividerDrawable;

    invoke-direct {v0}, Lorg/chromium/ui/DropdownDividerDrawable;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownDividerDrawable;

    .line 63
    iget-object v1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/ui/R$dimen;->dropdown_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    if-nez p1, :cond_2

    .line 65
    invoke-virtual {v0, v4}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownItem;

    .line 87
    sget v2, Lorg/chromium/ui/R$id;->dropdown_label_wrapper:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 88
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isMultilineLabel()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, -0x2

    .line 89
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    sget v1, Lorg/chromium/ui/R$id;->dropdown_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isMultilineLabel()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 95
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    invoke-virtual {v1, v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    :goto_2
    sget v1, Lorg/chromium/ui/R$id;->dropdown_sublabel:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getSublabel()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_3
    sget v1, Lorg/chromium/ui/R$id;->dropdown_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v2

    if-nez v2, :cond_7

    .line 113
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_4
    return-object p2

    .line 67
    :cond_2
    iget-object v2, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lorg/chromium/ui/R$dimen;->dropdown_item_divider_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 69
    add-int/2addr v1, v2

    .line 70
    invoke-virtual {v0, v2}, Lorg/chromium/ui/DropdownDividerDrawable;->setHeight(I)V

    .line 71
    iget-object v2, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lorg/chromium/ui/R$color;->dropdown_dark_divider_color:I

    invoke-static {v2, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 75
    :cond_3
    iget-object v2, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lorg/chromium/ui/R$color;->dropdown_divider_color:I

    invoke-static {v2, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/ui/DropdownDividerDrawable;->setColor(I)V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 93
    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v1, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 115
    :cond_7
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownItem;

    .line 131
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
