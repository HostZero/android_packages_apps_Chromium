.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;
.super Landroid/view/View;
.source "CompositorViewHolder.java"


# instance fields
.field private mFirstPush:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectangles:Ljava/util/List;


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 160
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mRectangles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mRectangles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$DebugOverlay;->mFirstPush:Z

    .line 164
    return-void
.end method
