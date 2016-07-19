.class Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextBubble.java"


# instance fields
.field private final mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBubbleArrowXOffset:I

.field private final mBubbleContentsDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTooltipBorderWidth:I

.field private final mTooltipContentPadding:Landroid/graphics/Rect;

.field private mUp:Z


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleContentsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    return-void
.end method

.method public getBubbleArrowOffset()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mTooltipContentPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mUp:Z

    if-eqz v0, :cond_0

    .line 335
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 294
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mUp:Z

    if-eqz v2, :cond_1

    .line 295
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mTooltipBorderWidth:I

    sub-int/2addr v2, v3

    .line 297
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleContentsDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_0

    .line 304
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 305
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleContentsDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v0

    iget v5, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mTooltipBorderWidth:I

    sub-int v5, v2, v5

    iget v6, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mTooltipBorderWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleContentsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 319
    return-void
.end method

.method public setBubbleArrowXOffset(I)V
    .locals 1

    .prologue
    .line 352
    iput p1, p0, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->mBubbleArrowXOffset:I

    .line 353
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/TextBubble$BubbleBackgroundDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 354
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method
