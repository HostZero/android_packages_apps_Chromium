.class public Lorg/chromium/content/browser/input/LegacyPastePopupMenu;
.super Ljava/lang/Object;
.source "LegacyPastePopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/content/browser/input/PastePopupMenu;


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

.field private final mLineOffsetY:I

.field private final mParent:Landroid/view/View;

.field private mPasteView:Landroid/view/View;

.field private final mPasteViewLayout:I

.field private mPositionX:I

.field private mPositionY:I

.field private mRawPositionX:I

.field private mRawPositionY:I

.field private mStatusBarHeight:I

.field private final mWidthOffsetX:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    .line 39
    iput-object p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const v2, 0x10102c8

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    .line 42
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 43
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 44
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 47
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 48
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    new-instance v1, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;

    invoke-direct {v1, p0, p2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;-><init>(Lorg/chromium/content/browser/input/LegacyPastePopupMenu;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 55
    new-array v0, v4, [I

    const v1, 0x1010314

    aput v1, v0, v3

    .line 59
    iput-object v6, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const/high16 v0, 0x40a00000    # 5.0f

    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    .line 68
    const/high16 v0, 0x41f00000    # 30.0f

    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 77
    :cond_0
    return-void
.end method

.method private paste()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->paste()V

    .line 177
    return-void
.end method

.method private positionAt(II)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 103
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    .line 104
    iput p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 110
    int-to-float v0, p1

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionX:I

    .line 111
    sub-int v0, p2, v3

    iget v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionY:I

    .line 113
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 114
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 115
    aget v0, v4, v1

    iget v5, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionX:I

    add-int/2addr v0, v5

    aput v0, v4, v1

    .line 116
    aget v0, v4, v7

    iget v5, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionY:I

    add-int/2addr v0, v5

    aput v0, v4, v7

    .line 119
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 120
    iget v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 123
    :goto_1
    iget-object v5, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    aget v6, v4, v7

    if-ge v6, v0, :cond_2

    .line 127
    aget v0, v4, v7

    add-int/2addr v0, v3

    aput v0, v4, v7

    .line 128
    aget v0, v4, v7

    iget v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    add-int/2addr v0, v3

    aput v0, v4, v7

    .line 131
    iget v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    div-int/lit8 v0, v0, 0x2

    .line 133
    add-int v3, p1, v2

    if-ge v3, v5, :cond_1

    .line 134
    aget v3, v4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    aput v0, v4, v1

    .line 144
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    aget v3, v4, v1

    aget v4, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 136
    :cond_1
    aget v3, v4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v3, v0

    aput v0, v4, v1

    goto :goto_2

    .line 140
    :cond_2
    aget v0, v4, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v4, v1

    .line 141
    sub-int v0, v5, v2

    aget v2, v4, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v4, v1

    goto :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    aget v1, v4, v1

    aget v2, v4, v7

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private updateContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 152
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 153
    iget v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    .line 154
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 156
    if-eqz v0, :cond_0

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unable to inflate TextEdit paste window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 165
    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 169
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 173
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->paste()V

    .line 98
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->hide()V

    .line 99
    return-void
.end method

.method public show(II)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->updateContent()V

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->positionAt(II)V

    .line 83
    return-void
.end method
