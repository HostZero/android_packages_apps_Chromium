.class Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "SwipableOverlayView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method

.method private updateTranslation(II)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$400(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->computeScrollDifference(II)I
    invoke-static {v1, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$300(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 275
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 276
    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->setTranslationY(F)V

    .line 277
    return-void
.end method


# virtual methods
.method public onFlingEndGesture(II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$200(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->computeScrollDifference(II)I
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$300(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)I

    move-result v6

    .line 222
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->updateTranslation(II)V

    .line 224
    if-lez v6, :cond_3

    move v0, v1

    .line 226
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F
    invoke-static {v3}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$400(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)F

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    move v3, v1

    .line 227
    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v5

    iget-object v7, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v7}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v5, v4, v5

    .line 228
    if-eqz v3, :cond_5

    const v4, 0x3f666666    # 0.9f

    .line 230
    :goto_3
    cmpl-float v4, v5, v4

    if-lez v4, :cond_6

    move v5, v1

    .line 232
    :goto_4
    if-nez v0, :cond_7

    move v4, v1

    .line 233
    :goto_5
    if-eqz v3, :cond_9

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mInitialTranslationY:F
    invoke-static {v3}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$400(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    move v0, v1

    .line 236
    :goto_6
    if-nez v5, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    and-int v0, v4, v2

    .line 242
    :goto_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createVerticalSnapAnimation(Z)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$600(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 224
    goto :goto_1

    :cond_4
    move v3, v2

    .line 226
    goto :goto_2

    .line 228
    :cond_5
    const v4, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_6
    move v5, v2

    .line 230
    goto :goto_4

    :cond_7
    move v4, v2

    .line 232
    goto :goto_5

    :cond_8
    move v0, v2

    .line 235
    goto :goto_6

    .line 239
    :cond_9
    int-to-float v0, v6

    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v3}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v3, v6

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    move v0, v1

    .line 240
    :goto_8
    if-nez v5, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    move v2, v1

    :cond_b
    and-int v0, v4, v2

    goto :goto_7

    :cond_c
    move v0, v2

    .line 239
    goto :goto_8
.end method

.method public onFlingStartGesture(IIII)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->isAllowedToAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->cancelCurrentAnimation()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$000(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->beginGesture(II)V
    invoke-static {v0, p3, p4}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$100(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)V

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    const/4 v1, 0x2

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I

    goto :goto_0
.end method

.method public onScrollEnded(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$200(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I

    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->computeScrollDifference(II)I
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$300(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)I

    move-result v0

    .line 258
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->updateTranslation(II)V

    .line 260
    int-to-float v0, v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v3}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v1

    .line 261
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mTotalHeight:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$500(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    move v3, v1

    .line 262
    :goto_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->createVerticalSnapAnimation(Z)V
    invoke-static {v4, v2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$600(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 260
    goto :goto_1

    :cond_4
    move v3, v2

    .line 261
    goto :goto_2
.end method

.method public onScrollOffsetOrExtentChanged(II)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # getter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$200(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->cancelCurrentAnimation()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$000(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->updateTranslation(II)V

    goto :goto_0
.end method

.method public onScrollStarted(II)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->isAllowedToAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->cancelCurrentAnimation()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$000(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    # invokes: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->beginGesture(II)V
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$100(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;II)V

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/SwipableOverlayView$1;->this$0:Lorg/chromium/chrome/browser/banners/SwipableOverlayView;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->mGestureState:I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/banners/SwipableOverlayView;->access$202(Lorg/chromium/chrome/browser/banners/SwipableOverlayView;I)I

    goto :goto_0
.end method
