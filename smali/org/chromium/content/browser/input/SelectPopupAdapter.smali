.class public Lorg/chromium/content/browser/input/SelectPopupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPopupAdapter.java"


# instance fields
.field private mAreAllItemsEnabled:Z

.field private mItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mAreAllItemsEnabled:Z

    move v1, v2

    .line 40
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 42
    iput-boolean v2, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mAreAllItemsEnabled:Z

    .line 46
    :cond_0
    return-void

    .line 40
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mAreAllItemsEnabled:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectPopupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    move-object v1, v3

    .line 73
    :cond_1
    :goto_0
    return-object v1

    .line 56
    :cond_2
    invoke-super {p0, p1, v3, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 57
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/SelectPopupItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 65
    instance-of v0, v1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 66
    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectPopupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 84
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
