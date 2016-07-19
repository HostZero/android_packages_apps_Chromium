.class public Lorg/chromium/chrome/browser/widget/TextBubble;
.super Landroid/widget/PopupWindow;
.source "TextBubble.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final ANIM_STYLE_ID:Ljava/lang/String; = "Animation_Style"

.field public static final BACKGROUND_INTRINSIC_PADDING:Ljava/lang/String; = "Background_Intrinsic_Padding"

.field public static final CENTER:Ljava/lang/String; = "Center"

.field public static final TEXT_STYLE_ID:Ljava/lang/String; = "Text_Style_Id"

.field public static final UP_DOWN:Ljava/lang/String; = "Up_Down"


# instance fields
.field private mAnchorBelow:Z

.field private mAnchorView:Landroid/view/View;

.field private final mBubbleTipXMargin:I

.field private final mCachedPaddingRect:Landroid/graphics/Rect;

.field private mCenterView:Z

.field private final mTooltipEdgeMargin:I

.field private final mTooltipText:Landroid/widget/TextView;

.field private final mTooltipTopMargin:I

.field private mXPosition:I

.field private mYPosition:I


# direct methods
.method private calculateNewPosition()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    .line 131
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorBelow:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    move-object v3, v2

    .line 133
    :goto_0
    if-eqz v3, :cond_7

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    .line 140
    :goto_1
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mCenterView:Z

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 147
    :cond_1
    :goto_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 148
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    .line 151
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mCachedPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mCachedPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mCachedPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 153
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mCachedPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v3

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 159
    add-int v4, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipEdgeMargin:I

    sub-int/2addr v0, v2

    move v2, v0

    .line 166
    :goto_3
    sub-int v0, v2, v3

    neg-int v0, v0

    .line 167
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mBubbleTipXMargin:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 168
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mBubbleTipXMargin:I

    sub-int/2addr v3, v4

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/2addr v0, v3

    move v3, v0

    .line 171
    :goto_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->setBubbleArrowXOffset(I)V

    .line 173
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorBelow:Z

    if-eqz v0, :cond_4

    .line 174
    iput v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    .line 175
    iget v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipTopMargin:I

    sub-int v0, v1, v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    .line 180
    :goto_5
    return-void

    .line 143
    :cond_2
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_2

    .line 161
    :cond_3
    if-gez v3, :cond_6

    .line 162
    iget v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipEdgeMargin:I

    move v2, v0

    goto :goto_3

    .line 177
    :cond_4
    iput v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mTooltipTopMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    goto :goto_5

    :cond_5
    move v3, v0

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    move v6, v0

    move v0, v1

    move v1, v6

    goto/16 :goto_1

    :cond_8
    move v0, v1

    move-object v3, v2

    goto/16 :goto_0
.end method

.method private showAtCalculatedPosition()V
    .locals 4

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorBelow:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x800033

    iget v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    iget v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/widget/TextBubble;->showAtLocation(Landroid/view/View;III)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x800053

    iget v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    iget v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/widget/TextBubble;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private updatePosition()Z
    .locals 4

    .prologue
    .line 213
    iget v1, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    .line 214
    iget v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    .line 215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->getBubbleArrowOffset()I

    move-result v3

    .line 216
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->calculateNewPosition()V

    .line 217
    iget v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mXPosition:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mYPosition:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->getBubbleArrowOffset()I

    move-result v0

    if-eq v3, v0, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 229
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->updatePosition()Z

    move-result v1

    .line 230
    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->dismiss()V

    .line 236
    :cond_0
    :goto_1
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_2
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->dismiss()V

    .line 234
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->showAtCalculatedPosition()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble;->dismiss()V

    .line 244
    return-void
.end method
